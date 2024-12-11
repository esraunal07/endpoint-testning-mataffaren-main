import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the products sorted in order from {string} {string}', async function(a, b) {
    
  // Fetch response data
  //let responseData = await this.response.body;
  let responseData = await this.json;

  // Determine which sorting code to use based on the value of 'a'
  let sortOrder = a === "lowest" ? "compareprice-asc" : "compareprice-desc";

  // Check that the correct sorting option is selected in the response
  let comparePriceSort = await responseData.sorts.find(sort => sort.code === sortOrder); // error here
  
  expect(comparePriceSort).to.have.property("selected", true);

  // Extract compare prices from the product list and clean up " kr" and commas
  let productComparePrices = responseData.results.map(item =>
    parseFloat(item.comparePrice.replace(" kr", "").replace(",", "."))
  );

  // Sort compare prices in the order specified by 'a'
  let sortedComparePrices;
  if (a === "lowest") {
    // Ascending order
    sortedComparePrices = [...productComparePrices].sort((x, y) => x - y);
  } else if (a === "highest") {
    // Descending order
    sortedComparePrices = [...productComparePrices].sort((x, y) => y - x);
  }

  // Compare the original list with the sorted list
  let isComparePriceOrdered = JSON.stringify(productComparePrices) === JSON.stringify(sortedComparePrices);

  // Test if compare prices are sorted correctly
  expect(isComparePriceOrdered).to.be.true;

  // Use 'b' to verify if the correct sorting option is selected in the response
  // 'b' is always 'comparePrice' in this case
  if (b === "comparePrice") {
    // Check that the correct sorting option is marked as selected
    let selectedSort = responseData.sorts.find(sort => sort.code === sortOrder);
    expect(selectedSort).to.have.property("selected", true);
  }  
});

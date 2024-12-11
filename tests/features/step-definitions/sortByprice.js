import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the products are sorted in order from {string} {string}', async function (a, b) {

  //let responseData = this.response.body;
  let responseData = await this.json;
  
  // Determine which sorting code to use based on the value of 'a'
  let sortOrder = a === "lowest" ? "price-asc" : "price-desc";

  // Check that the correct sorting option is selected in the response
  let priceSort = responseData.sorts.find(sort => sort.code === sortOrder);
  expect(priceSort).to.have.property("selected", true);

  // Extract prices from the product list and clean up " kr" and commas
  let productPrices = responseData.results.map(item =>
    parseFloat(item.price.replace(" kr", "").replace(",", "."))
  );

  // Sort prices in the order specified by 'a'
  let sortedPrices;
  if (a === "lowest") {
    // Ascending order
    sortedPrices = [...productPrices].sort((x, y) => x - y);
  } else if (a === "highest") {
    // Descending order
    sortedPrices = [...productPrices].sort((x, y) => y - x);
  }

  // Compare the original list with the sorted list
  let isPriceOrdered = JSON.stringify(productPrices) === JSON.stringify(sortedPrices);

  // Test if the prices are sorted correctly
  expect(isPriceOrdered).to.be.true;

  // Use 'b' to verify if the correct sorting option is selected in the response
  // 'b' is always 'price' in this case
  if (b === "price") {
    // Check that the correct sorting option is marked as selected
    let selectedSort = responseData.sorts.find(sort => sort.code === sortOrder);
    expect(selectedSort).to.have.property("selected", true);
  }
});

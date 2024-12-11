import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the test should show that {string} has property {string} and is selected {string}', async function (a, b, c) {
  // Fetch response data from the API
  let responseData = await this.json;

  // Debug the response to check if the data is as expected
  //console.log('Response Data:', responseData);

  // Find the sorting option based on the specified code (a), e.g., "topRated"
  let sortOption = responseData.sorts.find(sort => sort.code === a);

  // If no option is found, throw an error
  if (!sortOption) {
    throw new Error(`Sort option with code "${a}" not found in response.`);
  }

  // Check that the property 'b' exists on the sorting option
  expect(sortOption).to.have.property(b);

  // If 'b' is 'selected', check that the value of 'selected' matches 'c' (true/false)
  if (b === "selected") {
    // If c is 'true', compare with true (or if c is 'false', compare with false)
    expect(sortOption.selected).to.equal(c === 'true');
  } else {
    // If the property is not 'selected', check that it has the value 'c'
    expect(sortOption).to.have.property(b, c);
  }

  // Provide more detailed debug output if needed
  console.log(`Sort option ${a}:`, sortOption);
});

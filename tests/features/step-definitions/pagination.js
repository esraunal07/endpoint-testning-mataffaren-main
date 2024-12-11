import { Given, When, Then } from '@cucumber/cucumber';
import { expect } from 'chai';

Then('the test should show that the {string} is equal {string}', async function(a, b){
 
  // Hämta URL-parameter 'page' och omvandla till int
  let urlParams = new URLSearchParams(this.request.url.split('&')[1]);
  let pageFromUrl = parseInt(urlParams.get('page'));
  console.log(pageFromUrl);
  // Hämta currentPage från responsens data
  let responseData = this.json;
  console.log(responseData);
  let currentPageFromResponse = responseData[a].pagination[b]; // Använd 'a' och 'b' som nycklar

  console.log("Pagination result: ", currentPageFromResponse);
  expect(currentPageFromResponse).to.be.equal(pageFromUrl);
});
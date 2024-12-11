import { Then } from '@cucumber/cucumber';
import { expect } from 'chai';


Then('the test should show that the responseData is as most pageSize', async function () {
  
    let sizeFromUrl;
    let url = this.categoryUrlParts[0]; 
    console.log("Processing URL:", url); 
    let urlParams = new URLSearchParams(url.split('?')[1]);
    console.log("Query string:", url.split('?')[1]);
    let size = urlParams.get('size');
    if (size) {
      sizeFromUrl = parseInt(size);
      console.log("Extracted size from URL:", sizeFromUrl); 
    }
  
    let responseData = this.json;
    let pageSizeFromResponse = responseData.pagination.pageSize; 
  
    //check
    console.log("categoryUrlParts:", this.categoryUrlParts); // Make sure this array is correct
    console.log("sizeFromUrl:", sizeFromUrl); // See if the 'size' parameter is extracted correctly from the URL
    console.log("pageSizeFromResponse:", pageSizeFromResponse); // Check if the pageSize from the response is correct
  
    // Compare that pageSizeFromResponse is at most equal to sizeFromUrl
    expect(pageSizeFromResponse).to.be.at.most(sizeFromUrl);
  })
Workshop: REST API Testing

This two-week workshop focused on testing the "Mataffären" application's REST API using Postman, Newman, Cucumber, and JavaScript’s fetch.

Objectives
Analyze the Mataffären REST API structure and data flow.
Perform manual API testing with Postman to replicate frontend behavior.
Automate Postman tests for endpoints like categories, products, and sorting.
Use Newman and GitHub Actions for CI/CD integration.
Replicate tests with Cucumber and fetch, integrating them into CI/CD.

How to Run

1- Install dependencies:
npm install

2- Start the app:
npm start

3- Run Postman tests with Newman:
npm test

4- Run a specific Postman collection:
npx newman run postman-collections/NAME_of_COLLECTION.postman_collection.json

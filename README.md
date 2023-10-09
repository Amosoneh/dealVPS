# dealVPS

This API provides endpoints for managing items in the DealVPS Assignment database.

Prerequisites:

Before testing the API endpoints, make sure you have the following installed:

    Postman for testing API requests.

Endpoints
1. Add an Item

   Endpoint: POST /api/addItem
   Description: Add a new item to the database.
   Request Body: JSON object with the following fields:
   name (String, required): The name of the item.
   description (String, required): A description of the item.

Example Request Body:

json

{

"name": "Example Item",

"description": "This is an example item."

}

Testing:

    Open Postman.
    Set the request type to POST.
    Enter the URL: http://localhost:8080/api/addItem (Replace with your API endpoint).
    In the request body, provide the JSON object as shown in the example above.
    Click "Send" to add the item.

2. Get an Item

   Endpoint: GET /api/getItem
   Description: Get a single item from the database by providing its ID as a query parameter.
   Query Parameters:
   itemId (Integer, required): The ID of the item to retrieve.

Example URL:

bash

`https://dealvps.onrender.com/api/getItem?itemId=1`

Testing:

    Open Postman.
    Set the request type to GET.
    Enter the URL with the itemId parameter provided above.
    Click "Send" to retrieve the item.

3. Get All Items

   Endpoint: GET /api/getAllItem
   Description: Get all items from the database.

Testing:

    Open Postman.
    Set the request type to GET.
    Enter the URL: https://dealvps.onrender.com/api/getAllItem.
    Click "Send" to retrieve all items.

Error Handling

    If an item with the same name already exists when adding an item, a 400 Bad Request response will be returned.
    If the requested item is not found by its ID, a 404 Not Found response will be returned.

Now you can use Postman to test the API endpoints for creating, retrieving, and listing items in the DealVPS Assignment database.
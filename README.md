# dealVPS

This API provides endpoints for managing items in the DealVPS Assignment database.

Prerequisites:

Before testing the API endpoints, make sure you have the following installed:

    Postman for testing API requests.

Endpoints
1. Add an Item

   _Endpoint: POST /api/addItem
   Description: Add a new item to the database._

   _Request Body: JSON object with the following fields:
   name (String, required): The name of the item.
   description (String, required): A description of the item._

Example Request Body:

json

      {
         "name": "Example Item",
         "description": "This is an example item."
      }

The response will be in the format:

      {
         "id": 1,
         "name": "Example Item",
         "description": "This is an example item.",
         "dateAdded": "2023-10-09T17:35:37.5035933"
      }

Testing:

    Open Postman.
    Set the request type to POST.
    Enter the URL: http://localhost:8080/api/addItem (Replace with your API endpoint).
    In the request body, provide the JSON object as shown in the example above.
    Click "Send" to add the item.

2. Get an Item

   _Endpoint: GET /api/getItem
   Description: Get a single item from the database by providing its ID as a query parameter._

   _Query Parameters:
   itemId (Integer, required): The ID of the item to retrieve._

Example URL:

bash

      `https://dealvps.onrender.com/api/getItem?itemId=1`

Testing:

    Open Postman.
    Set the request type to GET.
    Enter the URL with the itemId parameter provided above.
    Click "Send" to retrieve the item.

3. Get All Items

   _Endpoint: GET /api/getAllItem_

   _Description: Get all items from the database._

Testing:

    Open Postman.
    Set the request type to GET.
    Enter the URL: https://dealvps.onrender.com/api/getAllItem.
    Click "Send" to retrieve all items.

Error Handling

    - 400 error code : If an item with the same name already exists when adding an item, a 400 Bad Request response will be returned.
    - 404 error code: If the requested item is not found by its ID, a 404 Not Found response will be returned.

Now you can use Postman to test the API endpoints for creating, retrieving, and listing items in the DealVPS Assignment database.
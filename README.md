# Sample Product API

This is sample product API written in node using Express. For sale of simplicity it does not use any real DB and all data come directly from `fakeProductData.js`


# How to Run

Install the node modules

`npm install`

Start the application

`npm start`

# Test the API

Get the single product

```
curl -s localhost:8800/api/products/0 | jq "."
{
  "id": 0,
  "name": "alphonso mango",
  "desc": "great Quality of Mango",
  "type": "fruits",
  "banner": "alphonso.jpeg",
  "unit": 1,
  "price": 300,
  "available": true,
  "suplier": "Golden seed firming"
}
```
Get all of the products

```
curl -s localhost:8800/api/products | jq "."
```

Get the single Shipment

```
curl -s localhost:8800/api/shipments/1 | jq "."
{
  "id": 1,
  "manager": "Juned",
  "warehouse": "Pune",
  "shipment": "250320220500",
  "product": "7",
  "status": null,
  "approver": null,
  "quantity": "8",
  "created_on": "Fri, 25 Mar 2022 05:00:00 GMT"
}

```

Get all of the  single Shipments
```
curl -s localhost:8800/api/shipments | jq "."
```
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
curl -s localhost:8800/api/products/1 | jq "."
{
  "name": "Apples",
  "desc": "great Quality of Apple",
  "type": "fruits",
  "banner": "http://codergogoi.com/youtube/images/apples.jpeg",
  "unit": 1,
  "price": 140,
  "available": true,
  "suplier": "Golden seed firming"
}
```
Get all of the products

```
curl -s localhost:8800/api/products | jq "."
[
  {
    "name": "alphonso mango",
    "desc": "great Quality of Mango",
    "type": "fruits",
    "banner": "alphonso.jpeg",
    "unit": 1,
    "price": 300,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Apples",
    "desc": "great Quality of Apple",
    "type": "fruits",
    "banner": "apples.jpeg",
    "unit": 1,
    "price": 140,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Kesar Mango",
    "desc": "great Quality of Mango",
    "type": "fruits",
    "banner": "kesar.jpeg",
    "unit": 1,
    "price": 170,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Langra Mango",
    "desc": "great Quality of Mango",
    "type": "fruits",
    "banner": "langra.jpeg",
    "unit": 1,
    "price": 280,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Broccoli",
    "desc": "great Quality of Fresh Vegetable",
    "type": "vegetables",
    "banner": "broccoli.jpeg",
    "unit": 1,
    "price": 280,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Cauliflower",
    "desc": "great Quality of Fresh Vegetable",
    "type": "vegetables",
    "banner": "cauliflower.jpeg",
    "unit": 1,
    "price": 280,
    "available": true,
    "suplier": "Golden seed firming"
  },
  {
    "name": "Olive Oil",
    "desc": "great Quality of Oil",
    "type": "oils",
    "banner": "oliveoil.jpg",
    "unit": 1,
    "price": 400,
    "available": true,
    "suplier": "Golden seed firming"
  }
]

```
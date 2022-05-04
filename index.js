const express = require("express");
const { products } = require("./fakeProductData");
const app = express();
app.use(express.json());



app.get("/api/products", (req, res) => {
  setTimeout(() => {
    res.json(products);
  }, 5);
});

app.get("/api/products/:Id", (req, res) => {
  const id = req.params.Id
  setTimeout(() => {
    res.json(products[id]);
  }, 5);
});

app.listen(8800, () => {
  console.log("Backend server is running!");
});

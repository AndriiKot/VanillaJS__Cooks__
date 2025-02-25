# Pattern Render And Add Dom-elements
[![Pattern Render And Add Dom-elements](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/__preview__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/_00-0__Best__Praxe__)
### Best Praxe: 
```js
﻿'use strict';

const products = [
  {
    name: "Vasa",
    price: 300,
  },
  {
    name: "Book",
    price: 50,
  },
  {
    name: "Coffee",
    price: 30,
  },
];
const fragment = document.createDocumentFragment();

const listEl = document.createElement("ul");
const formProduct = document.createElement("form");
const nameInput = document.createElement("input");
const priceInput = document.createElement("input");
const addBtn = document.createElement("button");


formProduct.className = "form-product";
nameInput.placeholder = "Product name";
priceInput.type = "number";
priceInput.placeholder = "Product price";
addBtn.type = "submit";
addBtn.textContent = "Add";


const getListItem = (product) => {
  let itemEl = document.createElement("li");
  itemEl.textContent = `${product.name}: ${product.price}$`;

  return itemEl;
}

const renderList = (arr) => {
  arr.forEach((product) => {
    const newItem = getListItem(product);
    listEl.append(newItem);
  });
}

const addProduct = (e) => {
  e.preventDefault();

  const name = nameInput.value;
  const price = Number(priceInput.value);

  if (name && !isNaN(price) && price > 0) {
    const newProduct = { name, price };
    products.push(newProduct);

    const newItem = getListItem(newProduct);
    listEl.append(newItem);
  }
  e.currentTarget.reset();
}

formProduct.append(nameInput, priceInput, addBtn);
fragment.append(formProduct, listEl);
document.body.append(fragment);

renderList(products);

formProduct.addEventListener("submit", addProduct);
```

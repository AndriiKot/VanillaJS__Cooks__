# Pattern Render And Add Dom-elements
[![Pattern Render And Add Dom-elements](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/_00-0__Best__Praxe__)
### Best Praxe: 
```js
﻿const products = [
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
const addBoxEl = document.createElement("div");

const nameInput = document.createElement("input");
nameInput.placeholder = "Product name";

const priceInput = document.createElement("input");
priceInput.type = "number";
priceInput.placeholder = "Product price";

const addBtn = document.createElement("button");
addBtn.textContent = "Add";

addBoxEl.append(nameInput, priceInput, addBtn);

function getListItem(product) {
  let itemEl = document.createElement("li");
  itemEl.textContent = `${product.name}: ${product.price}$`;

  return itemEl;
}

function renderList(arr) {
  arr.forEach((product) => {
    const newItem = getListItem(product);
    listEl.append(newItem);
  });
}

function addProduct() {
  const name = nameInput.value;
  const price = Number(priceInput.value);

  if (name && !isNaN(price) && price > 0) {
    const newProduct = { name, price };
    products.push(newProduct);

    const newItem = getListItem(newProduct);
    listEl.append(newItem);
  }
  nameInput.value = "";
  priceInput.value = "";
}

addBtn.addEventListener("click", addProduct);

fragment.append(addBoxEl, listEl);
document.body.append(fragment);

renderList(products);
```

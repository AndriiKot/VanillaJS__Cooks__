#### ! For the code to work correctly, use 'live server' in Visual Studio Code !
[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_render_and_add_DOM-elements/_00-0__Best__Praxe__)
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

const listEl = document.createElement("ul");

const addBoxEl = document.createElement("div");

const nameInput = document.createElement("input");
nameInput.type = "text";
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
  listEl.innerHTML = "";
  for (const item of arr) {
    let newItem = getListItem(item);
    listEl.append(newItem);
  }
}

function addProduct() {
  const name = nameInput.value;
  const price = priceInput.value;
  products.push({ name, price });
  renderList(products);
  nameInput.value = "";
  priceInput.value = "";
}

addBtn.addEventListener("click", addProduct);

document.body.append(addBoxEl);
document.body.append(listEl);

renderList(products);
```

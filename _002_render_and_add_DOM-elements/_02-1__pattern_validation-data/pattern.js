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
  listEl.innerHTML = "";
  for (const item of arr) {
    let newItem = getListItem(item);
    listEl.append(newItem);
  }
}

function addProduct() {
  const name = nameInput.value;
  const price = Number(priceInput.value);

  if (name && !isNaN(price) && price > 0) {
    products.push({ name, price });
    renderList(products);
  }
  nameInput.value = "";
  priceInput.value = "";
}

addBtn.addEventListener("click", addProduct);

fragment.append(addBoxEl, listEl);
document.body.append(fragment);

renderList(products);

console.log("products", products);
console.log("Hi!!!");

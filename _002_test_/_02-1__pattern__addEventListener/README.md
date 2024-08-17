#### ! For the code to work correctly, use 'live server' in Visual Studio Code !
[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_test_/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_002_test_/_00-0__Best__Praxe__)
```js
﻿const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

for (const item of menu) {
  const btn = document.createElement("button");
  btn.textContent = item;
  document.body.append(btn);

  btn.addEventListener("click", (event) => {
    const el = event.currentTarget; // or event.target
    if (activeBtn) activeBtn.classList.remove("active"); // delete the old active button
    el.classList.add("active");
    activeBtn = btn;
  });
}
```

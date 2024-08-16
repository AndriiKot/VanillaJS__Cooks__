#### ! For the code to work correctly, use 'live server' in Visual Studio Code !

### Best Praxe:

```js
﻿const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

for (const item of menu) {
  const btn = document.createElement("button");
  btn.textContent = item;
  document.body.append(btn);

  btn.onclick = () => {
    if (activeBtn) activeBtn.classList.remove("active");
    btn.classList.add("active");
    activeBtn = btn;
  };
}
```
[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/_00-0__Best__Praxe__)


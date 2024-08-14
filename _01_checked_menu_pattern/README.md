# Pattern Checked Buttons

### This is a demo of pattern checked buttons.

### Best Praxe:

[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_01_checked_menu_pattern/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_01_checked_menu_pattern/_00-0__Best__Praxe__)

```js
const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

for (const item of menu) {
  const btn = document.createElement("button");
  btn.textContent = item;
  document.body.append(btn);

  btn.addEventListener("click", (event) => {
    const el = event.currentTarget; // or event.target
    if (activeBtn !== el) {
      el.classList.add("active");
      if (activeBtn) {
        activeBtn.classList.remove("active"); // delete the old active button
      }
      activeBtn = el;
    }
  });
}
```

#### ! For the code to work correctly, use 'live server' in Visual Studio Code !

### Best Praxe:

```js
const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

// Создаем фрагмент документа
const fragment = document.createDocumentFragment();

menu.forEach(item => {
  const btn = document.createElement("button");
  btn.textContent = item;
  fragment.appendChild(btn); // Добавляем кнопку во фрагмент
});

// Добавляем все кнопки сразу в документ
document.body.appendChild(fragment);

// Обработчик событий для делегирования
document.body.addEventListener("click", (event) => {
  if (event.target.tagName === "BUTTON") {
    const el = event.target;
    if (activeBtn !== el) {
      if (activeBtn) {
        activeBtn.classList.remove("active"); // Удаляем класс у предыдущей кнопки
      }
      el.classList.add("active"); // Добавляем класс к нажимаемой кнопке
      activeBtn = el; // Обновляем активную кнопку
    }
  }
});
```

[![Pattern Checked Buttons](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/__demo__/__v1_0_0__.png)](https://github.com/AndriiKot/VanillaJS__Cooks/blob/main/_001_checked_buttons/_00-0__Best__Praxe__)



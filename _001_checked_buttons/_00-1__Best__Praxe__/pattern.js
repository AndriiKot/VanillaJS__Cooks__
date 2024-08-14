const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

// Создаем фрагмент документа
const fragment = document.createDocumentFragment();

menu.forEach((item) => {
  const btn = document.createElement("button");
  btn.className = "menu-button";
  btn.textContent = item;
  fragment.appendChild(btn); // Добавляем кнопку во фрагмент
});

// Добавляем все кнопки сразу в документ
document.body.appendChild(fragment);

// Обработчик событий для делегирования
document.body.addEventListener("click", (event) => {
  if (event.target.className === "menu-button") {
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

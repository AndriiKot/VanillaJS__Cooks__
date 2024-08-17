const menu = ["Menu", "Home", "About", "Contact"];
let activeBtn;

for (const item of menu) {
  const btn = document.createElement("button");
  btn.textContent = item;
  document.body.append(btn);

  btn.onclick = (event) => {
    const btn = event.currentTarget;                      // or event.target
    if (activeBtn) activeBtn.classList.remove("active"); // delete the old active button
    btn.classList.add("active");
    activeBtn = btn;
  };
}

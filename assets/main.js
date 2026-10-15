(() => {
  const toggle = document.querySelector('.menu-toggle');
  const links = document.querySelector('.nav-links');
  if (toggle && links) {
    toggle.addEventListener('click', () => {
      const opened = links.classList.toggle('open');
      toggle.setAttribute('aria-expanded', String(opened));
      toggle.setAttribute('aria-label', opened ? '메뉴 닫기' : '메뉴 열기');
    });
    links.querySelectorAll('a').forEach(link => link.addEventListener('click', () => {
      links.classList.remove('open');
      toggle.setAttribute('aria-expanded', 'false');
      toggle.setAttribute('aria-label', '메뉴 열기');
    }));
  }
  const year = document.querySelector('#year');
  if (year) year.textContent = String(new Date().getFullYear());
})();

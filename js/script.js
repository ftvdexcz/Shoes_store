const modal = document.querySelector('.my-modal');
const modalContent = document.querySelector('.mymodal-content');

modal.addEventListener('click', function () {
  modal.classList.add('hidden');
});

modalContent.addEventListener('click', function (e) {
  e.stopPropagation();
});

const modalFadeIn = setTimeout(function () {
  modal.style.display = 'flex';
}, 4000);

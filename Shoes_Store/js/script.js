const modal = document.querySelector('.my-modal');
const modalContent = document.querySelector('.mymodal-content');

// const productItem = document.querySelectorAll('.product-item');



modal.addEventListener('click', function () {
  modal.classList.add('hidden');
});

modalContent.addEventListener('click', function (e) {
  e.stopPropagation();
});

// const modalFadeIn = setTimeout(function () {
//   modal.style.display = 'flex';
// }, 4000);

(function () {
  setTimeout(function () {
    modal.style.display = 'flex';
  }, 4000);
})();

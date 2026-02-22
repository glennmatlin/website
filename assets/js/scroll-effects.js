// Scroll-triggered reveal animations and navbar effects
(function () {
  'use strict';

  // Reveal elements as they enter the viewport
  var observer = new IntersectionObserver(
    function (entries) {
      entries.forEach(function (entry) {
        if (entry.isIntersecting) {
          entry.target.classList.add('revealed');
          observer.unobserve(entry.target);
        }
      });
    },
    { threshold: 0.1, rootMargin: '0px 0px -40px 0px' }
  );

  document.querySelectorAll('.reveal, .reveal-stagger').forEach(function (el) {
    observer.observe(el);
  });

  // Navbar shadow on scroll
  var navbar = document.querySelector('.navbar');
  if (navbar) {
    window.addEventListener(
      'scroll',
      function () {
        if (window.scrollY > 20) {
          navbar.classList.add('scrolled');
        } else {
          navbar.classList.remove('scrolled');
        }
      },
      { passive: true }
    );
  }
})();

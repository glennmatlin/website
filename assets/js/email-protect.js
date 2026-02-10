document.addEventListener("DOMContentLoaded", function () {
  var u = "glenn";
  var d = "gatech" + "." + "edu";
  var addr = u + "@" + d;

  document.querySelectorAll('a[href$="#contact-email"]').forEach(function (el) {
    el.href = "mai" + "lto:" + addr;
  });

  document.querySelectorAll(".email-text").forEach(function (el) {
    el.textContent = addr;
  });
});

document.getElementById("top").addEventListener("click", function () {
  window.scrollTo({ top: 0, behavior: "smooth" });
});

$(".noColorHeart").on("click", function () {
  $(".colorHeart").css({
    "display": "inline",
    "color":"red"
  });
  $(this).css({
    "display":"none"
  })
});
$(".colorHeart").on("click", function () {
  $(".noColorHeart").css({
    display: "inline",
  });
  $(this).css({
    display: "none",
  });
});
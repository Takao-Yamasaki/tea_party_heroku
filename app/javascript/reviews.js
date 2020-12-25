window.onload = function() {
// document.addEventListener('turbolinks:load', function() {  
  const stars = document.querySelector(".ratings").children;
  const ratingValue = document.getElementById("rating_value");
  const ratingValueDisplay = document.getElementById("rating-value-display");

  let index;

  console.log($.fn.jquery)

  for(let i=0; i<stars.length; i++){
  stars[i].addEventListener("mouseover", function(){
      for(let j=0; j<stars.length; j++){
        stars[j].classList.remove("fas", "fa-star");
        stars[j].classList.add("far", "fa-star");
      }
      for(let j=0; j<=i; j++){
        stars[j].classList.remove("far", "fa-star");
        stars[j].classList.add("fas", "fa-star");
      }
    })
  }
// })
}
sliderInt= 1;
sliderNext= 2;

/*(document).ready = when the site loads then load the FUNCTION*/
$(document).ready(function(){
  $(".slider > #1").fadeIn(300);
  startSlider();
});

/*You had issues with length. First you had .size() which was indicated in the video and then you had
length() which also didn't work. Then you just tried .length and that worked. Don't know why*/
function startSlider(){
  count = $(".slider > .slider-img").length;

  loop = setInterval(function(){

    if(sliderNext > count){
     sliderNext = 1;
     sliderInt = 1;
    }

    $(".slider > .slider-img").fadeOut(500);
    $(".slider > .slider-img#" + sliderNext).fadeIn(500);

    sliderInt = sliderNext;
    sliderNext = sliderNext + 1;
 },8000);
}

function prev(){
 newSlide = sliderInt - 1;
 showSlide(newSlide);
}

function next(){
 newSlide = sliderInt + 1;
 showSlide(newSlide);
}

function stopLoop(){
  window.clearInterval(loop);
}

function showSlide(id){
  stopLoop();

  if(id > count){
    id = 1;
    }
  else if(id < 1){
    id = count;
    }

  $(".slider > .slider-img").fadeOut(300);
  $(".slider > .slider-img#" + id).fadeIn(300);

  sliderInt = id;
  sliderNext = id + 1;

  /*startSlider();*/
}

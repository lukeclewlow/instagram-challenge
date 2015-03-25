$(document).ready(function() {

  $('.likes-link').on('click', function(event){
  		console.log("HI");
      event.preventDefault();

      var likeCount = $(".likes_count");

      console.log(likeCount);

      $.post(this.href, function(response){
        likeCount.text(response.new_like_count);
    })
  })
})

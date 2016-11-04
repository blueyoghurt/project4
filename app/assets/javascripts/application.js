// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load', function() {
  console.log('DOM loaded');

  $('#signUp').click(function() {
    console.log("clicked sign up button");
    $('#signUpModal').modal('show')
  })

  $('#signIn').click(function() {
    console.log("clicked sign in button");
    $('#signInModal').modal('show')
  })

  // NGO/STUDENT/SCHOOL MENU TOGGLING
  $(".menuScroll").click(function() {
    $(".menuScroll").removeClass("active")
    $(this).addClass("active")
  })

  $("#aboutUs").click(function() {
    $('#aboutUsDim').dimmer('show');
  })

  $("#partnerCompanies").click(function() {
    $('#partnerCompaniesDim').dimmer('show');
  })

  $("#aboutUsDim").click(function() {
    $('#aboutUsDim').removeClass("active")
    $('#aboutUsDim').dimmer('hide');
  })

  $("#partnerCompaniesDim").click(function() {
    $('#partnerCompaniesDim').dimmer('hide');
  })

  setTimeout(function () {
    $("#comment1").css("visibility", "hidden")
  },6000)

  setTimeout(commentSix, 5000)

  // ================ FUNCTIONS ================

  function commentOne() {
    $("#comment1").css("visibility", "visible")
    setTimeout(commentSix, 5000)
    setTimeout(function(){
      $("#comment1").css("visibility", "hidden")
    }, 6000)
  }

  function commentTwo() {
    $("#comment2").css("visibility", "visible")
    setTimeout(commentFive, 5000)
    setTimeout(function(){
      $("#comment2").css("visibility", "hidden")
    }, 6000)
  }

  function commentThree() {
    $("#comment3").css("visibility", "visible")
    setTimeout(commentFive, 5000)
    setTimeout(function(){
      $("#comment3").css("visibility", "hidden")
    }, 6000)
  }

  function commentFour() {
    $("#comment4").css("visibility", "visible")
    setTimeout(commentTwo, 5000)
    setTimeout(function(){
      $("#comment4").css("visibility", "hidden")
    }, 6000)
  }

  function commentFive() {
    $("#comment5").css("visibility", "visible")
    setTimeout(commentOne, 5000)
    setTimeout(function(){
      $("#comment5").css("visibility", "hidden")
    }, 6000)
  }

  function commentSix() {
    $("#comment6").css("visibility", "visible")
    setTimeout(commentTwo, 5000)
    setTimeout(function(){
      $("#comment6").css("visibility", "hidden")
    }, 6000)
  }

})

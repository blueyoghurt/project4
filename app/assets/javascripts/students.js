// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {
  console.log('Student DOM loaded');

  $("#studentProfile").click(function() {
    console.log("Student user searching for Profile");
    $("#studentInput").empty()
    $("#studentInput").append(
      // '<i class="notched circle loading icon loadingIcon"></i>' +
      // '<p>Loading...</p>'

      '<div class="ui icon">' +
        '<i class="notched circle loading icon loadingIcon"></i>' +
        '<div class="content">' +
          '<div class="header">' +
            'Loading...' +
          '</div>' +
        '</div>' +
      '</div>'


    )

    $.ajax({
      url: '/student/profile',
      method: 'GET'
      // data: {id: this.value},
      // data: {data}
      // dataType: 'json'
    }).done(function (data) {
      console.log("Information is back:", data);
      // $("#studentInput").empty()
      $("#studentInput").append('')

    })
  })

})

//
// $('#selectMeetGreet').submit(function(e) {
//     e.preventDefault();
//
//     var greetID = $('#selectedMeetGreet').val()
//     console.log("Greet ID:", greetID)
//     // APPEND MEET & GREET DETAILS
//     $.ajax({
//       url: '/events/search',
//       method: 'GET',
//       data: {id: greetID}
//       // data: {id: this.value},
//       // data: {data}
//       // dataType: 'json'
//     }).done(function (data) {
//       console.log("Returned Data:", data)
//       $("#sessionDetails").empty()
//       $("#infoOnClasses").empty()
//       $("#sessionDetails").append(
//         "<div class='card'>" +
//           "<div class='card-block'>" +
//             "<h4 class='card-title'>" + data.name + "</h4>" +
//             "<p><b>Date:</b> </br>" + data.date + "</p>" +
//             "<p><b>Time:</b> </br> " + data.start + "</p> </br>" +
//             "<p><b>Venue:</b> </br>" + data.location + "</p>" +
//             "<p><b>Description:</b> </br>" + data.description + "</p>" +
//           "</div>" +
//         "</div>"
//       )
//     })

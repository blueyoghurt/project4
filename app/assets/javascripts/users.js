// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on('turbolinks:load', function() {
  console.log('Student DOM loaded');

  // CLICKING USER PROFILE
  $("#userProfile").click(function() {
    console.log("User searching for Profile");
    $("#profileInput").empty()
    $("#profileInput").append(
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
      url: '/users/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
          '<tbody>' +
            '<tr>' +
              '<td><b>First Name:</b></td>' +
              '<td>' + data.first_name + '</td>' +
            '</tr>' +
            '<tr>' +
              '<td><b>Last Name:</b></td>' +
              '<td>' + data.last_name + '</td>' +
            '</tr>' +
            '<tr>' +
              '<td><b>Email:</b></td>' +
              '<td>' + data.email + '</td>' +
            '</tr>' +
            '<tr>' +
              '<td><b>User Type:</b></td>' +
              '<td>Student</td>' +
            '</tr>' +
            '<tr>' +
          '</tbody>' +
        '</table>' +
        '<button id="editProfile" class="ui yellow button right floated editButton">Edit</button>'
        // '</br>' +
        // '</br>' +
        // '<table class="ui basic table">' +
        //   '<tbody>' +
        //       '<td><b>School:</b></td>' +
        //       '<td>' + data.school + '</td>' +
        //     '</tr>' +
        //   '</tbody>' +
        // '</table>' +
        // '<button id="editSchool" class="ui yellow button right floated editButton">Edit</button>'
      )
    })
  })

  $(document).on('click','#editProfile',function(){
    $('#editingProfile').modal('show')
  })

  // CLICKING STUDENT SCHOOL Profile
  $("#schoolProfile").click(function() {
    console.log("User searching for Profile");
    $("#profileInput").empty()
    $("#profileInput").append(
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
      url: '/users/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
          '<tbody>' +
              '<td><b>School:</b></td>' +
              '<td>' + data.school+ '</td>' +
            '</tr>' +
          '</tbody>' +
        '</table>' +
        '<button id="editSchool" class="ui yellow button right floated editButton">Edit</button>'
      )
    })
  })

  $(document).on('click','#editSchool',function(){
    $('#editingSchool').modal('show')
    console.log("Modal to edit school");
  })


  // CLICKING STUDENT SCHOOL Profile
  $("#studentCards").click(function() {
    console.log("User searching for Profile");
    $("#profileInput").empty()
    $("#profileInput").append(
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
      url: '/users/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
          '<tbody>' +
              '<td><b>School:</b></td>' +
              '<td>' + data.school+ '</td>' +
            '</tr>' +
          '</tbody>' +
        '</table>' +
        '<button id="editSchool" class="ui yellow button right floated editButton">Edit</button>'
      )
    })
  })


})

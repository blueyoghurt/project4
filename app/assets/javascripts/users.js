$(document).on('turbolinks:load', function() {
  console.log('PROFILE DOM loaded');

  // CLICKING USER PROFILE
  $("#userProfile").click(function() {
    loadingAjax()

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
      )
    })
  })

  $(document).on('click','#editProfile',function(){
    $('#editingProfile').modal('show')
  })

  // CLICKING STUDENT SCHOOL Profile
  $("#schoolProfile").click(function() {
    loadingAjax()

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
  $("#ngoCards").click(function() {
    loadingAjax()

    $.ajax({
      url: '/ngos/search',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      appendNgoCards(data)

    })
  })

// ======================= FUNCTIONS =======================
  // APPEND LOADING SYMBOL WHILE LOADING AJAX
  function loadingAjax() {
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
  }

  // APPENDING NGO CARDS
  function appendNgoCards(data) {
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="ngoAppendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#ngoAppendCards").append(
        '<div class="ui yellow card">' +
          '<div class="image">' +
            '<img src="https://www.residentadvisor.net/images/news/2014/de-away-moved.jpg">' +
          '</div>' +
          '<div class="content">' +
            '<a class="header">' + data[i].name+ '</a>' +
            '<div class="meta">' +
              '<span class="date">MY INDUSTRY</span>' +
            '</div>' +
            '<div class="description">' +
              data[i].description +
            '</div>' +
          '</div>' +
          '<div class="extra content">' +
            '<div class="right floated">' +
              '<a class="cardLinkIcons" href="mailto:' + data[i].email + '">' +
                '<i class="mail icon right" id="mailIcon' + i + '"></i>' +
                'Email' +
              '</a>' +
              '<a class="cardLinkIcons" data-tooltip="' + data[i].telephone + '" data-position="bottom left" data-inverted="">' +
                '<i class="text telephone icon"></i>' +
                'Phone' +
              '</a>' +
            '</div>' +
          '</div>' +
        '</div>'
      )
    }
  }

})

$(document).on('turbolinks:load', function() {
  console.log('PROFILE DOM loaded');

// Event listener to dismiss flash alerts
  $('.message .close')
  .on('click', function() {
    $(this)
    .closest('.message')
    .transition('fade')
    ;
  })
  ;

// Flash alerts automatically fades out after 5 seconds
  $("#alertDiv").fadeTo(5000, 0);

  // CLICKING USER PROFILE (STUDENT, NGOS AND SCHOOLS)
  $("#userProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/users/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      var usertype = "";
      if (data.usertype == 1) {
        usertype = "Admin user"
      } else if (data.usertype == 2) {
        usertype = "School user"
      } else if (data.usertype == 3) {
        usertype = "Student user"
      } else if (data.usertype == 4) {
        usertype = "Ngo user"
      }

      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
        '<tbody>' +
        '<tr class="logo">' +
        '<td colspan="2">' + '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/'+ data.profile_pic + '"/>' + '</td>' +
        '</tr>' +
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
        '<td>' + usertype + '</td>' +
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

  // CLICKING STUDENT SCHOOL PROFILE (STUDENT)
  $("#schoolProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/students/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", "student", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
        '<tbody>' +
        '<tr class="logo">' +
        '<td colspan="2">' + '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/'+ data.school.logo + '"/>' + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>School:</b></td>' +
        '<td>' + data.school.name + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Level:</b></td>' +
        '<td>' + data.level.description + '</td>' +
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

  // CLICKING SCHOOL INSTITUTION PROFILE (SCHOOL)
  $("#teacherSchoolProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/schools/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
        '<tbody>' +
        '<tr class="logo">' +
        '<td colspan="2">' + '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/'+ data.logo + '"/>' + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>School Name:</b></td>' +
        '<td>' + data.name + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Address:</b></td>' +
        '<td>' + data.address + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Email:</b></td>' +
        '<td>' + data.email + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Telephone:</b></td>' +
        '<td>' + data.telephone + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Website:</b></td>' +
        '<td>' + data.website + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Educational Level:</b></td>' +
        '<td>' + data.education_level.description + '</td>' +
        '</tr>' +
        '</tbody>' +
        '</table>' +
        '<button id="editSchoolInstitution" class="ui yellow button right floated editButton">Edit</button>'
      )
    })
  })

  $(document).on('click','#editSchoolInstitution',function(){
    $('#editingSchoolInstitution').modal('show')
    console.log("Modal to edit school");
  })

  // CLICKING NGO INSTITUTION PROFILE (NGO)
  $("#ngoProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/ngos/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      $("#profileInput").empty()
      $("#profileInput").append(
        '<table class="ui basic table">' +
        '<tbody>' +
        '<tr class="logo">' +
        '<td colspan="2">' + '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_200,h_200,c_lfill/'+ data.logo + '"/>' + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>NGO Name:</b></td>' +
        '<td>' + data.name + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Address:</b></td>' +
        '<td>' + data.address + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Email:</b></td>' +
        '<td>' + data.email + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Telephone:</b></td>' +
        '<td>' + data.telephone + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Website:</b></td>' +
        '<td>' + data.website + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Description:</b></td>' +
        '<td>' + data.description + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Industry:</b></td>' +
        '<td>' + data.ngo_category.name + '</td>' +
        '</tr>' +
        '</tbody>' +
        '</table>' +
        '<button id="editNgoProfile" class="ui yellow button right floated editButton">Edit</button>'
      )
    })
  })

  $(document).on('click','#editNgoProfile',function(){
    $('#editingNgoProfile').modal('show')
    console.log("Modal to edit school");
  })


  // CLICKING ON CARDS (STUDENT)
  $("#studentCards").click(function() {
    loadingAjax()

    $.ajax({
      url: '/cards/profile',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      appendStudentCards(data)
    })
  })


  // CLICKING ON NGO LIST (STUDENT & SCHOOLS)
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

  // CLICKING ON EVENTS (SCHOOL)
  $("#eventsList").click(function() {
    loadingAjax()

    $.ajax({
      url: '/events/search',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      appendEventCards(data)
    })
  })

  // CLICKING ON STUDENT PROFILES (SCHOOL)
  $("#schoolStudentProfiles").click(function() {
    loadingAjax()

    $.ajax({
      url: '/students/search',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      appendAllStudentCards(data)
    })
  })

  $(document).on('click','#addEvent',function(){
    $('#addingEvent').modal('show')
    console.log("Modal to add event");
  })

  // CLICKING ON SCHOOL PROFILES (NGO)
  $("#schoolCards").click(function() {
    loadingAjax()

    $.ajax({
      url: '/schools/search',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      loadingAjax()
      appendSchoolCards(data)
    })
  })

  $("#pendingEvents").click(function() {
    loadingAjax()

    $.ajax({
      url: '/events/pending',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      loadingAjax()
      appendSchoolCards(data)
    })
  })

  $("#pastEvents").click(function() {
    loadingAjax()

    $.ajax({
      url: '/events/past',
      method: 'GET'
    }).done(function (data) {
      console.log("Information is back:", data);
      loadingAjax()
      appendSchoolCards(data)
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

  // APPENDING SCHOOL CARDS FOR NGO
  function appendSchoolCards(data) {
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="appendSchoolCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#appendSchoolCards").append(
        '<div class="ui yellow card">' +
        '<div class="image">' +
        '<img src="' + data[i].logo + '">' +
        '</div>' +
        '<div class="content">' +
        '<a class="header">' + data[i].name+ '</a>' +
        '<div class="meta">' +
        '<span class="date">' + data[i].education_level.description + '</span>' +
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
        '<a class="cardLinkIcons" data-tooltip="' + data[i].telephone + '" data-position="bottom left" data-inverted="">' +
        '<i class="world icon"></i>' +
        'Website' +
        '</a>' +
        '<a class="cardLinkIcons" data-tooltip="' + data[i].telephone + '" data-position="bottom left" data-inverted="">' +
        '<i class="text telephone icon"></i>' +
        'Telephone' +
        '</a>' +
        '</div>' +
        '</div>' +
        '</div>'
      )
    }
  }

  // APPEND STUDENT SIGNED UP CARDS
  function appendStudentCards(data) {
    console.log("Inside function:", data);
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="studentAppendCards"></div>')

    for (var i = 0; i < data.length; i++) {
      $("#studentAppendCards").append(
        '<a class="anchorForCards ui yellow card" href="/cards/' + data[i].id + '">' +
          '<div class="image">' +
            '<img src="' + data[i].template.event.image+ '">' +
          '</div>' +
          '<div class="content">' +
            '<div class="header">' +
              data[i].template.event.name +
            '</div>' +
            '<div class="meta">' +
              '<span class="date">' + data[i].template.event.start_date + ' to ' + data[i].template.event.end_date + '</span>' +
            '</div>' +
            '<div class="description">' +
              data[i].template.event.description +
            '</div>' +
          '</div>' +
          '<div class="extra content">' +
            '<div class="right floated">' +
            '<i class="list layout icon"></i>' +
            data[i].template.tasks.length + ' tasks!' +
            '</div>' +
          '</div>' +
        '</a>'
      )
    }
  }

  // APPENDING ALL STUDENT CARDS FOR SCHOOL
  function appendAllStudentCards(data) {
    console.log("Inside function:", data);
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="studentAppendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#studentAppendCards").append(
        '<div class="ui yellow card">' +
        '<div class="image">' +
        '<img src="https://www.residentadvisor.net/images/news/2014/de-away-moved.jpg">' +
        '</div>' +
        '<div class="content">' +
        '<a class="header">' + data[i].user.first_name+ '</a>' +
        '<div class="meta">' +
        '<span class="date">' + data[i].level.description + '</span>' +
        '</div>' +
        '<div class="description">' +
        data[i].level.description +
        '</div>' +
        '</div>' +
        '<div class="extra content">' +
        '<div class="right floated">' +
        '<a class="cardLinkIcons" href="mailto:' + data[i].user.email + '">' +
        '<i class="mail icon right" id="mailIcon' + i + '"></i>' +
        'Email' +
        '</a>' +
        '</div>' +
        '</div>' +
        '</div>'
      )
    }
  }

  // APPENDING EVENTS
  function appendEventCards(data) {
    $("#profileInput").empty()
    $("#profileInput").append(
      '<div class="ui centered grid" id="addEventBox">' +
      '<button class="ui yellow button" id="addEvent">Add Event</button>' +
      '</div>' +
      '<div class="ui cards" id="appendEventCards"></div>'
    )
    for (var i = 0; i < data.length; i++) {
      $("#appendEventCards").append(
        '<a class="anchorForCards ui yellow card" href="/events/' + data[i].id + '">' +
          '<div class="image">' +
            '<img src="https://www.residentadvisor.net/images/news/2014/de-away-moved.jpg">' +
          '</div>' +
          '<div class="content">' +
            '<div class="header">' +
              data[i].name +
            '</div>' +
            '<div class="meta">' +
              '<span class="date">' + data[i].start_date + ' to ' + data[i].end_date + '</span>' +
            '</div>' +
            '<div class="description">' +
              data[i].description +
            '</div>' +
          '</div>' +
          '<div class="extra content">' +
            '<div class="right floated">' +
              '<i class="list layout icon"></i>' +
              data[i].cards.length + ' students signed up!' +
            '</div>' +
          '</div>' +
        '</a>'
      )

    }
  }


})

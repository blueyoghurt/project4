$(document).on('turbolinks:load', function() {

// Event listener to dismiss flash alerts
  $('.message .close')
  .on('click', function() {
    $(this)
    .closest('.message')
    .transition('fade')
    ;
  })
  ;

// Flash alerts automatically slides up after 5 seconds
  $("#alertDiv").fadeTo(2000, 1).slideUp(500);

// Datepicker on add events modal's event listener
  $( function() {
    $( ".datepicker" ).datepicker({
      changeMonth: true
    });
  } );


  // CLICKING USER PROFILE (STUDENT, NGOS AND SCHOOLS)
  $("#userProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/users/profile',
      method: 'GET'
    }).done(function (data) {
      var usertype = "";
      if (data.usertype == 1) {
        usertype = "Admin user"
      } else if (data.usertype == 2) {
        usertype = "School user";
      } else if (data.usertype == 3) {
        usertype = "Student user";
      } else if (data.usertype == 4) {
        usertype = "Ngo user";
      }

      if(data.gender == 1){
        gender = "Male"
      } else {
        gender = "Female"
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
        '<td><b>Gender:</b></td>' +
        '<td>' + gender + '</td>' +
        '</tr>' +
        '<tr>' +
        '<td><b>Type:</b></td>' +
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
  })

  // CLICKING SCHOOL INSTITUTION PROFILE (SCHOOL)
  $("#teacherSchoolProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/schools/profile',
      method: 'GET'
    }).done(function (data) {
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
  })

  $(document).on('click','#addTaskButton',function(){
    $('#addTeacherTask').modal('show')
  })

  // CLICKING NGO INSTITUTION PROFILE (NGO)
  $("#ngoProfile").click(function() {
    loadingAjax()

    $.ajax({
      url: '/ngos/profile',
      method: 'GET'
    }).done(function (data) {
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
  })


  // CLICKING ON CARDS (STUDENT)
  $("#studentCards").click(function() {
    loadingAjax()

    $.ajax({
      url: '/cards/profile',
      method: 'GET'
    }).done(function (data) {
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
      appendEventCards(data)
    })
  })

  // CLICKING ON AVAILABLE EVENTS (STUDENTS)
  $("#availableEvents").click(function() {
    loadingAjax()

    $.ajax({
      url: '/events/student',
      method: 'GET'
    }).done(function (data) {
      appendEventCardsStudent(data)
    })
  })


  // CLICKING ON STUDENT PROFILES (SCHOOL)
  $("#schoolStudentProfiles").click(function() {
    loadingAjax()

    $.ajax({
      url: '/students/search',
      method: 'GET'
    }).done(function (data) {
      appendAllStudentCards(data)
    })
  })

  $(document).on('click','#addEvent',function(){
    $('#addingEvent').modal('show')
  })



  // CLICKING ON SCHOOL PROFILES (NGO)
  $("#schoolCards").click(function() {
    loadingAjax()

    $.ajax({
      url: '/schools/search',
      method: 'GET'
    }).done(function (data) {
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
      loadingAjax()
      appendEventCards(data)
    })
  })

  $("#pastEvents").click(function() {
    loadingAjax()

    $.ajax({
      url: '/events/past',
      method: 'GET'
    }).done(function (data) {
      loadingAjax()
      appendEventCards(data)
    })
  })

  $("#studentSubmissions").click(function() {
    loadingAjax()

    $.ajax({
      url: '/cards/pending',
      method: 'GET'
    }).done(function (data) {
      loadingAjax()
      appendPendingEventCards(data)
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

  // APPEND STUDENT SIGNED UP CARDS
  function appendStudentCards(data) {
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="studentAppendCards"></div>')

    for (var i = 0; i < data.length; i++) {
      if (!data[i].template.event.image.length){
        data[i].template.event.image = data[i].template.event.ngo.logo
      }
      $("#studentAppendCards").append(
        '<a class="anchorForCards ui yellow card" href="/cards/' + data[i].id + '">' +
          '<div class="image">' +
            '<img src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/'+ data[i].template.event.image + '"/>'  +
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
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="studentAppendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#studentAppendCards").append(
        '<div class="ui yellow card">' +
        '<div class="image">' +
        '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_250,h_250,c_lfill/'+ data[i].user.profile_pic + '"/>'  +
        '</div>' +
        '<div class="content">' +
        '<a class="header">' + data[i].user.first_name + " " + data[i].user.last_name + '</a>' +
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

        if (data.length){
        var datestring;
        if (!data[i].image.length){
          data[i].image = data[i].ngo.logo
        }
        if (data[i].start_date != data[i].end_date){
          datestring = moment(data[i].start_date).format("DD MMM") + ' to ' + moment(data[i].end_date).format("DD MMM")
        } else {
          datestring = moment(data[i].start_date).format("DD MMM YYYY")
        }

        $("#appendEventCards").append(
          '<a class="anchorForCards ui yellow card" href="/events/' + data[i].id + '">' +
            '<div class="image">' +
              '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/'+ data[i].image + '"/>'  +
              // '<img src="https://www.residentadvisor.net/images/news/2014/de-away-moved.jpg">' +
            '</div>' +
            '<div class="content">' +
              '<div class="header">' +
                data[i].name +
              '</div>' +
              '<div class="meta">' +
                '<span class="date">' + datestring + '</span>' +
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
      } else {
        $("#appendEventCards").append('<div class="">There are no available events.</div>')
      }
    }
  }


  // APPENDING EVENTS FOR STUDENT
  function appendEventCardsStudent(data) {
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="appendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      if (!data[i].image.length){
        data[i].image = data[i].ngo.logo
      }
      $("#appendCards").append(
        '<a class="anchorForCards ui yellow card" href="/events/' + data[i].id + '">' +
          '<div class="image">' +
            '<img class="logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/'+ data[i].image + '"/>'  +
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

  // APPENDING PENDING EVENTS FOR TEACHER TO APPROVE
  function appendPendingEventCards(data) {
    $("#profileInput").empty()
    $("#profileInput").append('<div class="ui cards" id="appendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#appendCards").append(
        '<a class="anchorForCards ui yellow card" href="/cards/' + data[i].id + '">' +
          '<div class="image">' +
            '<img src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/' + data[i].student.user.profile_pic + '">' +
          '</div>' +
          '<div class="content">' +
            '<div class="header">' +
              data[i].student.user.first_name + data[i].student.user.last_name +
            '</div>' +
            '<div class="meta">' +
              '<span class="date">' + data[i].template.event.name + '</span>' +
            '</div>' +
            '<div class="description">' +
              data[i].template.event.start_date +
              data[i].template.event.duration + ' hours' +
            '</div>' +
          '</div>' +
        '</a>'
      )

    }
  }


})

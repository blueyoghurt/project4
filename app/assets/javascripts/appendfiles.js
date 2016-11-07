// APPENDING NGO CARDS (All user class)
function appendNgoCards(data) {
  $("#profileInput").empty()
  if(data.length){
    $("#profileInput").append('<div class="ui cards" id="ngoAppendCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#ngoAppendCards").append(
        '<div class="ui yellow card">' +
        '<div class="image">' +
        '<img class="rect_logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/'+ data[i].logo + '"/>' +
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
  } else {
    $("#profileInput").append('<div class="ui cards" id="ngoAppendCards">There are no available NGOs</div>')
  }
}

// APPENDING SCHOOL CARDS FOR NGO
function appendSchoolCards(data) {
  $("#profileInput").empty()
  if(data.length){
    $("#profileInput").append('<div class="ui cards" id="appendSchoolCards"></div>')
    for (var i = 0; i < data.length; i++) {
      $("#appendSchoolCards").append(
        '<div class="ui yellow card">' +
        '<div class="image">' +
        '<img class="rect_logo" src="https://res.cloudinary.com/blueyoghurt/image/upload/w_350,h_200,c_lfill/'+ data[i].logo + '"/>' +
        '</div>' +
        '<div class="content">' +
        '<a class="header">' + data[i].name+ '</a>' +
        '<div class="meta">' +
        '<span class="date">' + data[i].education_level.description + '</span>' +
        '</div>' +
        '</div>' +
        '<div class="extra content">' +
        '<div class="right floated">' +
        '<a class="cardLinkIcons" href="mailto:' + data[i].email + '" data-tooltip="Email me" data-position="bottom left" data-inverted="">' +
        '<i class="mail icon right" id="mailIcon' + i + '"></i>' +
        '</a>' +
        '<a class="cardLinkIcons" data-tooltip="' + data[i].telephone + '" data-position="bottom left" data-inverted="">' +
        '<i class="text telephone icon"></i>' +
        '</a>' +
        '<a class="cardLinkIcons" data-tooltip="' + data[i].website + '" data-position="bottom left" data-inverted="">' +
        '<i class="world icon"></i>' +
        '</a>' +
        '</div>' +
        '</div>' +
        '</div>'
      )
    }
  } else {
    $("#profileInput").append('<div class="ui cards" id="appendSchoolCards">There are no available schools.</div>')
  }
}

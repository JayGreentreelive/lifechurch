$(document).ready(function () {

  if ($('.location-identifier').length > 0) {
    $(".location-chooser").change(function(){
      if ($('.location-chooser select').val() == "vincennes") {
        $('.connect-form').attr("action", "");
        $('#mce-LOCATION').attr("value", "vincennes");
      } else if ($('.location-chooser select').val() == "bicknell") {
        $('.connect-form').attr("action", "");
        $('#mce-LOCATION').attr("value", "Kansas City");
      } else if ($('.location-chooser select').val() == "online") {
        $('.connect-form').attr("action", "");
        $('#mce-LOCATION').attr("value", "West Palm Beach");
      }
    });

    if ($('.location-identifier:contains("vincennes")').length > 0) {
      $('.location-chooser').remove();
      $('.connect-form').attr("action", "");
    }

    if ($('.location-identifier:contains("bicknell")').length > 0) {
      $('.location-chooser').remove();
      $('.connect-form').attr("action", "");
    }

    if ($('.location-identifier:contains("online")').length > 0) {
      $('.location-chooser').remove();
      $('.connect-form').attr("action", "");
    }
  }
});

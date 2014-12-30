// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require moment
//= require fullcalendar

$(document).on('ready page:load', function(){

$('#calendar').fullCalendar({

    dayClick: function() {
        alert("You clicked on a day");
    },

      editable: true,

      events: '/services.json',

      weekMode: 'liquid',

      height: 600,

      defaultView: 'agendaWeek',

      allDaySlot: false,

        header: {
                  left: 'title',
                  center: 'agendaDay,agendaWeek,month',
                  right: 'today prev,next'
        },

    windowResize: function(view) {
      if ($(window).width() < 514){
        $('#calendar').fullCalendar( 'changeView', 'agendaDay' );
      } else {
        $('#calendar').fullCalendar( 'changeView', 'agendaWeek' );
      }
    }
  });
});

$(document).ready(function() {
    // page is now ready, initialize the calendar...

    $('#calendar').fullCalendar({
          header: {
            left: 'prev,next today',
            center: 'title',
            right: ''
          },
          selectable: true,
          editable: true,
          allDay: false,
          events: function(start, end, callback) {
            events = [];
            $.get('workouts', function(data) {
              events = data;
            });

            return callback(events);
          },
          eventDataTransform: function(model) {
            console.log("in data transform");
            return {
              title: model.workflow_state,
              start: model.start_date,
              end: model.end_date,
              color: 'green',
              allDay: false
              // must add the 'url' attribute here, will be link to modal window
            };
          },
          select: function(start, end, allDay) {
            $.fancybox({
              href : 'workouts/new',
              type : 'ajax'
            });
          },
          eventRender: function( event, element, view ) { 
            console.log("rendering event")
          },
          // events: 'https://www.google.com/calendar/feeds/k6j4jr011punucv77ftguqfe54%40group.calendar.google.com/public/basic',
          // dayClick: function(date) {
          //     //console.log(moment(date).format("MMM Do YY"));
          //     $('#calendar').fullCalendar('refetchEvents')
          // },
          eventClick: function(event) {
            console.log(event);
            if (event.url) {
              return false;
              //$(".fancybox").fancybox();
              // $.post("/path/to/controller/action.json", { line: line, report: report } ,function(response){
              //   //process JSON response here
              // });
            };
          }
    });
});
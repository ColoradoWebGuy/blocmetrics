# Blocmetrics
Here is an API tracking service and reporting tool to track events on websites.

## Getting Started

1. First, create an account with Blocmetrics.
2. Under "Web Apps" - register a new application
3. Add this snippet to the application you want to track (application.js file would be best):

```javascript
  var blocmetrics = {};

  blocmetrics.report = function(eventName) {
     var event = {event: { name: eventName }};
     var request = new XMLHttpRequest();

     request.open("POST", "http://localhost:3000/api/events", true);
     request.setRequestHeader('Content-Type', 'application/json');
     request.send(JSON.stringify(event));
  }
```

Then to track your page views, just simply add the following javascript snippet to the page you want to track. Make sure you change the `page_name` to the name of your page.

```javascript
  $(document).ready(function(){
      blocmetrics.report("page_name");
  });
```

That's it! You will then be able to see all of your events and analytics under "Web Apps" within Blocmetrics. Enjoy!

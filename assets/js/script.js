

function iterateRecords(results) {

    console.log(results);

    // Setup the map as per the Leaflet instructions

    var myMap = L.map('map').setView([27.47, 153.02], 13);

    L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        maxZoom: 19,
        attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(myMap);

    // Iterate over each record and add a (marker) using the Latitude and Longitude from dataset
    $.each(results.result.records, function(recordID, recordValue) {

        var recordLatitude = recordValue["Latitude"];
        var recordLongitude = recordValue["Longitude"];

        if(recordLatitude && recordLongitude) {

            // Position the marker and add to map
            var marker = L.marker([recordLatitude, recordLongitude]).addTo(myMap);

            // Associate a popup with the record's information
            popupText = "<strong>" + recordValue["Address"] + "</strong><br>" + "Location:" + recordValue["Location"] + "<br>" + recordValue["Suburb"] + "<br>" + "Capacity: " + recordValue["Capacity"] + "<br>Rack type: " + recordValue["Rack type"] + "<br><br><a href='https://deco1800teams-chamaeleon.uqcloud.net/bike/play/start_challenge' >START CHALLENGE HERE</a>";

            marker.bindPopup(popupText).openPopup();
        }
    })

}



$(document).ready(function() {

    var data = {
        resource_id: '4a67a16d-ffc7-4831-a77b-64d8ac42459e', // the resource id
        limit: 113
      }

      $.ajax({
        url: 'https://www.data.brisbane.qld.gov.au/data/api/3/action/datastore_search',
        data: data,
        dataType: 'jsonp',
        cache: true,
        success: function(results) {
            iterateRecords(results);
        //   alert('Total results found: ' + data.result.total)
        }
      });

});
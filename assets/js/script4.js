//locate Lat and Lng and zoom size
function myMap() {
    var mapProp= {
      center:new google.maps.LatLng(-27.499546, 153.042326),
      zoom:15,
    };
    var map = new google.maps.Map(document.getElementById("googleMap"),mapProp);
    }
    function trip(obj, trip) {
      document.getElementById(obj).innerHTML = "<b>" + trip + "</b>";
  }
  
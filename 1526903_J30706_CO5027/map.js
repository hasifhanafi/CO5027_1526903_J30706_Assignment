function initMap() {
    var clothing4men = { lat: 4.885470, lng: 114.931614 };
    var map = new google.maps.Map(document.getElementById('clothing4menmap'), {
        zoom: 4,
        center: clothing4men
    });
    var marker = new google.maps.Marker({
        position: clothing4men,
        map: map
    });
}
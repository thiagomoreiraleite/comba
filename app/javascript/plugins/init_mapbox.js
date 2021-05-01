import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 1000 });
  };

  if (mapElement) {
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    const mapMarkers = []
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const newMarker = new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
      mapMarkers.push(newMarker);
      newMarker.getElement().dataset.markerId = marker.id;
      newMarker.getElement().addEventListener('click', (e) => toggleCardScroll(e) );
      newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardHighlighting(e) );
      newMarker.getElement().addEventListener('mouseleave', (e) => exittoggleCardHighlighting(e) );
      const changeCursorStyle = (event) => {
        event.currentTarget.style.cursor = 'pointer';
      }
      newMarker.getElement().addEventListener('mouseenter', (e) => changeCursorStyle(e) );
    });
    navigator.geolocation.getCurrentPosition((position) => {
      const el = document.createElement('div');
      el.className = 'marker';
      el.style.backgroundImage = 'url("https://res.cloudinary.com/dkljkjqlg/image/upload/v1599595773/Ambulant%20Icons/kombi_Ambulant_th384q.png")';
      el.style.backgroundSize = 'contain';
      el.style.width = '40px';
      el.style.height = '40px';
      new mapboxgl.Marker(el)
        .setLngLat([position.coords.longitude, position.coords.latitude])
        .addTo(map);
      map.flyTo({
        center: [position.coords.longitude, position.coords.latitude],
        essential: true,
        zoom: 14,
        duration: 0
      })
    });
    fitMapToMarkers(map, markers);
    openInfoWindow(mapMarkers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl }));
    map.addControl(
      new mapboxgl.GeolocateControl({
        positionOptions: {
          enableHighAccuracy: true
        },
        trackUserLocation: true
      })
    );
  }
};

const openInfoWindow = (markers) => {
  const cards = document.querySelectorAll('.card');
  cards.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
}
const toggleCardScroll  = (event) => {
  const card = document.querySelector(`[data-gas_station-id="${event.currentTarget.dataset.markerId}"]`);
  card.scrollIntoView({
    behavior: 'smooth'
  });
}
const toggleCardHighlighting  = (event) => {
  const card = document.querySelector(`[data-gas_station-id="${event.currentTarget.dataset.markerId}"]`);
  card.classList.toggle('highlight');
  card.scrollIntoView({
    behavior: 'smooth'
  });
}
const exittoggleCardHighlighting  = (event) => {
  const card = document.querySelector(`[data-gas_station-id="${event.currentTarget.dataset.markerId}"]`);
  card.classList.toggle('highlight');
}

export { initMapbox };

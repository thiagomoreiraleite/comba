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
    const isTouchEvent = e => e.originalEvent && "touches" in e.originalEvent;
    const isTwoFingerTouch = e => e.originalEvent.touches.length >= 2;
  
    map.on("dragstart", event => {
      if ((/Android|webOS|iPhone|iPad/i.test(navigator.userAgent)) && (isTouchEvent(event) && !isTwoFingerTouch(event))) {
         map.dragPan.disable();
      }
    });
  
    // Drag events not emited after dragPan disabled, so I use touch event here
    map.on("touchstart", event => {
        if ((/Android|webOS|iPhone|iPad/i.test(navigator.userAgent)) && (isTouchEvent(event) && isTwoFingerTouch(event))) {
         map.dragPan.enable();
      }
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
      newMarker.getElement().addEventListener('mouseenter', (e) => toggleCardScroll(e) );
      // newMarker.getElement().addEventListener('mouseleave', (e) => exittoggleCardHighlighting(e) );
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
      // map.flyTo({
      //   center: [position.coords.longitude, position.coords.latitude],
      //   essential: true,
      //   zoom: 12,
      //   duration: 0
      // })
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
  const cardsGasolina = document.querySelectorAll('.card-gasolina');
  const cardsDiesel = document.querySelectorAll('.card-diesel');
  const cardsEtanol = document.querySelectorAll('.card-etanol');
  cardsGasolina.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
  cardsDiesel.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
  cardsEtanol.forEach((card, index) => {
    card.addEventListener('mouseenter', () => {
      markers[index].togglePopup();
    });
    card.addEventListener('mouseleave', () => {
      markers[index].togglePopup();
    });
  });
}
const toggleCardScroll  = (event) => {
  const selectedGasolina = document.getElementById("selected-gasolina");
  const selectedDiesel = document.getElementById("selected-diesel");
  const selectedEtanol = document.getElementById("selected-etanol");
  const currentMarker = event.currentTarget
  const cardGasolina = document.querySelector(`[data-gas_station_gasolina-id="${currentMarker.dataset.markerId}"]`);
  const cardDiesel = document.querySelector(`[data-gas_station_diesel-id="${currentMarker.dataset.markerId}"]`);
  const cardEtanol = document.querySelector(`[data-gas_station_etanol-id="${currentMarker.dataset.markerId}"]`);
  selectedGasolina.innerHTML = `<div class="item card card-gasolina highlight">${cardGasolina.innerHTML}</div>`;
  selectedDiesel.innerHTML = `<div class="item card card-diesel highlight">${cardDiesel.innerHTML}</div>`;
  selectedEtanol.innerHTML = `<div class="item card card-etanol highlight">${cardEtanol.innerHTML}</div>`;
}
// const toggleCardHighlighting  = (event) => {
//   const card = document.querySelector(`[data-gas_station-id="${event.currentTarget.dataset.markerId}"]`);
//   card.classList.toggle('highlight');
//   card.scrollIntoView({
//     behavior: 'smooth'
//   });
// }
// const exittoggleCardHighlighting  = (event) => {
//   const card = document.querySelector(`[data-gas_station-id="${event.currentTarget.dataset.markerId}"]`);
//   card.classList.toggle('highlight');
// }

export { initMapbox };

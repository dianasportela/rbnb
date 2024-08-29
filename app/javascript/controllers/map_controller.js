import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  connect() {
    mapboxgl.accessToken = 'pk.eyJ1IjoiZ3R3YXNzb24iLCJhIjoiY20wZmg2b2oyMHdhODJtcTNpMTN2dDhzMiJ9.eSYBo4IH_PGLG8ddtw-_Qw';
    const map = new mapboxgl.Map({
	  container: 'map', // container ID
	  style: 'mapbox://styles/mapbox/streets-v12', // style URL
	  center: [-74.5, 40], // starting position [lng, lat]
	  zoom: 9, // starting zoom
    });

  }
}

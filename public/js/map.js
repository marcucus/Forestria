
const apiKey='pk.eyJ1IjoiY2hhaW1hYWJyIiwiYSI6ImNsMDVmbTFwcjB2Zm8zYm1qZHgyaTJuY3UifQ.YjE5dig22P0cEMnAh2cznA';
let points = $('#points').data("isPoints");


let plati = $('#platitude').data("isPlatitude");
let plongi = $('#plongitude').data("isPlongitude");

let lati = $('#latitude').data("isLatitude");
let longi = $('#longitude').data("isLongitude");

console.log(lati,longi);
points.forEach(function(item,index,array) {
    console.log(item,index);
});

const mymap = L.map('map').setView([lati, longi],13);

L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
    tileSize: 512,
    maxZoom: 20,
    zoomOffset: -1,
    id: 'mapbox/streets-v11',
    accessToken: 'pk.eyJ1IjoiY2hhaW1hYWJyIiwiYSI6ImNsMDVmbTFwcjB2Zm8zYm1qZHgyaTJuY3UifQ.YjE5dig22P0cEMnAh2cznA'
}).addTo(mymap);


const marker = L.marker([45.8372447257086, 1.2378704867778718]).addTo(mymap);
let contenu = `
<h5> Campus La Borie</h5>
<div style="text-align:center">
    <img width="95" height="95" src="../../public/images/sentier_handicap.png" alt="Image du point"/>
    <button ion-button clear round (click)="InfosParcour()">En savoir plus</button>
    </div>
    `

marker.bindPopup(contenu);


const latlngs = [
    [45.838660, 1.234474],
    [45.837954, 1.232736],
    [45.836186, 1.232371],
    [45.835198, 1.234785],
    [45.834661, 1.240384],
    [45.834376, 1.243417],
    [45.835531, 1.241751],
    [45.835793, 1.238964],
    [45.836212, 1.236158],
    [45.838080, 1.235173],
    [45.838116, 1.236647],
    [45.838136, 1.238206],
];

var polyline = L.polyline(latlngs, {color: 'red'}).addTo(mymap);


mymap.fitBounds(polyline.getBounds());
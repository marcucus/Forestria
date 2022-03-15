const apiKey='pk.eyJ1IjoiY2hhaW1hYWJyIiwiYSI6ImNsMDVmbTFwcjB2Zm8zYm1qZHgyaTJuY3UifQ.YjE5dig22P0cEMnAh2cznA';

let points = $('#points').data("isPoints");

let plati = $('#platitude').data("isPlatitude");
let plongi = $('#plongitude').data("isPlongitude");

let lati = $('#latitude').data("isLatitude");
let longi = $('#longitude').data("isLongitude");

var nb= points.length;

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



const latlngs = [];

for(let i =0; i < nb; i++)
{

    latlngs.push([points[i]['latitude'],points[i]['longitude']],);
    marker = L.marker([points[i]['latitude'],points[i]['longitude']]).addTo(mymap);
    contenu = `
        <h5>`
    contenu += points[i]['titre'];
    contenu +=`</h5>
        <div style="text-align:center">
            <img width="95" height="95" src="../../public/images/sentier_handicap.png" alt="Image du point"/>
            <p>`
    contenu += points[i]['text'];
    contenu+= `</p>
            <button ion-button clear round (click)="InfosParcour()">En savoir plus</button>
        </div>
        `
    marker.bindPopup(contenu);
}
console.log(latlngs);
var polyline = L.polyline(latlngs, {color: 'red'}).addTo(mymap);


mymap.fitBounds(polyline.getBounds());
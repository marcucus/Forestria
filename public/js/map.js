const apiKey='pk.eyJ1IjoiY2hhaW1hYWJyIiwiYSI6ImNsMDVmbTFwcjB2Zm8zYm1qZHgyaTJuY3UifQ.YjE5dig22P0cEMnAh2cznA';

var greenIcon = new L.Icon({
	iconUrl: '../images/icon.png',
	iconSize: [25, 41],
	iconAnchor: [12, 41],
	popupAnchor: [1, -34],
	shadowSize: [41, 41]
});
let points = $('#points').data("isPoints");

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
    let texts = points[i]['text'].substr(0, 100);
    latlngs.push([points[i]['latitude'],points[i]['longitude']],);

    marker = L.marker([points[i]['latitude'],points[i]['longitude']],{icon:greenIcon}).addTo(mymap);
    pid = points[i]['id'];
    contenu = `
        <h5>`
    contenu += points[i]['titre'];
    contenu +=`</h5>`;
    contenu += '<div style="text-align:center">';
    contenu += "<img width='70%' height='70%' src='../images/upload/point/";
    contenu += points[i]['imageName'];
    contenu +="' alt='Image du point'/>";
    contenu +=`<p>`;
    contenu += texts+' ...';
    contenu += `</p>`;
    contenu += "<a href='#";
    contenu += points[i]['id'];
    contenu += "'class='btn'>En savoir plus</a>";
    contenu +=`</div>`;
    marker.bindPopup(contenu);
}
console.log(latlngs);
var polyline = L.polyline(latlngs, {color: 'green'}).addTo(mymap);



mymap.fitBounds(polyline.getBounds());
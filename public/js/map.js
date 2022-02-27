
const apiKey='pk.eyJ1IjoiY2hhaW1hYWJyIiwiYSI6ImNsMDVmbTFwcjB2Zm8zYm1qZHgyaTJuY3UifQ.YjE5dig22P0cEMnAh2cznA';

const mymap = L.map('map').setView([45.83291558861034, 1.2522536878984514],13);

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
    <img width="95" height="95" src="images/sentier_handicap.png"/>
    <button ion-button clear round (click)="InfosParcour()">En savoir plus</button>
    </div>
    `

marker.bindPopup(contenu);






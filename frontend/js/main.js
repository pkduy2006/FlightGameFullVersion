'use strict';

const name = prompt('Enter your name');

const map = L.map('map', {tap: false});
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
  maxZoom: 20,
  attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);
map.setView([21.2187, 105.8042], 13);
const airportMarkers = L.featureGroup().addTo(map);

function updateTime() {
  const now = new Date();
  const hours = now.getHours().toString().padStart(2, '0');
  const minutes = now.getMinutes().toString().padStart(2, '0');
  const seconds = now.getSeconds().toString().padStart(2, '0');
  document.getElementById('time').innerHTML = `${hours}:${minutes}:${seconds}`;
}
updateTime();
setInterval(updateTime, 1000);

function getDate() {
  const now = new Date();
  const day = now.getDate().toString().padStart(2, '0');
  const month = (now.getMonth() + 1).toString().padStart(2, '0');
  const year = now.getFullYear();
  document.getElementById('date').innerHTML = `${day}/${month}/${year}`;
}
getDate();

async function getData(url) {
  const response = await fetch(url);
  if (!response.ok) throw new Error('Unable to fetch data');
  const data = await response.json();
  return data;
}

async function setup(name)  {
  try {
    const response = await getData(`http://127.0.0.1:5000/setup/user=${name}`);
    const airports = await response.json();
    for (let i = 0; i < airports.length; i++) {
      const marker = L.marker([airports[i].latitude_deg, airports[i].longitude_deg]).addTo(map);
      airportMarkers.addLayer(marker);
      if (i === 0) {
        marker.setIcon(redIcon);
      }
    }
  } catch (error) {
    console.log(error.message);
  }
}

setup(name);
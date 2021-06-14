//weather.js
 
const weather = document.querySelector("#js_weather");
const now = document.querySelector(".now");
const maxmin = document.querySelector(".max_min_temp");
const weatherIcon = document.getElementById('icon');

const COORDS = "coords";
const API_key = "ec1a6b926ab4ad92e04e244e2441e3d0";

function getWeather(lat, lng) {
    fetch(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_key}&units=metric`
    ).then(function (response) {
        return response.json();
    }).then(function (json) {
        const temperature = json.main.temp;
        const place = json.name;
        const dis = json.weather[0].description;
        const iconid = json.weather[0].icon;
        const max = json.main.temp_max;
        const min = json.main.temp_min;
        console.log(`http://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lng}&appid=${API_key}&units=metric`);
	     $.ajax({
	           url : 'englishToKorean.jsp?dong='+encodeURIComponent(place),
	          	type : 'GET',
	           	dataType : 'html',
	           	error : function(){
	           		console.log('error');
	           	},
	           	success : function(html){	
	            	weather.innerHTML = html;
	           	}
	       });
       	//weather.innerHTML = `${place}`
        now.innerText = `현재 온도는 ${temperature}이며 날씨는 ${dis}입니다.`
        maxmin.innerText = `최고 온도는 ${max}도, 최저 온도는 ${min} 입니다.`
        weatherIcon.src = `https://openweathermap.org/img/wn/${iconid}@2x.png`
        
    })
}

function saveCoords(coordsObj) {
    localStorage.setItem(COORDS, JSON.stringify(coordsObj))
}

function handleGeoSuccess(position) {
    const latitude = position.coords.latitude;
    const longitude = position.coords.longitude;
    const coordsObj = {
        latitude,
        longitude
    }
    saveCoords(coordsObj)
    getWeather(latitude, longitude);
}

function handleGeoError() {
    console.log("Can't access geolocation");
}
function askForCoords() {
    navigator.geolocation.getCurrentPosition(handleGeoSuccess, handleGeoError);
    // navigator.geolocation.getCurrentPosition(success[, error[, [options]])
}

function loadCoords() {
    const loadedCoords = localStorage.getItem(COORDS);
    if (loadedCoords === null) {
        askForCoords();
    } else {
        const parseCoords = JSON.parse(loadedCoords);
        getWeather(parseCoords.latitude, parseCoords.longitude);
    }
}

function init() {
    loadCoords();
};
init();
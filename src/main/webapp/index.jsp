<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="A front-end template that helps you build fast, modern mobile web apps.">
	<meta name="viewport" content="width=device-width, initial-scale=1">  

	<!-- Add to homescreen for Chrome on Android -->
	<meta name="mobile-web-app-capable" content="yes">
	<!-- <link rel="icon" sizes="192x192" href="images/touch/chrome-touch-icon-192x192.png"> -->
	
	<!-- Add to homescreen for Safari on iOS -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-title" content="Material Design Lite">
	
	<!-- <link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png"> -->
	
	<!-- Tile icon for Win8 (144x144 + tile color) -->
	<!-- <meta name="msapplication-TileImage" content="images/touch/ms-touch-icon-144x144-precomposed.png"> -->
	<meta name="msapplication-TileColor" content="#3372DF">
	
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>

    <link href="//fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en" rel="stylesheet">
    <link href="//fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	<link rel="stylesheet" href="//storage.googleapis.com/code.getmdl.io/1.0.4/material.yellow-indigo.min.css">   


	<title>Väder i Stockholm</title>
	<script type="text/javascript" src="//www.gstatic.com/authtoolkit/js/gitkit.js"></script>
	<link type=text/css rel=stylesheet href="//www.gstatic.com/authtoolkit/css/gitkit.css" />
	<script type=text/javascript>
	  window.google.identitytoolkit.signInButton(
	    '#loginwidget', // accepts any CSS selector
	    {
	      widgetUrl: window.location.origin + "/gitkit",
	      signOutUrl: "/",
	    }
	  );
	  
	</script>
	<style>
body::before {
/*     background-image: url('/app/@context("app","name")/file/sodermalm.jpeg'); */
    background-image: url('img/sodermalm.jpeg');
    background-size: cover;
    background-attachment: fixed;
    content: '';
    will-change: transform;
    z-index: -1;
    left: 0;
    right: 0;
    bottom: 0;
    top: 0;
    position: fixed;
}

body .willow {
  font-family: 'Roboto', 'Helvetica', sans-serif;
}

.willow .willow__posts {
  max-width: 450px;
  padding: 0;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  width: 100%;
  margin: 0 auto;
  -webkit-flex-shrink: 0;
      -ms-flex-negative: 0;
          flex-shrink: 0;
}

.willow.mdl-layout .mdl-layout__content {
  padding-top: 130px;
  position: relative;
  -webkit-overflow-scrolling: touch;
}
.willow .mdl-card {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: stretch;
  -webkit-align-items: stretch;
      -ms-flex-align: stretch;
          align-items: stretch;
  /*min-height: 360px;*/
  opacity:0.9;
}
.willow .mdl-card__title {
  padding: 16px;
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
}
.willow .mdl-card__media {
  box-sizing: border-box;
  background-size: cover;
  padding: 24px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-align: end;
  -webkit-align-items: flex-end;
      -ms-flex-align: end;
          align-items: flex-end;
  cursor: pointer;
}
.willow .mdl-card__media a,
.willow .mdl-card__title a {
  color: inherit;
}
.willow .mdl-card__supporting-text {
  width: 100%;
  padding: 16px;
  min-height: 64px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
}
.willow .mdl-card__supporting-text strong {
  font-weight: 400;
}
.willow .mdl-card__media ~ .mdl-card__supporting-text {
  min-height: 64px;
}
.willow .mdl-card__supporting-text:not(:last-child) {
  box-sizing: border-box;
  min-height: 76px;
}
.willow:not(.willow--blogpost) .mdl-card__supporting-text ~ .mdl-card__supporting-text {
  border-top: 1px solid rgba(0,0,0,0.1);
}

.willow .mdl-card__actions:first-child {
  margin-left: 0;
}
.willow .meta {
  box-sizing: border-box;
  padding: 16px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
          justify-content: flex-start;
  height: auto;
}
.willow .meta > .meta__favorites{
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  margin: 0 8px;
  font-size: 13px;
  font-weight: 500;
}
.willow .meta > .meta__favorites .material-icons {
  font-size: 2em;
  cursor: pointer;
  margin-left: 12px;
}
.willow .mdl-card .meta.meta--fill {
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
}
.willow .meta > *:first-child {
  margin-right: 16px;
}
.willow .meta > * {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
}
.willow.is-small-screen .willow__posts > .mdl-card.coffee-pic {
  -webkit-box-ordinal-group: 1;
  -webkit-order: 0;
      -ms-flex-order: 0;
          order: 0;
}
.willow.is-small-screen .willow__posts > .mdl-card.something-else {
  -webkit-box-ordinal-group: 0;
  -webkit-order: -1;
      -ms-flex-order: -1;
          order: -1;
}
.willow .something-else .mdl-card__media {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: center;
  -webkit-justify-content: center;
      -ms-flex-pack: center;
          justify-content: center;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
}
.willow .something-else > button {
  position: absolute;
  top: 0;
  right: 28px;
  -webkit-transform: translate(0px, -28px);
      -ms-transform: translate(0px, -28px);
          transform: translate(0px, -28px);
}
.willow .something-else .mdl-card__media {
  font-size: 13px;
  font-weight: 500;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
}
.willow .something-else .mdl-card__media img {
  width: 64px;
  height: 64px;
  margin-bottom: 10px;
}
.willow .something-else .mdl-card__supporting-text {
  background-color: #F5F5F5;
  border-bottom-left-radius: 2px;
  border-bottom-right-radius: 2px;
}
.willow .willow__posts > .demo-nav {
  margin: 12px 15px;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  color: white;
  font-weight: 500;
}
.willow .willow__posts > .demo-nav > .demo-nav__button {
  color: white;
  text-decoration: none;
}
.willow .willow__posts > .demo-nav .mdl-button {
  color: rgba(0,0,0,0.54);
  background-color: white;
}
.willow .willow__posts > .demo-nav > .demo-nav__button:first-child .mdl-button {
  margin-right: 16px;
}
.willow .willow__posts > .demo-nav > .demo-nav__button:last-child .mdl-button {
  margin-left: 16px;
}
.willow .mdl-card > a {
  color: inherit;
  text-decoration: none;
  font-weight: inherit;
}
.willow .mdl-card h3 {
  margin: 0;
}
.willow .mdl-card h3 a {
  text-decoration: none;
}
.willow .mdl-card h3.quote:before, .willow .mdl-card h3.quote:after {
  display: block;
  font-size: 3em;
  margin-top: 0.5em;
}
.willow .mdl-card h3.quote:before {
  content: 'Ã¢â¬Å';
}
.willow .mdl-card h3.quote:after {
  content: 'Ã¢â¬Â';
}
.willow--blogpost .custom-header {
  background-color: transparent;
}

.willow--blogpost .comments {
  background-color: #EEE;
}
.willow--blogpost .meta > * {
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
}
.willow--blogpost .meta + .mdl-card__supporting-text {
  border: 0;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
}
.willow--blogpost .meta + .mdl-card__supporting-text p {
  max-width: 512px;
  margin: 16px auto;
  font-size: 16px;
  line-height: 28px;
}

.willow--blogpost .comments {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
          justify-content: flex-start;
  -webkit-box-align: stretch;
  -webkit-align-items: stretch;
      -ms-flex-align: stretch;
          align-items: stretch;
  padding: 32px;
  box-sizing: border-box;
}
.willow--blogpost .comments > form {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  flex-diretion: row;
  margin-bottom: 16px;
}
.willow--blogpost .comments > form .mdl-textfield {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  margin-right: 16px;
  color: rgb(97, 97, 97);
}
/* Workaround for Firefox.
 * User agent stylesheet kept overwriting the font in FF only.
 */
.willow--blogpost .comments > form .mdl-textfield .mdl-textfield__input {
  font-family: 'Roboto', 'Helvetica', sans-serif;
}
.willow--blogpost .comments > form .mdl-textfield input,
.willow--blogpost .comments > form .mdl-textfield textarea {
  resize: none;
}
.willow--blogpost .comments > form button {
  margin-top: 20px;
  background-color: rgba(0, 0, 0, 0.24);
  color: white;
}
.willow--blogpost .comments .comment {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
  -webkit-box-align: stretch;
  -webkit-align-items: stretch;
      -ms-flex-align: stretch;
          align-items: stretch;
}
.willow--blogpost .comments .comment > .comment__header {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  margin-bottom: 16px;
}
.willow--blogpost .comments .comment > .comment__header > .comment__avatar {
  width: 48px;
  height: 48px;
  border-radius: 24px;
  margin-right: 16px;
}
.willow--blogpost .comments .comment > .comment__header > .comment__author {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: vertical;
  -webkit-box-direction: normal;
  -webkit-flex-direction: column;
      -ms-flex-direction: column;
          flex-direction: column;
}
.willow--blogpost .comments .comment > .comment__text {
  line-height: 1.5em;
}
.willow--blogpost .comments .comment > .comment__actions {
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
  -webkit-flex-direction: row;
      -ms-flex-direction: row;
          flex-direction: row;
  -webkit-box-pack: start;
  -webkit-justify-content: flex-start;
      -ms-flex-pack: start;
          justify-content: flex-start;
  -webkit-box-align: center;
  -webkit-align-items: center;
      -ms-flex-align: center;
          align-items: center;
  font-size: 0.8em;
  margin-top: 16px;
}
.willow--blogpost .comments .comment > .comment__actions button {
  margin-right: 16px;
  color: rgba(0, 0, 0, 0.24);
}
.willow--blogpost .comments .comment > .comment__answers {
  padding-top: 32px;
  padding-left: 48px;
}

.willow--blogpost .demo-back {
  position: absolute;
  top: 16px;
  left: 16px;
  color: white;
  z-index: 9999;
}
.willow .section-spacer {
  -webkit-box-flex: 1;
  -webkit-flex-grow: 1;
      -ms-flex-positive: 1;
          flex-grow: 1;
}
.willow .something-else {
  overflow: visible;
  z-index: 10;
}
.willow .amazing .mdl-card__title {
  background-color: #263238;
}

/* Fixes for IE 10 */
.mdl-grid {
  display: -webkit-box !important;
  display: -webkit-flex !important;
  display: -ms-flexbox !important;
  display: flex !important;
}

.social-btn {
  background-position: center;
  background-size: contain;
  background-repeat: no-repeat;
  background-color: transparent;
  margin: 0 16px;
  width: 24px;
  height: 24px;
  cursor: pointer;
  opacity: 0.46;
  border-radius: 2px;
}
.social-btn__twitter {
  background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_twitter_black_24dp.png');
}
.social-btn__blogger {
  background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_facebook_black_24dp.png');
}
.social-btn__gplus {
  background-image: url('https://www.gstatic.com/images/icons/material/system/2x/post_gplus_black_24dp.png');
}
.social-btn__share {
  color: rgba(0, 0, 0, 0.54);
  background: transparent;
}

    
      .mdl-data-table {
        width:100%
      }
	</style>	
</head>
<body>

    <div class="willow mdl-layout mdl-js-layout has-drawer is-upgraded">
      <main class="mdl-layout__content">
        <div class="willow__posts mdl-grid">	
        </div>
        <div class="mdl-grid">
          <div class="mdl-card mdl-cell mdl-cell--12-col">
            <div class="mdl-card__media mdl-color-text--grey-50">
              <h3>SMHI väder</h3>
            </div>
            <div class="mdl-card__supporting-text meta mdl-color-text--grey-600">
              		<div id="loginwidget"></div>
            </div>
          </div>
	
        </div>        
        
      </main>


      <div class="mdl-layout__obfuscator"></div>
    </div>  
  

  


<script>


	if (window.navigator.geolocation) {
		window.navigator.geolocation.getCurrentPosition(showPosition)
	} else {
		console.log("Nada")
	}

	function showPosition(position) {
		var lat = Math.round(position.coords.latitude * 1000000) / 1000000;
		var lon = Math.round(position.coords.longitude * 1000000) / 1000000;

		var smhiAPI = "http://opendata-download-metfcst.smhi.se/api/category/pmp1.5g/version/1/geopoint/lat/" + lat + "/lon/" + lon + "/data.json";

		$.getJSON(smhiAPI).done(function(data) {
			processSmhiData(data)
			//console.log(data);
          	
		}).always(function() {
			//doneProcessSmhiData()
		});
	}
  
      function processSmhiData(data) {
      var dataToStore = JSON.stringify(data);
      //localStorage.setItem('smhiData', dataToStore);

      var prevDate = null
      var nu = new Date()
      nu = nu.setHours(nu.getHours()-1)
      var idag = new Date().format("d/M")
      //$("code").show()
      //progress.hide()
    var card = $("<div/>").addClass("mdl-card mdl-cell mdl-cell--12-col");
    var table = $("<table/>").addClass("mdl-data-table mdl-js-data-table mdl-shadow--2dp");
	$.each( data.timeseries, function( i, item ) {
        // Ignore time that has passed
        if (new Date(item.validTime) > nu) {
          var d = new Date(item.validTime).format("d/M");
          var t = new Date(item.validTime).format("hh:mm");
          
          if(d != prevDate) {
            card = $("<div/>").addClass("mdl-card mdl-cell mdl-cell--12-col");
            table = $("<table/>").addClass("mdl-data-table mdl-js-data-table mdl-shadow--2dp");
            var title = $("<div/>").addClass("mdl-card__media mdl-color-text--grey-50");
            title.html("<h3>" + d + "</h3>");
            card.append(title);
            card.append(table);
            $(".willow__posts").append(card);
          }
          
          //<div class="mdl-card mdl-cell mdl-cell--12-col">
          
          // Now add it to the list
          var weatherDataRow = $("<tr/>");
          var time = $("<td/>").html(t);
          var temperature = $("<td/>").html(getTemp(item.t));
          var windDirection = $("<td/>").html(getWindDirection(item.wd));
          var cloud = $("<td/>").html(getCloud(item.tcc));
          var precipitation = $("<td/>").html(getPrecipitation(item));
          weatherDataRow.append(time).append(temperature).append(windDirection).append(cloud).append(precipitation);
          
          //weatherData.html("<td>" + t + "</td>&nbsp;" + getTemp(item.t) + "&nbsp;&nbsp;" + getWindDirection(item.wd) + "&nbsp;" + getCloud(item.tcc) + "&nbsp;&nbsp;" + getPrecipitation(item))
          table.append(weatherDataRow);

          prevDate = d
        }
      });      
    }
  
  
  
  
    function getCloud(n) {
  	var c = ""
  	if (n === 0) {
  		c = "#000"
  	} else if (n === 1) {
  		c = "#111"
  	} else if (n === 2) {
  		c = "#333"
  	} else if (n === 3) {
  		c = "#555"
  	} else if (n === 4) {
  		c = "#777"
  	} else if (n === 5) {
  		c = "#999"
  	} else if (n === 6) {
  		c = "#BBB"
  	} else if (n === 7) {
  		c = "#DDD"
  	} else if (n === 8) {
  		c = "#FFF"
  	} else if (n === 9) {
  		c = "#FFF"
  	} else {
  		c = "blue"
  	}
	return "<span title='" + n + "' style='font-size:1.5em;color:" + c + "'>&#9729;</span>";  	
  }

  // Forces signing on a number, returned as a string
  function getTemp(n) {
    n = Math.round(n);
    var t = ""
    var color = "red"
    if(n > 25){
      t = "+" + n + "&deg;";
      color = "#f05522"
    } else if(n > 25){
      t = "+" + n + "&deg;";
      color = "#e3cc68"
    } else if(n > 9){
      t = "+" + n + "&deg;";
      color = "#48b548"
    } else if(n > 7){
      t = "&nbsp;+" + n + "&deg;";
      color = "#2da848"
    } else if(n > 5){
      t = "&nbsp;+" + n + "&deg;";
      color = "#00a85f"
    } else if(n > 3){
      t = "&nbsp;+" + n + "&deg;";
      color = "#52ba84"
    } else if(n > 1){
      t = "&nbsp;+" + n + "&deg;";
      color = "#6ac4ac"
    } else if(n > 0){
      t = "&nbsp;+" + n + "&deg;";
      color = "#42b8eb"
    } else if (n === 0) {
      t = "&nbsp;&plusmn;" + n + "&deg;";
      color = "#6ecbdb"
    } else if(n < -25){
      t = "&nbsp;" + n + "&deg;";
      color = "#ebebeb"
    } else if(n < -20){
      t = "&nbsp;" + n + "&deg;";
      color = "#828282"
    } else if(n < -15){
      t = "&nbsp;" + n + "&deg;";
      color = "#582978"
    } else if(n < -9){
      t = "&nbsp;" + n + "&deg;";
      color = "#292b73"
    } else if(n < -7){
      t = "&nbsp;" + n + "&deg;";
      color = "#28459c"
    } else if(n < -5){
      t = "&nbsp;" + n + "&deg;";
      color = "#3852a1"
    } else if(n < -3){
      t = "&nbsp;" + n + "&deg;";
      color = "#4275b8"
    } else if(n < -1){
      t = "&nbsp;" + n + "&deg;";
      color = "#42b8eb"
    } else if(n < 0){
      t = "&nbsp;" + n + "&deg;";
      color = "#6ecbdb"
    }else{
      t = "&nbsp;" + n.toString() + "&deg;";
      color = "lightblue"
    }

    return "<div style='display:inline-block; width:2em; color:" + color + "'>" + t + "</div>"

  }

  function getPrecipitation(item) {

  // Category of precipitation
  // 0 no
  // 1 snow
  // 2 snow and rain
  // 3 rain
  // 4 drizzle
  // 5 freezing rain
  // 6 freezing drizzle

    var cat = ""
    if (item.pcat === 1){
      cat="snÃ¶"
    } else if (item.pcat === 2) {
      cat="snÃ¶blandat"
    } else if (item.pcat === 3) {
      cat="regn"
    } else if (item.pcat === 4) {
      cat="dugg"
    } else if (item.pcat === 5) {
      cat="underkylt"
    } else if (item.pcat === 6) {
      cat="underkylt"
    } else {
      cat=""
    }


    var pit = ""
    if (item.pit > 0) {
      return item.pit + "&nbsp;<em>" + cat + "</em>&nbsp;"
    } else {
      return "";
    }
  }

  function getWindDirection(n) {
    var dir = ""
    if (n>22 && n<68) {
      dir = "NO"
    } else if (n>67 && n<113) {
      dir = "O&nbsp;"
    } else if (n>112 && n<158) {
      dir = "SO"
    } else if (n>157 && n<203) {
      dir = "S&nbsp;"
    } else if (n>202 && n<248) {
      dir = "SV"
    } else if (n>247 && n<293) {
      dir = "V&nbsp;"
    } else {
      dir = "N&nbsp;"
    } 
    return "<div class='wind-dir' title='" + n + "' style='height:1em;display:inline-block;font-size:1.5em; line-height:0.9em; margin-right:0.3em;transform:rotate(" + n + "deg);-webkit-transform:rotate(" + n + "deg)'>&darr;</div><span>" + dir + "</span>";
  }
  
  
  
    Date.prototype.format = function(format) {
    var o = {
      "M+" : this.getMonth()+1, //month
      "d+" : this.getDate(),    //day
      "h+" : this.getHours(),   //hour
      "m+" : this.getMinutes(), //minute
      "s+" : this.getSeconds(), //second
      "q+" : Math.floor((this.getMonth()+3)/3),  //quarter
      "S" : this.getMilliseconds() //millisecond
    }
  
    if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
      (this.getFullYear()+"").substr(4 - RegExp.$1.length));
    for(var k in o)if(new RegExp("("+ k +")").test(format))
      format = format.replace(RegExp.$1,
        RegExp.$1.length==1 ? o[k] :
          ("00"+ o[k]).substr((""+ o[k]).length));
    return format;
  }
</script>

	<script src="//storage.googleapis.com/code.getmdl.io/1.0.2/material.min.js"></script>
</body>
</html>
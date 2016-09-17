<%@ Page Title="" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="false" CodeFile="Mapas.aspx.vb" Inherits="Mapas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
<div id="map" style="width:100%;height:500px"></div>

<script>
    function myMap() {

        

        var uluru = { lat: 20.695708, lng: -103.349028 };
        var uluru1 = { lat: 20.6966915, lng: -103.3566187 };
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 14,
            center: uluru
        });

        var contentString = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h1 id="firstHeading" class="firstHeading">Programa apoyo a mujeres jefa de familia</h1>' +
            '<div id="bodyContent">' +
            '<p><b>Reto mujeres</b>, Este programa contribuye al logro del objetivo de desarrollo <b>PROGRAMA APOYO A MUJERES JEFAS DE FAMILIA</b>.</p>' +
            '</div>' +
            '</div>';

        var contentString1 = '<div id="content">' +
            '<div id="siteNotice">' +
            '</div>' +
            '<h1 id="firstHeading" class="firstHeading">Tortillas artesanales</h1>' +
            '<div id="bodyContent">' +
            '<p><b>Reto mujeres</b>, Un ejemplo de los beneficios <b>PROGRAMA APOYO A MUJERES JEFAS DE FAMILIA</b>.</p>' +
            '</div>' +
            '</div>';

        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });

        var infowindow1 = new google.maps.InfoWindow({
            content: contentString1
        });

       
        var marker = new google.maps.Marker({
            position: uluru,
            map: map,
            title: 'Reto (Reto mujeres)'
        });
        marker.addListener('click', function () {
            infowindow.open(map, marker);
        });

        var marker1 = new google.maps.Marker({
            position: uluru1,
            map: map,
            title: 'Reto (Reto mujeres)'
        });
        marker1.addListener('click', function () {
            infowindow1.open(map, marker1);
        });

        //var myLatLng = { lat: 20.695708, lng: -103.349028 };

        //var map = new google.maps.Map(document.getElementById('map'), {
        //    zoom: 10,
        //    center: myLatLng
        //});

        //var marker = new google.maps.Marker({
        //    position: myLatLng,
        //    map: map,
        //    title: 'Aquí tu tienda!'
        //});

  //var mapCanvas = document.getElementById("map");
  //var mapOptions = {
  //  center: new google.maps.LatLng(20.6, -103.3), 
  //  zoom: 12
  //}
  //var map = new google.maps.Map(mapCanvas, mapOptions);
  //var myLatlng = new google.maps.LatLng(20.695708, -103.349028);

  //var marker = new google.maps.Marker({
  //    position: myLatlng,
  //    title: "Tu negocio aquí!"
  //});

}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCPjvyHr0qyWqgrsPaVTRrbQfVuTVSNq4U&callback=myMap"></script>

</asp:Content>


import { LightningElement } from 'lwc';

export default class CurrentLocationLwc extends LightningElement {

    lstMarkers = [];    
    zoomlevel = "1";
    
    handleClick(){
        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(position => {

                // Get the Latitude and Longitude from Geolocation API
                var latitude = position.coords.latitude;
                var longitude = position.coords.longitude;

                console.log("latitude >> ",latitude);
                console.log("longitude >> ",longitude);

                // Add Latitude and Longitude to the markers list.
                this.lstMarkers = [{
                    location : {
                        Latitude: latitude,
                        Longitude : longitude
                    },
                    title : 'You are here'
                }];
                this.zoomlevel = "10";
            });
        }
    }



    selectedMarkerValue = 'SF1';

    handleMarkerSelect(event) {
        console.log(" event >>",event);
        this.selectedMarkerValue = event.target.selectedMarkerValue;
    }
}
# OpenTripMapAPI

 Source: https://opentripmap.io/docs
         https://opentripmap.io/product

 API Requests

   * Request for detailed information about a specific object.

     Example: http://api.opentripmap.com/0.1/ru/places/xid/Q372040?apikey=xxxxx - request by the object with ID Q372040.

   * Request for a list of objects within the selected area.

     Example: http://api.opentripmap.com/0.1/en/places/bbox?lon_min=38.364285&lat_min=59.855685&lon_max=38.372809&lat_max=59.859052&kinds=churches&format=geojson&apikey=xxxxx - request for the list of churches within the selected area.

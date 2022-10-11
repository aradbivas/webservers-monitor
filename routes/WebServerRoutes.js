const express = require('express');
const router = express.Router();
const {getAllWebServers, createWebServer, deleteWebServer, updateWebServer, getWebServerHistory, getWebServerDetails} = require('../Controllers/WebServerController')


//Get list of all Web Servers and their current health-status
router.get('/allservers', getAllWebServers)
{

}

//Get list of a specific webserver requests history
router.get('/serverhistory/:name',getWebServerHistory)
{

}

//Create Webserver – Endpoint that will allow creating a new Web Server
router.post('/createwebserver',createWebServer)
{

}

//Read (Get) Webserver – Should include all basic webserver details, current health status and last 10 requests
// objects

router.get('/serverdetails/:name',getWebServerDetails)
{

}

//Update Webserver – Endpoint that will allow updating Web Server
router.put('/updateserver',updateWebServer)
{

}


//Delete Webserver – Endpoint that will allow deleting Web Server
router.delete('/deleteserver/:name',deleteWebServer)
{

}

module.exports =router;
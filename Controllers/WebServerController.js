const WebServer = require('../models/WebServerModel');
const History = require('../models/HistoryModel');
const getRequestsHistory = require('../middleware/getRequestObjects');
const HealthStatus = require('../middleware/HealthStaus')
const url = require("url");

const getAllWebServers = async (req,res) =>
{
    try {
        const webServers = await WebServer.findAll();
        if(!webServers)
        {
            return res.status(400).json("No web servers found");
        }
        const returnObject = [];
        for(const server of webServers)
        {
            const health = await HealthStatus(server);
            returnObject.push({Name:server.name, url:server.URL, status:health});
        }
        return res.status(200).json(returnObject);
    }
    catch (err)
    {
        console.log(err);
    }
}
const createWebServer = async (req, res) =>
{
    const {name, url} = req.body;
    try
    {
        const [webserver, created] = await WebServer.findOrCreate({where: {name : name},
        defaults: {
            name:name,
            URL: url
        }});
        if(created)
        {
            return res.status(201).json(webserver);
        }
        else
        {
            return res.status(400).json("WebServer already exists")
        }
    }
    catch (err)
    {
        console.log(err);
    }
}
const deleteWebServer = async (req,res) =>
{
    const {name} = req.params;
    try
    {
        const webServer = await WebServer.findOne({
            where: { name: name },
        });

        if (webServer) {
            await webServer.destroy(); // deletes the row
            return res.status(200).json("Web server " + name + " deleted successfully")
        }
        else {
            return res.status(400).json("No webserver with name '"+ name+"' exists")
        }
    }
    catch (err)
    {
        console.log(err);
    }

}
const getWebServerDetails = async (req,res)=>
{
    const {name} = req.params;
    try
    {
        const webserver = await WebServer.findOne({where:{name:name}});
        const status = await HealthStatus(webserver);
        const requests = await getRequestsHistory(webserver, 10);
        const returnObject = {Name:webserver.name, url:webserver.URL, HealthStatus: status, requests:requests};
        return res.status(200).json(returnObject);

    }
    catch (err)
    {
        console.log(err);
    }

}
const getWebServerHistory = async (req,res) =>
{
    const {name} = req.params;
    try {
        const webserver = await WebServer.findOne({where: {name: name}});
        if (webserver) {
            const requests = await getRequestsHistory(webserver);
            console.log(requests)
            if (requests !== null)
            {
                return res.status(200).json(requests)
            }
            return res.status(400).json("no history for webserver with name " + name + " found");
        }
        return res.status(400).json("no webserver with name " + name + " found");
    }
    catch (err)
    {
        console.log(err);
    }
}
const updateWebServer = async (req,res) =>{
    const {name, newName, newUrl} = req.body;
    try {
        const server = await WebServer.update({name: newName, URL: newUrl}, {
            where: {
                name: name
            }
        });
        return res.sendStatus(200);
    }catch (err)
    {
        console.log(err);
    }
}

module.exports = {
    getAllWebServers,
    createWebServer,
    deleteWebServer,
    getWebServerDetails,
    getWebServerHistory,
    updateWebServer
}
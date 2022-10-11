const fetch = require('node-fetch');
const WebServer = require('../models/WebServerModel')
const History = require('../models/HistoryModel');
const cron = require('node-cron');


const monitor = () =>
{
    cron.schedule('* * * * *', async () => {
        let time = new Date();
        try
        {
            const webServers = await WebServer.findAll();
            for(let i = 0; i < webServers.length; i++)
            {
                const response = await fetch('https://' +webServers[i].URL,
                    {
                        method: 'GET',
                        headers: {'Content-Type': 'application/json'}
                    });
                const latency = (new Date() - time) / 1000;
                const requestHealth = checkRequestHealth(response.status, latency);
                const history = await History.create({response: response.status,latency:latency, requestHealth:requestHealth})
                history.setWebserver(webServers[i]);
            }
        }
        catch (err)
        {
            console.log(err);
        }
})};

const checkRequestHealth = (status, latency) =>
{
    let health = 'Healthy'
    if(latency > 60 || status.toString().charAt(0) !== '2')
    {
        health = 'Unhealthy'
    }
    return health;
}

module.exports = monitor;
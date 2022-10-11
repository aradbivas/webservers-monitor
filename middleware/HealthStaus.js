const WebServer = require('../models/WebServerModel');
const History = require('../models/HistoryModel');

const HealthStatus = async (webServer) =>
{
    try
    {
        if(webServer)
        {
            let WebServerHealth = 'unhealthy'
            const histories = await History.findAll({where: { webServerId: webServer.id},limit:5, order: [['updatedAt', 'DESC']]});
            if(histories.length > 0)
            {
                for(const history in histories)
                {
                    if(history.requestHealth === 'unhealthy')
                    {
                        return WebServerHealth;
                    }
                }
                WebServerHealth = 'Healthy'
            }

            return WebServerHealth;
        }
    }
    catch (err)
    {
        console.log(err);
    }

}
module.exports = HealthStatus;
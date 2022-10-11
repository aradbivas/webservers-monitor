const History = require('../models/HistoryModel');

const getRequestsHistory =  async (webserver, limit)=>
{
    try
    {
       const requests = await History.findAll({where:{webServerId:webserver.id}, limit:limit, order: [['updatedAt', 'DESC']], attributes: ['response', 'latency', 'updatedAt']})
        if(requests)
        {
            return requests;
        }
        return null;
    }
    catch (err)
    {
        console.log(err);
    }
}


module.exports = getRequestsHistory;
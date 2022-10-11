const sequelize = require('./database/database');
const WebServer = require('./models/WebServerModel')
const History = require('./models/HistoryModel')
const WebServerRoute = require('./routes/WebServerRoutes')
const express = require("express");
const bodyParser = require('body-parser')
const monitor = require('./middleware/automatedWorker')
const app = express();
app.use(express.json({
    type: ['application/json', 'text/plain']
}))
app.use(bodyParser.urlencoded({ extended: true }));


WebServer.hasMany(History,{onDelete: 'CASCADE'});
History.belongsTo(WebServer);


sequelize.sync()
// sequelize.sync({force:true});
app.use('/api/webserver',WebServerRoute)
const port =  3000;
app.listen(port, ()=> console.log("started on port " + port))
monitor();
const Sequelize = require('sequelize');
const sequelize = require('../database/database')

const WebServerModel = sequelize.define("webserver", {
    id:{
        type:Sequelize.INTEGER,
        allowNull:false,
        primaryKey:true,
        autoIncrement:true
    },
    name:{
        type:Sequelize.STRING,
        allowNull: false,
        unique:true
    },
    URL:{
        type:Sequelize.STRING,
        allowNull:false,
    }

});

module.exports = WebServerModel;
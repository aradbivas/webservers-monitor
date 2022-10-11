const Sequelize = require('sequelize');
const sequelize = require('../database/database')

const HistoryModel = sequelize.define("history", {
    id:{
        type:Sequelize.INTEGER,
        allowNull:false,
        primaryKey:true,
        autoIncrement:true
    },
    response:{
        type:Sequelize.STRING,
        allowNull: false
    },
    latency:{
        type:Sequelize.FLOAT,
        allowNull:false,
    },
    requestHealth:{
        type:Sequelize.STRING,
        allowNull:false
    }
});

module.exports = HistoryModel;
const Sequelize = require('sequelize');

const sequelize = new Sequelize("monitor", "root", "password" ,{
    dialect: "mysql", host: "localhost"
});

module.exports = sequelize;
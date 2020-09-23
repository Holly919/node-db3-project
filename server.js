const express = require('express');

const SchemeRouter = require('./schemes/scheme-router.js');

const server = express();

server.use(express.json());
server.use('/api/schemes', SchemeRouter);

server.get('/', (req, res, next) => {
    res.status(200).json({api: "You are the wind beneath my wings"})
  })

module.exports = server;




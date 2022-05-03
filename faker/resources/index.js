'use strict';
const mockServer = require('node-mock-server');

const path = process.env.FAKER_PATH || __dirname + '/rest';
const urlPath = process.env.URL_PATH || '/rest/v1';
console.log({ path, urlPath });

mockServer({
  restPath: path,
  dirName: __dirname,
  urlPath: urlPath
});

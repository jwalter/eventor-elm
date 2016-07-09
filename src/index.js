'use strict';

require('ace-css/css/ace.css');

require('./index.html');

var Elm = require('./AppMain.elm');
var mountNode = document.getElementById('main');

var app = Elm.AppMain.embed(mountNode);

'use strict';

require('ace-css/css/ace.css');

var Elm = require('./AppMain.elm');
var mountNode = document.getElementById('main');

var app = Elm.AppMain.embed(mountNode);

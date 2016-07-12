'use strict';

require('./styles/main.styl');

require('./index.html');

var Elm = require('./AppMain.elm');
var mountNode = document.getElementById('main');

var app = Elm.AppMain.embed(mountNode);

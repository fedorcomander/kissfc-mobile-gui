'use strict';

CONTENT.welcome = {};

CONTENT.welcome.initialize = function (callback) {
    var self = this;
    
    if (GUI.activeContent != 'welcome') {
        GUI.activeContent = 'welcome';
    }

    $('#content').load("./content/welcome.html", htmlLoaded);
    

    function htmlLoaded() {
    }
};

CONTENT.welcome.cleanup = function (callback) {
    if (callback) callback();
};
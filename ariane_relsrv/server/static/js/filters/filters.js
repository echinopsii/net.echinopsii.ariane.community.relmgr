/*
 Ariane Release Manager
 Ariane Release Server
 AngularJS Filter

 Copyright (C) 2015 echinopsii
 Author: Stan Renia

 This program is free software: you can redistribute it and/or modify
 it under the terms of the GNU Affero General Public License as
 published by the Free Software Foundation, either version 3 of the
 License, or (at your option) any later version.

 This program is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU Affero General Public License for more details.

 You should have received a copy of the GNU Affero General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Created by stanrenia on 19/08/15.
 */

angular.module('ArianeUI')
    .filter('limitDisplay', function() {
        return function(text, limit) {
            if (typeof text == "string") {
                if (text.length > limit) {
                text = text.substring(0, limit - 3);
                text = text + '...';
                }
                return text;
            }
            console.log("Given paramter: '"+text+"' should be an Array or a String object.");
            return "Error reported by Alert message and in console log";
        };
    })
    .filter('prefix', function() {
        return function(text, prefix, obj, key, value) {
                if (typeof obj !== "undefined" && typeof key !== "undefined") {
                    if (typeof obj[key] !== "undefined" && obj[key] == value)
                        if(typeof obj[prefix] !== "undefined")
                            return obj[prefix]+text;
                        else
                            return prefix+text;
                }
            return text;
        };
    })
    .filter('sufix', function() {
        return function(text, sufix, obj, key, value) {
            if (typeof obj !== "undefined" && typeof key !== "undefined") {
                if (typeof obj[key] !== "undefined" && obj[key] == value)
                {
                    if (typeof obj[sufix] !== "undefined")
                        return text+obj[sufix];
                    else
                        return text+sufix;
                }
            }
            return text;
        };
    });

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

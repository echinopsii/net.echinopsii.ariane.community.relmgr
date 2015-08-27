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
            alert("Given paramter: '"+text+"' should be an Array or a String object.");
            console.log("Given paramter: '"+text+"' should be an Array or a String object.");
            return "Error reported by Alert message and in console log";
        };
    });
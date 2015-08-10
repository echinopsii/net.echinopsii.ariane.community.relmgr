// Ariane Release Manager
// Ariane Release Server
// Client HelloWorld Javascript
//
// Copyright (C) 2015 echinopsii
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as
// published by the Free Software Foundation, either version 3 of the
// License, or (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

var input
var txt = "base"
/*var myajax = function(uri, method, data) {
    var request = {
        url: uri,
        type: method,
        contentType: "application/json",
        accepts: "application/json",
        cache: false,
        dataType: 'json',
        data: JSON.stringify(data),
        beforeSend: function (xhr) {
            xhr.setRequestHeader("Authorization",
                "Basic " + btoa(self.username + ":" + self.password));
        },
        error: function (jqXHR) {
            console.log("ajax error " + jqXHR.status);
        }
    };
    return $.ajax(request);
}*/

$(document).ready(function() {
    /* URLs:
     localhost: http://127.0.0.1:5000/
     DB Manipulation: db/
     Import:     import/<file>
     Export:     export/<file>
     Get:        <node>/<properties>
     Update:     <node>/<properties>
     Delete:     <node>
     (Add:       <node>/<properties>) (dependencies)
     File Generattion: filegen/
     <generation>/<version>/<mod_plug>
     */

    $("#btntest").click(function () {
        input = {name: $("#name").val(), version: $("#version").val()}
        $.get(
            "http://127.0.0.1:5000/rest/distrib/0.6.4-SNAPSHOT",
            function (data) {
                $("#response").text(data.distrib.name+", "+data.distrib.version+", "+data.distrib.nID)
            }
        );
    });

    $("#btnHelloWorld").click(function () {
        $.ajax({
            url: "http://127.0.0.1:5000/helloworld",
            type: 'GET',
            contentType: "application/json",
            accepts: "application/json",
            dataType: 'json',
            success: function(data) {
                txt = data.msg
                $("#hwdiv").text(txt)
            }
        }).done(function(data){
            txt = data.msg
            $("#hwdiv").text(txt)
        });
        $.get(
            "http://127.0.0.1:5000/helloworld",
            {},
            function (data) {
                txt = data.msg
                console.log(txt)
                $("#hwdiv").text(txt)
            });
    });

});

/*
$.ajax({
    url: '/script.cgi',
    type: 'PUT',
    success: function(result) {
        // Do something with the result
    }
});
*/
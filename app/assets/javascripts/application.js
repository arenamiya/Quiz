// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require turbolinks
//= require_tree .

let results = []
let dates = []
const ref = getCookie('results')
const ref2 = getCookie('dates')
if(ref != '') results = JSON.parse(ref)
if(ref2 != '') dates = JSON.parse(ref)
document.cookie = "results=" + JSON.stringify(results)
document.cookie = "dates=" + JSON.stringify(dates)

const date = new Date();

function getCookie(cookieName) {

    var name = cookieName + '='
    var decodedCookie = decodeURIComponent(document.cookie);
    var ca = decodedCookie.split(';')

    for(var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ') {
            c = c.substring(1)
        }
        if (c.indexOf(name) == 0) {
            return c.substring(name.length, c.length)
        }
    }

    return ''
}

function history(result, length) {

    d = date.getDate()
    item = result + "/" + length

    if(results.length >= 5) {
        results.shift()
        results.push(item)
        dates.shift()
        dates.push(d)
    } else {
        items.push(item)
        dates.push(d)
    }
    document.cookie = "results=" + JSON.stringify(results)  + ";path=/"
    document.cookie = "dates=" + JSON.stringify(dates)  + ";path=/"

}
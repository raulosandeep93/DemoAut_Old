function alertBox() {
    alert("Hello!!! Welcome to http://www.demoaut.in/Alert.aspx");
}

function confirmationBox() {
    var txt;
    var r = confirm("Can i have your BFF's number?");
    if (r == true) {
        txt = "I was just joking i'm already having your BFF's number.";
    } else {
        txt = "It's so sad that you don't want to share your BFF's number with me. :(";
    }
    document.getElementById("lblConfirmation").innerHTML = txt;
}

function promptBox() {
    var person = prompt("Enter your BFF's name.", "");

    if (person != null & person.length > 0) {
        document.getElementById("lblPrompt").innerHTML = "Yo!!! " + person + " is very lucky.";
    } else if (person.length <= 0) {
        document.getElementById("lblPrompt").innerHTML = "Please enter your BFF's name. The field cannot be blank.";
    }
}

function MultipleTabs() {
    window.open("http://www.google.com", '_blank');
    window.open("http://www.yahoo.in", "_blank");
    window.open("http://www.bing.com", "_blank");
}

(function ($) {

    'use strict';

    $(document).on('show.bs.tab', '.nav-tabs-responsive [data-toggle="tab"]', function (e) {
        var $target = $(e.target);
        var $tabs = $target.closest('.nav-tabs-responsive');
        var $current = $target.closest('li');
        var $parent = $current.closest('li.dropdown');
        $current = $parent.length > 0 ? $parent : $current;
        var $next = $current.next();
        var $prev = $current.prev();
        var updateDropdownMenu = function ($el, position) {
            $el
      	.find('.dropdown-menu')
        .removeClass('pull-xs-left pull-xs-center pull-xs-right')
      	.addClass('pull-xs-' + position);
        };

        $tabs.find('>li').removeClass('next prev');
        $prev.addClass('prev');
        $next.addClass('next');

        updateDropdownMenu($prev, 'left');
        updateDropdownMenu($current, 'center');
        updateDropdownMenu($next, 'right');
    });

})(jQuery);
---
layout: post_redirect
title: SRCCON Sessions
background: session
logo: srcconwhite.png
---

<p class="bodybig">Pitched by the community, sessions are the lifeblood of SRCCON. We will publish the final schedule on 7/17.  The list of accepted sessions is below. For more details about SRCCON and a sketch of the schedule, check out the <a href="/logistics">logistics</a> page.</p>

<div id="togglebuttons">
    <div id="show">open all</div>
    <div id="hide">close all</div>
</div>

<div id="proposals">
    <!-- Paste the markdowned tables here -->
</div>


<script type="text/javascript" src="/media/js/tabletop.js"></script>
<script type="text/javascript">

if (window.location.href.indexOf('http://www.srccon.org/schedule') === 0) {
  window.location.href = 'http://schedule.srccon.org';
}


// spinner
$('<div id="preload"></div>').html('<h3><img src="/media/img/ajax-loader.gif" alt="loading data" /> Processing Sessions</h3>').prependTo($('#proposals'));

window.onload = function() { init() };

function init() {
    // use tabletop.js to get latest submissions
    var public_spreadshseet_url = 'https://docs.google.com/spreadsheets/d/1_YQAy2uBtsLLXrLqW5uIrmoUy5mtnFWqDmxl64m9AXE/pubhtml',
        tabletop = Tabletop.init({
            key: public_spreadshseet_url,
            callback: showInfo
        });

    function showInfo() {
        var hack_li,
            suffix,
            twitterLinks;

        // remove spinner
        $('#preload').hide();

        // create list items from each record from spreadsheet
        $.each(tabletop.sheets("Sheet1").all(), function(i, proposal) {
            twitterLinks = formatTwitterLinks(proposal.twitterhandles);

            hack_li = '<li>';
            // session title
            hack_li += '<h4 class="title subjectline" id="p'+ proposal.id +'"><img src="/media/img/triangle.png">' + formatPrettyText(proposal.sessiontitle) + '<span class="proposalauthor"> | ' + proposal.responseidentifier + '</span></h4>';
            // session details
            hack_li += '<div class="detailbox">';
            // session description
            hack_li += '<p class="description">' + formatMultiline(formatPrettyText(proposal.shortdescription)) + '</p>';
            // session who this is for
            hack_li += '<p><b>Who is this session for?</b> ' + formatPrettyText(proposal.whoisthissessionfor) + '</p>';
            // session leader twitter links
            hack_li += '<p>';
            if (twitterLinks.length) {
                suffix = (twitterLinks.length > 1) ? 's' : '';
                hack_li += '<b>Session leader'+suffix+' on Twitter:</b> ' + twitterLinks.join(', ') + ' | ';
            }
            // session permalink
            hack_li += '<span class="permalink"><a href="#p'+ proposal.id +'">permalink for this proposal</a></span></p>';
            hack_li += '</div></li>';

            $(hack_li).appendTo("#proposals");
        });

        // if page loaded from permalink, automatically expand
        // record's details and scroll down the page to it
        if (window.location.hash) {
            var hash = window.location.hash.substring(1),
                $target = $('#'+hash);

            $('html, body').animate({
              scrollTop: $($target).offset().top-100
            }, 200);

            $target.next().show();
            $target.find('img').toggleClass('flipup');
        }

        // let people open/close all records at once
        $('#togglebuttons').show();
    }
}

// utilities for formatting proposal text
var newlines = new RegExp('\\n', 'g');
var formatMultiline = function(str) {
    return str.replace(newlines,'<br>');
}
var formatPrettyText = function(str) {
    return str
        /* opening singles */
        .replace(/(^|[-\u2014\s(\["])'/g, "$1\u2018")
        /* closing singles & apostrophes */
        .replace(/'/g, "\u2019")
        /* opening doubles */
        .replace(/(^|[-\u2014/\[(\u2018\s])"/g, "$1\u201c")
        /* closing doubles */
        .replace(/"/g, "\u201d")
        /* em-dashes */
        .replace(/--/g, "\u2014");
}
var formatTwitterLinks = function(handles) {
    var twitterLinks = [];

    if (handles) {
        var handleList = handles.split(','),
            cleanHandle;

        $.each(handleList, function(i, handle) {
            cleanHandle = $.trim(handle).replace('@','');
            twitterLinks.push('<a href="https://twitter.com/'+cleanHandle+'">@'+cleanHandle+'</a>');
        })
    }

    return twitterLinks;
}

// add click listeners for elements that may not exist yet
$('.article_body').on('click', '.subjectline', function() {
    var d = $(this).next();
    d.slideToggle('fast');
    $("img", this).toggleClass('flipup');
});
$('.article_body').on('click', '#show', function() {
    $('.detailbox').slideDown('fast');
    $('#show').hide();
    $('#hide').show();
    $('.subjectline img').addClass('flipup');
});
$('.article_body').on('click', '#hide', function() {
    $('.detailbox').slideUp('fast');
    $('#show').show();
    $('#hide').hide();
    $('.subjectline img').removeClass('flipup');
});
</script>

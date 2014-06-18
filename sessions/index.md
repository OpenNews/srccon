---
layout: post
title: SRCCON Sessions
background: session
logo: srcconwhite.png
---

<p class="bodybig">The following sessions have been accepted to SRCCON, and we thank all who proposed sessions. The session descriptions will continue to evolve in few weeks leading up to SRCCON, and the final schedule will reflect updates as sessions take shape. We&rsquo;ve held a few schedule slots open for impromptu sessions, hacking, and skillshares, and we&rsquo;re planning an evening slate of fun, informal talks and discussions.</p>

<div id="togglebuttons">
    <div id="show">open all</div>
    <div id="hide">close all</div>
</div>

<div id="proposals">
    <!-- Paste the markdowned tables here -->
</div>

###GETTING TO SRCCON

We have a [logistics page](/logistics) with lots of helpful information about getting around Philadelphia. If you&rsquo;re looking for a hotel room, you have until June 23 [to reserve a room](http://www.wyndham.com/groupevents2014/47153_KNIGHTMOZILLA/main.wnt) at the SRCCON discount rate.

<script type="text/javascript" src="/media/js/tabletop.js"></script>
<script type="text/javascript">
// spinner
$('<div id="preload"></div>').html('<h3><img src="/media/img/ajax-loader.gif" alt="loading data" /> Processing Latest Proposals</h3>').prependTo($('#proposals'));

window.onload = function() { init() };

function init() {
    // use tabletop.js to get latest submissions
    var public_spreadshseet_url = 'https://docs.google.com/spreadsheets/d/1_YQAy2uBtsLLXrLqW5uIrmoUy5mtnFWqDmxl64m9AXE/pubhtml',
        tabletop = Tabletop.init({
            key: public_spreadshseet_url,
            callback: showInfo
        });

    function showInfo() {
        // remove spinner
        $('#preload').hide();

        // create list items from each record from spreadsheet
        $.each(tabletop.sheets("Sheet1").all(), function(i, proposal) {
            var hack_li = $('<li><h4 class="title subjectline" id="p'+ proposal.id +'"><img src="/media/img/triangle.png">' + proposal.sessiontitle + '<span class="proposalauthor"> | proposed by ' + proposal.responseidentifier + '</span></h4><div class="detailbox"><p class="description">' + formatMultiline(proposal.shortdescription) + '</p><p><b>Who is this session for?</b> ' + proposal.whoisthissessionfor + '</p><p><span class="permalink"><a href="#p'+ proposal.id +'">permalink</a> for this proposal</span></div></li>');
            hack_li.appendTo("#proposals");
            //console.log(proposal);
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

// utility for maintaining linebreaks in submssions
var newlines = new RegExp("\\n", "g");
var formatMultiline = function(str) {
    return str.replace(newlines,"<br>");
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

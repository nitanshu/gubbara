// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function hide_notice_panel(){
    if ($('.notices .notice_panel').length == 0) {
        $('.notices').hide();
    }
}
$(document).ready(function () {
  $('.new_donation :checkbox').on('click', function (e) {
    $('.new_donation :checkbox').not(this).attr('checked', false);
  })
});

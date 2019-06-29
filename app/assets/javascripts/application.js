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
//= require activestorage
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require dataTables/jquery.dataTables
//= require notify

$(document).ready(function() {
	$('#t-exams').DataTable({
		aaSorting: [ [ 0, 'desc' ] ]
	});

	$('#t-types-exams').DataTable({
		aaSorting: [ [ 0, 'asc' ] ]
	});

	$('#t-patient-exams-edit').DataTable({
		aaSorting: [ [ 0, 'asc' ] ]
	});

	$('#t-points').DataTable({
		aaSorting: [ [ 0, 'desc' ] ]
	});

	$('#t-patients').DataTable({
		aaSorting: [ [ 0, 'asc' ] ]
	});

	$('input, textarea, select').focus(function() {
		if ($(this).attr('required') && $(this).val() == '') {
			$(this).css('border-color', 'red');
			if ($(this).next('p').is(':hidden')) {
				$(this).next('p').toggle('slow');
			}
		}
	});

	$('input, textarea, select').focusout(function() {
		if ($(this).attr('required') && $(this).val() != '') {
			$(this).css('border-color', 'green');
			if ($(this).next('p').is(':visible')) {
				$(this).next('p').toggle('slow');
			}
		}

		if ($(this).attr('required') && $(this).val() == '') {
			$(this).css('border-color', 'red');
			if ($(this).next('p').is(':hidden')) {
				$(this).next('p').toggle('slow');
			}
		}
	});

	$('.allow_text').bind('keypress keyup blur', function() {
		var node = $(this);
		node.val(node.val().replace(/[^A-Za-z_\s]/, ''));
	});

	$('.allow_decimal').on('keypress keyup blur', function(event) {
		$(this).val($(this).val().replace(/[^0-9\.]/g, ''));

		if ((event.which != 46 || $(this).val().indexOf('.') != -1) && (event.which < 48 || event.which > 57)) {
			event.preventDefault();
		}
	});

	$('.allow_numeric').on('keypress keyup blur', function(event) {
		$(this).val($(this).val().replace(/[^\d].+/, ''));

		if (event.which < 48 || event.which > 57) {
			event.preventDefault();
		}
	});
});

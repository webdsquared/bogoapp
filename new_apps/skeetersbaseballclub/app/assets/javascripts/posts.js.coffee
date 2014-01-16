# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$('#datepicker').datepicker
		format: "yyyy-mm-dd"
		todayHighlight: true
		todayBtn: 'linked'
		autoclose: true

	$('#datepicker1').datepicker
		format: "yyyy-mm-dd"
		todayHighlight: true
		todayBtn: 'linked'
		autoclose: true

	$('#datepicker2').datepicker
		format: "yyyy-mm-dd"
		todayHighlight: true
		todayBtn: 'linked'
		autoclose: true

$(document).ready(ready)
$(document).on('page:load', ready)
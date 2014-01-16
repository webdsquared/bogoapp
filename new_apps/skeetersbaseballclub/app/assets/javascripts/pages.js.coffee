# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$("#team_news a").click (e) ->
		e.preventDefault()
		$(this).tab "show"

	$('.carousel').carousel()

	$(window).load ->

	$(".send-invite-form").hide()

	$("#send-invite-button").click (e) ->
		e.preventDefault()
		$(this).hide()
		$(".send-invite-form").show()

	$("#cancel-invite-btn").click (e) ->
		e.preventDefault()
		$(".send-invite-form").hide()
		$("#send-invite-button").show()

	#resize = ->
  #	heights = window.innerHeight
  #	document.getElementById("portal-wrap").style.height = heights + "px"
	#resize()
	#window.onresize = ->
  #	resize()


  $("#myTabs a").click (e) ->
  	e.preventDefault
  	$(this).tab('show')
  

$(document).ready(ready)
$(document).on('page:load', ready)
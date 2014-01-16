# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
	$(".add-game-container").hide()
	
	$(".add-practice-container").hide()
	
	$("#open-game-form").click (e) ->
		e.preventDefault()
		$(".event-container").hide()
		$(".add-game-container").show()

	$("#cancel-game-btn").click (e) ->
		e.preventDefault()
		$('.add-game-container').hide()
		$('.event-container').show()

	$("#cancel-game-btn-btm").click (e) ->
		e.preventDefault()
		$('.add-game-container').hide()
		$('.event-container').show()
	
	$("#open-practice-form").click (e) ->
		e.preventDefault()
		$(".event-container").hide()
		$(".add-practice-container").show()


	$("#cancel-practice-btn").click (e) ->
		e.preventDefault()
		$('.add-practice-container').hide()
		$('.event-container').show()

	$("#cancel-practice-btn-btm").click (e) ->
		e.preventDefault()
		$('.add-practice-container').hide()
		$('.event-container').show()


	$(".new-post-form").hide()
	
	$("#new-post-drop").click (e) ->
		e.preventDefault()
		$(".new-post-form").slideToggle("fast")

	$("#cancel-post-btn").click (e) ->
		e.preventDefault()
		$(".new-post-form").slideUp("fast")
		$("#new-post-f").trigger("reset")



	$('.create-profile-form').hide()
	
	$('#profile-form-trigger').click (e) ->
		e.preventDefault()
		$('.create-profile-form').slideToggle("fast")



	

$(document).ready(ready)
$(document).on('page:load', ready)
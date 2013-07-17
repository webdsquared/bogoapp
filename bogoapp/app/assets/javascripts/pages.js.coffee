# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $(".add-list").hide()
  $("#add-list-link").click ->
  	$(".add-list").slideDown()

  $(".add-link-container").hide()
  $("#add-link").click ->
  	$(".add-link-container").slideDown()

  $(".transaction-form-container").hide()
  $("#add-transaction-link").click -> 
  	$("#add-transaction-link").hide()
  	$(".transaction-form-container").show()

  $("#close-add-link").click ->
  	$(".add-link-container").slideUp()
  $("#close-add-list").click ->
  	$(".add-list").slideUp()

  $("#noteContent").each ->
  	length = $(this).val().length
  	$(".counter").html((140 - length))
  	$(this).keyup ->
  		new_length = $(this).val().length
  		$(".counter").html((140 - new_length))

  $(".note-btn").hide()		
  $("#txtComment").focus ->
  	$(this).attr "rows", "5"
  	$(".note-btn").show()

  $("#noteContent").keyup ->
    if $(this).val() is ""
      $(".enableOnInput").prop "disabled", true
    else
      $(".enableOnInput").prop "disabled", false

  $("#noteContent").keyup ->
    if $(this).val().length > 140
      $(".enableOnInput").prop "disabled", true
    else
      $(".enableOnInput").prop "disabled", false

  


  $("#txtComment").blur ->
  	if $(this).val().length == 0
	  	$(this).attr('rows', '1')
	  	$(".note-btn").hide()

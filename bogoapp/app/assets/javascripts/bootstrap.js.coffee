jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  $("#datepicker").datepicker({
  	format: 'dd-mm-yyyy'
  	autoclose: true
  })
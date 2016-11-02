// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$( document ).on('turbolinks:load', function() {
  $('.show-link').on('ajax:success', function(event, response){
  	console.log(response)
  	console.log(response[0])
  	$('.toy-list').append(response)
  })

})
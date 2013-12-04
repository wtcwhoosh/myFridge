# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#fridge_ingredient_ingredient_name').autocomplete
    source: $('#fridge_ingredient_ingredient_name').data('autocomplete-source')
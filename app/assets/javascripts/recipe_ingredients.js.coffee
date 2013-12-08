# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
remove_fields = (link) ->
  $(link).previous("input[type=hidden]").value = "1"
  $(link).up(".fields").hide()

jQuery ->
  $('#recipe_ingredient_ingredient_name').autocomplete
    source: $('#recipe_ingredient_ingredient_name').data('autocomplete-source')


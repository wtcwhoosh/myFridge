# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ingredient_jelly = Ingredient.create(:name => "jelly", :description => "test")
r10 = Recipe.create :name => "mmtest", :user_id => 1, :type_id => 1, :instruction => "test"

r10.ingredients.push ingredient_jelly
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def add_sub_category(category, list)
  list.each do |name|
    SubCategory.create(category_id: category.id, sub_category_name: name)
  end
end

category = Category.create(category_name: 'Imóveis')
  sub_category_list = ['Casas', 'Apartamentos', 'Kitnets', 'Lofts']
  add_sub_category(category, sub_category_list)

category = Category.create(category_name: 'Veículos')
  sub_category_list = ['Carros', 'Motos']
  add_sub_category(category, sub_category_list)

category = Category.create(category_name: 'Animais')
  sub_category_list = ['Cães', 'Gatos', 'Pássaros']
  add_sub_category(category, sub_category_list)

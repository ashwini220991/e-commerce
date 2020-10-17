# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cd=Category.create(name:"Book").id
Product.create(name:"Insight", description:"Nominated as one of the 2019 Thinkers 50 Radar group",price:318.60, category_id: cd.id)
Product.create(name:"Ranges", description:"The instanct Sunday Times Top ten",price:344.90, category_id: cd.id)

cd1=Category.create(name:"Kitchen").id
Product.create(name:"spoon", description:"Nominated as one of the 2019 Thinkers 50 Radar group",price:365.60, category_id: cd1.id)
Product.create(name:"Plates", description:"The instanct Sunday Times Top ten",price:3440.90, category_id: cd1.id)


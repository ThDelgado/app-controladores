Category.create(name: "Smartphones")
Category.create(name: "Shoes")
Category.create(name: "Accesories")


#db/seeds.rb

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed|
load seed }
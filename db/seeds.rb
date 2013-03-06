# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

Product.destroy_all

Product.create(:name => 'Gibson Les Paul', :description => 'Classic rock guitar', :price => '1000.99', :weight => 4, :colour => 'black', :category => 'Guitars')
Product.create(:name => 'Fender Bass', :description => 'Mid-range Bass Guitar', :price => '599.00', :weight => 5, :colour => 'sunburst', :category => 'Guitars')
Product.create(:name => 'Shure X1211', :description => 'Nice microphone', :price => '150.00', :weight => 1, :colour => 'grey', :category => 'Microphone')
Product.create(:name => 'Pearl Drum Kit', :description => 'Great starter kit', :price => '999.99', :weight => 15, :colour => 'black and white', :category => 'Drums')
Product.create(:name => 'Dunlop Plectrum', :description => 'Medium thick plectrum', :price => '0.50', :weight => 0, :colour => 'orange', :category => 'Guitar Accessories')
Product.create(:name => 'Kwai Electric Piano', :description => 'The best ever.', :price => '2500.00', :weight => 200, :colour => 'black', :category => 'Piano')
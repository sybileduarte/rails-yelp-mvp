# db/seeds.rb
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '0146582589',
    category:     'chinese'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '0146582589',
    category:      'italian'

  },
  {
    name:         'Big Fernand',
    address:      'Rue du Marechal Delattre de Tassigny',
    phone_number: '0158934966',
    category:     'french'
  },
  {
    name:         'La Famille',
    address:      '10 Rue de Lille',
    phone_number: '01584924966',
    category:     'french'
  },
  {
    name:         'So Good',
    address:      '16 Rue de Bethune',
    phone_number: '01274934966',
    category:     'french'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

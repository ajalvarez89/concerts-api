
puts '== Installing Seeds =='
# add concerts
puts '***** Creating Concerts *****'
Concert.create(name: 'Lolapalooza', band: 'U2', city: 'Amsterdan')
Concert.create(name: 'Lolapalooza', band: 'Armin Van BUuren', city: 'Berlin')
Concert.create(name: 'Rock al parque', band: 'Sistema Solar', city: 'Bogota')
Concert.create(name: 'Rock al parque', band: 'Cultura Profetica', city: 'Bogota')
Concert.create(name: 'Coachela', band: 'Metallica', city: 'Paris')
Concert.create(name: 'Coachela', band: 'AC/DC', city: 'Madrid')

registered = Rol.create(name: "registered")
unregistered = Rol.create(name: "unregistered")

puts '***** Creating User Registred *****'
User.create(email: "alvaro@test.com", password: "123456", password_confirmation: "123456", rol: registered)

puts '***** Creating User Unregistered *****'
5.times do
    user = User.create(email: Faker::Internet.email, password: "123456", password_confirmation: '123456', rol: unregistered)
end

puts "#{User.count} users created"
puts "#{Rol.count} roles created"
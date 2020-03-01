
puts '== Installing Seeds =='
# add concerts
puts '***** Creating Concerts'
Concert.create(name: 'Lolapalooza', band: 'U2', city: 'Amsterdan')
Concert.create(name: 'Lolapalooza', band: 'Armin Van BUuren', city: 'Berlin')
Concert.create(name: 'Rock al parque', band: 'Sistema Solar', city: 'Bogota')
Concert.create(name: 'Rock al parque', band: 'Cultura Profetica', city: 'Bogota')
Concert.create(name: 'Coachela', band: 'Metallica', city: 'Paris')
Concert.create(name: 'Coachela', band: 'AC/DC', city: 'Madrid')

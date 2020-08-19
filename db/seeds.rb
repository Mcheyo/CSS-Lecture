# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Trainer.destroy_all 
Pokemon.destroy_all 

pokemons = [
    {name: "Picakhu", image: "https://cdn.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/1200px-025Pikachu.png"},
    {name: "Evee", image: "https://cdn.bulbagarden.net/upload/thumb/e/e2/133Eevee.png/1200px-133Eevee.png"},
    {name: "Squirtile", image: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/007.png"},
    {name: "Charmander", image: "https://www.pokegoking.com/wp-content/uploads/Charmander-265x300.png"}
]

trainers = [ 
    {name: "Ash Ketchum", image: "https://cdn.bulbagarden.net/upload/thumb/3/3a/Ash_OS_2.png/160px-Ash_OS_2.png", badges: 7},
    {name: "Gary Oak", image: "https://vignette.wikia.nocookie.net/p__/images/a/a4/Gary_OS_anime.png/revision/latest/top-crop/width/360/height/450?cb=20200302033315&path-prefix=protagonist", badges: 8 },
    {name: "Misty", image: "https://static.miraheze.org/toxicfandomsandhatedomswiki/thumb/2/2a/Misty.jpeg/300px-Misty.jpeg", badges: 6}
]


pokemons.each do |pokemon|
    Pokemon.create(pokemon)
end 

trainers.each do |trainer|
    Trainer.create(trainer)
end 
# frozen_string_literal: true

types = JSON.parse(File.read('public/types.json'))
pokemon = JSON.parse(File.read('public/pokedex.json'))

types.each do |type|
  if Type.find_or_create_by(name: type['english'])
  end
end

pokemon.each do |pokemon|
    #Creo pokemons
    poke = Pokemon.find_or_create_by(
        name: pokemon['name']['english'],
        poke_id: pokemon['id'] 
    )
    #Asignamos tipos
    pokemon['type'].each do |type|
        poke.types << Type.find_by(name: type)
    end
    #Assignamos base values
    poke.base = Base.create(
        hp: pokemon['base']['HP'], 
        attack: pokemon['base']['Attack'], 
        defense: pokemon['base']['Defense'], 
        sp_attack: pokemon['base']['Sp. Attack'], 
        sp_defense:pokemon['base']['Sp. Defense'] , 
        speed:pokemon['base']['Speed']
        )
    poke.save
end
# pokemon.each do |restaurant|
#   Restaurant.create(restaurant.to_h)
# end

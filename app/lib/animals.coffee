FilteringSet = require '../models/filtering_set'
Animal = require '../models/animal'
translate = require 't7e'


#Chicago values
values = [
  'likeCatDog','likeRodent','likeManMade','likeOther',
  'coatTanYellow','coatRedBrown','coatBrownBlack','coatGrayBlack','coatMottled','coatSolid','coatOrTailStriped',
  'tailBushy','tailSmooth','tailLong',
  'buildStocky','buildLanky','buildSmall','buildLowSlung',
]

#Chicago Characteristics
# The order of characteristics is derived from the list of values.
characteristics = ['like', 'coat','tail', 'build']

#Chicago animal  characteristics
animalCharacteristics = [
  {amphibiansAndReptiles:   [0,1,0,1,0,1,1,0,0,0,0,0,0,1,1,0,0,1]}
  {badgerAmerican:          [0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
  {bearBlack:               [0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
  {beaverAmerican:          [1,0,0,0,1,1,1,1,1,1,1,1,0,1,1,0,0,0]}
  {birds:                   [0,1,0,0,1,1,0,0,0,0,1,0,1,1,0,0,1,1]}
  {bobcat:                  [1,0,0,0,1,0,1,1,1,0,0,1,0,1,0,1,0,0]}
  {catDomestic:             [0,0,0,1,1,0,0,0,0,1,0,1,0,0,0,1,0,0]}
  {chimpmunksAndSquirrels:  [1,0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,0,0]}
  {cottontailEastern:       [1,0,0,0,0,0,0,1,1,0,0,1,0,1,0,0,0,0]}
  {cougar:                  [1,0,0,0,0,1,0,0,1,0,0,1,0,1,0,0,0,0]}
  {coyote:                  [0,0,0,1,0,0,0,0,0,1,0,0,0,1,0,1,0,0]}
  {craneSandhill:           [0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
  {craneWhooping:           [0,0,0,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0]}
  {deerWhiteTailed:         [0,0,0,0,0,1,1,0,0,1,0,0,1,1,0,0,1,1]}
  {dogDomestic:             [0,1,0,0,1,0,0,1,0,1,0,0,1,1,0,0,1,1]}
  {elk:                     [0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
  {fisher:                  [0,1,0,0,0,1,1,0,0,1,0,0,1,1,1,0,1,1]}
  {foxGray:                 [0,1,0,0,1,0,0,1,1,0,0,0,1,1,0,0,0,1]}
  {foxRed:                  [0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}
  {grouse:                  [0,0,0,1,1,0,0,0,1,0,0,0,0,0,0,0,1,1]}
  {hareSnowshoe:            [0,0,0,1,0,0,1,1,1,0,1,1,0,1,0,0,0,1]}
  {human:                   [0,1,0,0,0,0,0,1,0,1,0,0,1,1,0,0,1,1]}
  {jackrabbitWhiteTailed:   [0,0,0,1,0,0,1,0,0,1,1,1,0,1,0,0,0,1]}
  {lynxCanada:              [0,1,0,0,1,0,0,1,0,0,0,0,1,1,0,0,1,1]}
  {martenAmerican:          [0,1,0,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0]}
  {minkAmerican:            [0,1,0,0,1,0,0,1,1,0,0,1,0,1,0,0,1,0]}
  {moose:                   [0,1,0,0,0,0,0,1,0,1,0,1,0,1,0,0,1,0]}
  {muskrat:                 [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {opposumVirginia:         [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {otherDomestic:           [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {otter:                   [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {pheasentRingNecked:      [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {pigFeral:                [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {porcupineNorthAmerican:  [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {racoonNorthern:          [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {skunkStriped:            [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {spottedSkunkEastern:     [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {turkeyWild:              [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {weasel:                  [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {wolfGray:                [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {wolverine:               [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}
  {woodchuck:               [0,1,0,0,0,1,1,0,0,1,0,0,0,0,1,0,0,1]}


]


dashedFromId = (id) ->
  id.replace /[A-Z]/g, (cap) -> "-#{cap.toLowerCase()}"

# imagesFromId = (id) -> [
#     "images/animals/#{dashedFromId id}-1.jpg"
#     "images/animals/#{dashedFromId id}-2.jpg"
#     "images/animals/#{dashedFromId id}-3.jpg"
#   ]

imagesFromId = (id) -> [
    "http://placehold.it/350x150&text=#{dashedFromId id}"
    "http://placehold.it/350x150&text=#{dashedFromId id}"
    "http://placehold.it/350x150&text=#{dashedFromId id}"
  ]  

animals = new FilteringSet
  searchProperties: ['label', 'description']
  items: for item in animalCharacteristics
    for id, grid of item
      animal = new Animal
        id: id
        label: translate('span', "animals.#{id}.label")
        description: translate('span', "animals.#{id}.description")
        images: imagesFromId id

      for char in characteristics
        animal[char] = (value for value, i in values when value[0...char.length] is char and grid[i] is 1)
        animal[char] = animal[char][0] if animal[char].length is 1
        delete animal[char] if animal[char].length is 0

      animal.save()
    animal

module.exports = animals

FilteringSet = require '../models/filtering_set'
Animal = require '../models/animal'
translate = require 't7e'
animalCounts = require '../lib/animal_counts'

values = [
  'likeCatDog','likeAntelopeDeer','likeRabbit','likeBird','likeWeasel','likeRodent','likeOther',
  'coatTanBrown','coatRed','coatWhite','coatGrayBlack','coatSolid','coatBandsOrStripes','coatSpots',
  'tailBushy','tailSmooth','tailLong','tailShort',
  'buildStocky','buildTall','buildLanky','buildSmall','buildLowSlung'
]
 
characteristics = ['like', 'coat','tail', 'build']

animalCharacteristics = [
  {amphibiansAndReptiles:		[0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,1,1,0,0,0,1,1]}
  {badgerAmerican:		[0,0,0,0,1,0,0,1,0,1,1,1,1,0,1,0,0,1,0,0,0,1,1]}
  {bearBlack:			[0,0,0,0,0,0,1,1,0,0,1,1,0,0,1,0,0,1,1,1,0,0,0]}
  {beaverAmerican:		[0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,0,1,1]}
  {birds:				[0,0,0,1,0,0,0,1,1,1,1,1,1,1,0,0,1,1,0,1,0,1,0]}
  {bobcat:			[1,0,0,0,0,0,0,1,1,0,1,1,1,1,1,0,0,1,0,0,1,1,0]}
  {catDomestic:			[1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,1,0,0,0,1,1,0]}
  {chipmunksAndSquirrels:		[0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,0,1,0,0,0,0,1,1]}
  {cottontailEastern:		[0,0,1,0,0,0,0,1,0,1,1,1,0,0,1,0,0,1,0,0,0,1,1]}
  {cougar:			[1,0,0,0,0,0,0,1,0,0,0,1,0,1,0,1,1,0,0,1,1,0,0]}
  {coyote:			[1,0,0,0,0,0,0,1,0,1,1,1,0,0,1,0,1,0,0,0,1,1,0]}
  {craneSandhill:			[0,0,0,1,0,0,0,1,1,0,1,1,1,0,0,0,1,0,0,1,1,0,0]}
  {craneWhooping:			[0,0,0,1,0,0,0,1,1,1,1,1,1,0,0,0,1,0,0,1,1,0,0]}
  {deerWhiteTailed:		[0,1,0,0,0,0,0,1,1,0,1,1,0,1,1,0,0,1,0,1,1,0,0]}
  {dogDomestic:			[1,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}
  {elk:				[0,1,0,0,0,0,0,1,0,0,0,1,0,1,1,0,0,1,1,1,1,0,0]}
  {fisher:			[0,0,0,0,1,0,0,1,0,0,1,1,0,0,1,0,1,0,0,0,0,1,1]}
  {foxGray:			[1,0,0,0,0,0,0,0,1,1,1,1,1,0,1,0,1,0,0,0,1,1,0]}
  {foxRed:			[1,0,0,0,0,0,0,1,1,0,0,1,0,0,1,0,1,0,0,0,1,1,0]}
  {grouse:			[0,0,0,1,0,0,0,1,0,1,1,1,1,0,0,0,1,0,0,0,0,1,0]}
  {hareSnowshoe:			[0,0,1,0,0,0,0,1,1,1,0,1,0,0,1,0,0,1,0,0,0,1,1]}
  {human:				[0,0,0,0,0,0,1,1,1,1,1,1,1,1,0,0,0,0,0,1,1,0,0]}
  {jackrabbitWhiteTailed:		[0,0,1,0,0,0,0,1,0,1,1,1,0,0,1,0,0,1,0,0,0,1,1]}
  {lynxCanada:			[1,0,0,0,0,0,0,1,0,0,1,1,1,1,1,0,0,1,0,0,1,1,0]}
  {martenAmerican:		[0,0,0,0,1,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,0,1,1]}
  {minkAmerican:			[0,0,0,0,1,0,0,1,0,0,0,1,0,0,1,0,1,0,0,0,0,1,1]}
  {moose:				[0,1,0,0,0,0,0,1,1,0,1,1,0,0,1,0,0,1,1,1,0,0,0]}
  {muskrat:			[0,0,0,0,0,1,1,1,0,0,0,1,0,0,0,1,1,0,0,0,0,1,1]}
  {opossumVirginia:		[0,0,0,0,0,1,1,0,0,1,1,1,0,0,0,1,1,0,0,0,0,1,1]}
  {otherDomestic:			[0,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]}
  {otter:				[0,0,0,0,1,0,1,1,0,0,0,1,0,0,0,1,1,0,0,0,0,1,1]}
  {pheasantRingNecked:		[0,0,0,1,0,0,0,1,1,1,1,1,1,1,0,0,1,0,0,0,0,1,0]}
  {pigFeral:			[0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,1,1,1,1,0,0,1,1]}
  {porcupineNorthAmerican:	[0,0,0,0,0,1,1,1,0,0,0,1,0,0,1,0,1,0,0,0,0,1,1]}
  {raccoonNorthern:		[0,0,0,0,0,0,1,1,0,1,1,1,1,0,1,0,1,0,0,0,0,1,1]}
  {skunkStriped:			[0,0,0,0,1,0,1,0,0,1,1,0,1,0,1,0,1,0,0,0,0,1,1]}
  {spottedSkunkEastern:		[0,0,0,0,1,0,1,0,0,1,1,0,1,0,1,0,1,0,0,0,0,1,1]}
  {turkeyWild:			[0,0,0,1,0,0,0,1,1,1,1,1,1,0,0,0,1,0,0,1,0,0,0]}
  {weasel:			[0,0,0,0,1,0,0,1,0,1,0,1,0,0,1,0,1,0,0,0,0,1,1]}
  {wolfGray:			[1,0,0,0,0,0,0,1,0,1,1,1,0,0,1,0,1,0,0,1,1,0,0]}
  {wolverine:			[0,0,0,0,1,0,1,1,0,0,1,0,1,0,1,0,1,0,0,0,0,1,1]}
  {woodchuck:			[0,0,0,0,0,1,0,1,0,0,1,1,0,0,1,0,1,0,0,0,0,1,1]}
]

dashedFromId = (id) ->
  id.replace /[A-Z]/g, (cap) -> "-#{cap.toLowerCase()}"

imagesFromId = (id) ->
  animalName = dashedFromId id
  animalCount = animalCounts[animalName]
  [0...animalCount].map (i) ->
    "images/animals/#{dashedFromId id}-#{i + 1}.jpg"

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

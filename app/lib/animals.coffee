FilteringSet = require '../models/filtering_set'
Animal = require '../models/animal'
translate = require 't7e'
animalCounts = require '../lib/animal_counts'



# The order of these values must match the order in the spreadsheet.
values = [
  'likeCatDog', 'likeCowHorse', 'likeAntelopeDeer', 'likePrimate', 'likeWeasel', 'likeBird', 'likeOther'
  'patternSolid', 'patternStripes', 'patternBands', 'patternSpots'
  'coatTanYellow', 'coatRed', 'coatBrown', 'coatWhite', 'coatGray', 'coatBlack'
  'hornsStraight', 'hornsCurved', 'hornsSpiral', 'hornsUshaped'
  'tailSmooth', 'tailBushy', 'tailTufted', 'tailLong', 'tailShort'
  'buildStocky', 'buildLanky', 'buildLarge', 'buildSmall', 'buildLowSlung'
]


# The order of characteristics is derived from the list of values.
characteristics = ['like', 'pattern', 'coat', 'horns', 'tail', 'build']


# The animal names and "grid" values are from the spreadsheet.
# Order matches the values. 1 means it describes that animal, 0 means it does not.
# If you want to re-label an animal, do it in the translation file.
animalCharacteristics = [
  {aardvark: [0,0,0,0,1,0,1,1,0,0,0,0,1,1,0,1,0,0,0,0,0,1,0,0,1,0,1,0,0,1,1]}
  {baboon: [1,0,0,1,0,0,1,1,0,0,0,1,0,1,0,1,0,0,0,0,0,1,0,0,1,0,0,1,0,1,0]}
  {birdOther: [0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,0,0,1,1,0,0,0,1,0]}
  {buffalo: [0,1,0,0,0,0,0,1,0,0,0,0,1,1,0,1,1,0,1,0,1,0,0,1,1,0,1,0,1,0,0]}
  {bushbuck: [0,0,1,0,0,0,0,0,1,0,1,1,1,1,1,0,0,1,1,0,0,0,1,0,0,1,0,1,1,0,0]}
  {bushpig: [0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,1,0,0,1,1]}
  {caracal: [1,0,0,0,0,0,0,1,0,0,0,1,1,1,1,0,0,0,0,0,0,1,0,0,1,0,0,1,1,0,0]}
  {civet: [1,0,0,0,1,0,0,0,1,1,1,1,0,1,1,1,1,0,0,0,0,1,1,0,1,1,0,0,0,1,1]}
  {crane: [0,0,0,0,0,1,0,1,0,0,0,1,0,0,1,1,1,0,0,0,0,1,0,0,1,0,0,1,0,0,0]}
  {duiker: [0,0,1,0,0,0,0,1,0,0,0,1,1,1,0,1,0,1,0,0,0,0,1,0,0,1,0,1,0,1,0]}
  {eland: [0,1,1,0,0,0,0,1,1,0,0,1,1,1,1,1,0,1,0,1,0,0,0,1,1,0,1,0,1,0,0]}
  {elephant: [0,1,0,0,0,0,1,1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1,0,1,0,0]}
  {genet: [1,0,0,0,1,0,0,0,1,1,1,0,0,1,0,1,1,0,0,0,0,1,1,0,1,0,0,0,0,1,1]}
  {groundHornbill: [0,0,0,0,0,1,0,1,0,0,0,0,1,0,1,0,1,0,0,0,0,1,0,0,0,0,1,0,0,1,0]}
  {hare: [0,0,0,0,0,0,1,1,0,0,0,1,0,1,1,1,0,0,0,0,0,0,1,0,0,1,0,0,0,1,1]}
  {hartebeest: [0,1,1,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,1,1,0,0,0,1,1,0,1,1,1,0,0]}
  {hippopotamus: [0,1,0,0,0,0,1,1,0,0,0,0,1,1,0,1,0,0,0,0,0,1,0,0,0,1,1,0,1,0,1]}
  {honeyBadger: [1,0,0,0,1,0,0,1,0,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,1,0,0,1,1]}
  {human: [0,0,0,1,0,0,1,1,0,0,0,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,1,1,1,1,0]}
  {hyena: [1,0,0,0,0,0,0,0,0,0,1,1,0,1,0,0,1,0,0,0,0,0,1,0,0,0,1,1,0,0,0]}
  {impala: [0,0,1,0,0,0,0,1,0,1,0,1,1,1,1,0,1,1,1,1,0,0,1,0,0,1,0,1,1,0,0]}
  {jackal: [1,0,0,0,0,0,0,1,0,1,0,1,1,1,1,1,1,0,0,0,0,0,1,0,1,0,0,1,0,1,0]}
  {kudu: [0,1,1,0,0,0,0,1,1,0,0,1,1,1,1,1,0,0,1,1,0,0,1,0,0,1,1,1,1,0,0]}
  {leopard: [1,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,1,0,0,0,0,1,0,0,1,0,1,1,1,0,0]}
  {lionCub: [1,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,0,1,0]}
  {lionFemale: [1,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0]}
  {lionMale: [1,0,0,0,0,0,0,1,0,0,0,1,1,1,0,0,0,0,0,0,0,0,0,1,1,0,1,1,1,0,0]}
  {mammalOther: [1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1]}
  {mongoose: [0,0,0,0,1,0,0,1,1,1,0,0,1,1,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,1]}
  {nyala: [0,0,1,0,0,0,0,1,1,0,1,0,1,1,1,1,0,0,1,1,0,0,1,0,0,1,1,1,1,0,0]}
  {oribi: [0,0,1,0,0,0,0,1,0,1,0,1,1,1,1,0,0,1,0,0,0,0,1,0,0,1,0,1,0,1,0]}
  {otter: [1,0,0,0,1,0,0,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,0,1,0,1,0,0,1,1]}
  {pangolin: [0,0,0,0,0,0,1,1,0,0,0,0,1,1,0,1,0,0,0,0,0,1,0,0,1,0,1,0,0,1,1]}
  {porcupine: [0,0,0,0,0,0,1,1,0,0,0,0,0,1,1,0,1,0,0,0,0,0,1,0,0,1,1,0,0,1,1]}
  {raptorOther: [0,0,0,0,0,1,0,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,0,0,1,1,0,0,0,1,0]}
  {reedbuck: [0,0,1,0,0,0,0,1,0,0,0,1,1,1,0,0,0,1,1,0,0,0,1,0,0,1,0,1,1,0,0]}
  {reptile: [0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,1,0,0,1,1,1,0,1,0,1]}
  {sableAntelope: [0,1,1,0,0,0,0,1,0,0,0,0,1,1,1,0,1,0,1,0,0,0,0,1,1,0,1,0,1,0,0]}
  {samangoMonkey: [0,0,0,1,0,0,1,1,0,0,0,0,0,1,1,1,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0]}
  {secretaryBird: [0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1,1,0,0,0,0,1,0,0,1,0,0,1,1,0,0]}
  {serval: [1,0,0,0,0,0,0,0,1,1,1,1,0,1,0,0,1,0,0,0,0,1,1,0,1,1,0,1,0,1,0]}
  {vervetMonkey: [0,0,0,1,0,0,1,1,0,0,0,0,0,1,0,1,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0]}
  {vulture: [0,0,0,0,0,1,0,1,0,0,0,1,0,1,1,1,1,0,0,0,0,1,0,0,0,0,0,0,0,1,0]}
  {warthog: [0,0,0,0,0,0,1,1,0,0,0,0,0,1,0,1,1,0,0,0,0,0,0,1,0,0,1,0,0,1,1]}
  {waterbuck: [0,1,1,0,0,0,0,1,0,0,0,0,0,1,0,1,0,1,1,0,0,0,0,1,1,0,1,0,1,0,0]}
  {weasel: [0,0,0,0,1,0,0,1,0,0,0,0,1,1,0,1,0,0,0,0,0,1,0,0,1,0,0,0,0,1,1]}
  {wildDog: [1,0,0,0,0,0,0,1,0,0,1,1,0,1,1,0,1,0,0,0,0,0,1,0,1,0,0,1,0,1,0]}
  {wildcat: [1,0,0,0,0,0,0,0,1,0,0,1,1,1,0,1,1,0,0,0,0,1,0,0,1,0,0,1,0,1,0]}
  {wildebeest: [0,1,1,0,0,0,0,1,0,0,0,0,1,1,0,1,1,0,1,0,1,0,0,1,1,0,1,1,1,0,0]}
  {zebra: [0,1,0,0,0,0,0,0,1,0,0,0,0,0,1,0,1,0,0,0,0,0,0,1,1,0,1,0,1,0,0]}
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

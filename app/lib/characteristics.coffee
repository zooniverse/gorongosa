Characteristic = require '../models/characteristic'
Value = Characteristic.Value
translate = require 't7e'

module.exports = [
  new Characteristic
    id: 'like'
    label: translate 'span', 'characteristics.like'
    values: [
      new Value id: 'likeCatdog', label: translate 'span', 'characteristicValues.likeCatdog'
      new Value id: 'likeCowhorse', label: translate 'span', 'characteristicValues.likeCowhorse'
      new Value id: 'likeAntelopedeer', label: translate 'span', 'characteristicValues.likeAntelopedeer'
      new Value id: 'likePrimate', label: translate 'span', 'characteristicValues.likePrimate'
      new Value id: 'likeWeasel', label: translate 'span', 'characteristicValues.likeWeasel'
      new Value id: 'likeBird', label: translate 'span', 'characteristicValues.likeBird'
      new Value id: 'likeOther', label: translate 'span', 'characteristicValues.likeOther'
    ]

  new Characteristic
    id: 'pattern'
    label: translate 'span', 'characteristics.pattern'
    values: [
      new Value id: 'patternSolid', label: translate 'span', 'characteristicValues.patternSolid'
      new Value id: 'patternStripes', label: translate 'span', 'characteristicValues.patternStripes'
      new Value id: 'patternBands', label: translate 'span', 'characteristicValues.patternBands'
      new Value id: 'patternSpots', label: translate 'span', 'characteristicValues.patternSpots'
  ]

  new Characteristic
    id: 'coat'
    label: translate 'span', 'characteristics.coat'
    values: [
      new Value id: 'coatTanyellow', label: translate 'span', 'characteristicValues.coatTanyellow'
      new Value id: 'coatRed', label: translate 'span', 'characteristicValues.coatRed'
      new Value id: 'coatBrown', label: translate 'span', 'characteristicValues.coatBrown'
      new Value id: 'coatWhite', label: translate 'span', 'characteristicValues.coatWhite'
      new Value id: 'coatGray', label: translate 'span', 'characteristicValues.coatGray'
      new Value id: 'coatBlack', label: translate 'span', 'characteristicValues.coatBlack'
    ]

  new Characteristic
    id: 'horns'
    label: translate 'span', 'characteristics.horns'
    values: [
      new Value id: 'hornsStraight', label: translate 'span', 'characteristicValues.hornsStraight'
      new Value id: 'hornsCurved', label: translate 'span', 'characteristicValues.hornsCurved'
      new Value id: 'hornsSpiral', label: translate 'span', 'characteristicValues.hornsSpiral'
      new Value id: 'hornsUshaped', label: translate 'span', 'characteristicValues.hornsUshaped'

    ]

  new Characteristic
    id: 'tail'
    label: translate 'span', 'characteristics.tail'
    values: [
      new Value id: 'tailSmooth', label: translate 'span', 'characteristicValues.tailSmooth'
      new Value id: 'tailBushy', label: translate 'span', 'characteristicValues.tailBushy'
      new Value id: 'tailTufted', label: translate 'span', 'characteristicValues.tailTufted'
      new Value id: 'tailLong', label: translate 'span', 'characteristicValues.tailLong'
      new Value id: 'tailShort', label: translate 'span', 'characteristicValues.tailShort'

    ]

  new Characteristic
    id: 'build'
    label: translate 'span', 'characteristics.build'
    values: [
      new Value id: 'buildStocky', label: translate 'span', 'characteristicValues.buildStocky'
      new Value id: 'buildLanky', label: translate 'span', 'characteristicValues.buildLanky'
      new Value id: 'buildLarge', label: translate 'span', 'characteristicValues.buildLarge'
      new Value id: 'buildSmall', label: translate 'span', 'characteristicValues.buildSmall'
      new Value id: 'buildLowslung', label: translate 'span', 'characteristicValues.buildLowslung'

    ]
]

Characteristic = require '../models/characteristic'
Value = Characteristic.Value
translate = require 't7e'

module.exports = [
  new Characteristic
    id: 'like'
    label: translate 'span', 'characteristics.like'
    values: [
      new Value id: 'likeCatDog', label: translate 'span', 'characteristicValues.likeCatDog'
      new Value id: 'likeAntelopeDeer', label: translate 'span', 'characteristicValues.likeAntelopeDeer'
      new Value id: 'likeRabbit', label: translate 'span', 'characteristicValues.likeRabbit'
      new Value id: 'likeBird', label: translate 'span', 'characteristicValues.likeBird'
      new Value id: 'likeWeasel', label: translate 'span', 'characteristicValues.likeWeasel'
      new Value id: 'likeRodent', label: translate 'span', 'characteristicValues.likeRodent'
      new Value id: 'likeOther', label: translate 'span', 'characteristicValues.likeOther'
    ]

  new Characteristic
    id: 'coat'
    label: translate 'span', 'characteristics.coat'
    values: [
      new Value id: 'coatTanBrown', label: translate 'span', 'characteristicValues.coatTanBrown'
      new Value id: 'coatRed', label: translate 'span', 'characteristicValues.coatRed'
      new Value id: 'coatWhite', label: translate 'span', 'characteristicValues.coatWhite'
      new Value id: 'coatGrayBlack', label: translate 'span', 'characteristicValues.coatGrayBlack'
      new Value id: 'coatSolid', label: translate 'span', 'characteristicValues.coatSolid'
      new Value id: 'coatBandsOrStripes', label: translate 'span', 'characteristicValues.coatBandsOrStripes'
      new Value id: 'coatSpots', label: translate 'span', 'characteristicValues.coatSpots'
    ]

  new Characteristic
    id: 'tail'
    label: translate 'span', 'characteristics.tail'
    values: [
      new Value id: 'tailBushy', label: translate 'span', 'characteristicValues.tailBushy'
      new Value id: 'tailSmooth', label: translate 'span', 'characteristicValues.tailSmooth'
      new Value id: 'tailLong', label: translate 'span', 'characteristicValues.tailLong'
      new Value id: 'tailShort', label: translate 'span', 'characteristicValues.tailShort'
    ]

  new Characteristic
    id: 'build'
    label: translate 'span', 'characteristics.build'
    values: [
      new Value id: 'buildStocky', label: translate 'span', 'characteristicValues.buildStocky'
      new Value id: 'buildTall', label: translate 'span', 'characteristicValues.buildTall'
      new Value id: 'buildLanky', label: translate 'span', 'characteristicValues.buildLanky'
      new Value id: 'buildSmall', label: translate 'span', 'characteristicValues.buildSmall'
      new Value id: 'buildLowSlung', label: translate 'span', 'characteristicValues.buildLowSlung'
    ]

]


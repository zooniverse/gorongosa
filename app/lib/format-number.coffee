module.exports = (n) ->
  return n unless n
  n.toString().replace /(\d)(?=(\d{3})+(?!\d))/g, '$1,'

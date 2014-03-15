DumbStore.Product = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  price: DS.attr('number')
  createdAt: DS.attr('date')

  provider: DS.belongsTo('provider', { async: true })

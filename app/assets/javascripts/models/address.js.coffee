DumbStore.Address = DS.Model.extend
  street: DS.attr('string')
  city: DS.attr('string')
  state: DS.attr('string')
  zip: DS.attr('string')

  provider: DS.belongsTo('provider', { async: true })

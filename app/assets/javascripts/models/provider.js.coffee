DumbStore.Provider = DS.Model.extend
  name: DS.attr('string')
  email: DS.attr('string')

  products: DS.hasMany('product', { async: true })
  address: DS.belongsTo('address', { async: true })

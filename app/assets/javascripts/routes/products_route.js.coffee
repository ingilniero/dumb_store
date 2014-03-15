DumbStore.ProductsRoute = Em.Route.extend
  model: ->
    @store.find('product')

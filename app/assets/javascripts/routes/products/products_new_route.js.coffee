DumbStore.ProductsNewRoute = Em.Route.extend
  model: ->
    @store.createRecord('product')

  actions:
    createProduct: ->
      @modelFor('productsNew').save().then (product) ->
        alert("Product created")


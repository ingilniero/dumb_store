DumbStore.ProductsEditRoute = Em.Route.extend
  model: (params) ->
    @store.find('product', params.id)

  setupController: (controller, model) ->
    controller.set('content', model)
    @store.find('provider').then (providers) ->
      controller.set('providers', providers)

  actions:
    updateProduct: ->
      @modelFor('productsEdit').save().then ((product) ->
        alert("Product updated")
        @transitionTo('products')
      ).bind(@)

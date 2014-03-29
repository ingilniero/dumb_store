DumbStore.ProductsNewRoute = Em.Route.extend
  model: ->
    @store.createRecord('product')

  setupController: (controller, model) ->
    controller.set('content', model)
    @store.find('provider').then (providers) ->
      controller.set('providers', providers)

  actions:
    createProduct: ->
      @modelFor('productsNew').save().then ((product) ->
        alert("Product created")
        @transitionTo('products')
      ).bind(@)

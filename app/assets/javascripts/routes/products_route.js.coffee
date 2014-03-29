DumbStore.ProductsRoute = Em.Route.extend
  model: ->
    @store.find('product')

  setupController: (controller, model) ->
    controller.set('content', model)
    controller.set('all', model)

  actions:
    delete: (product) ->
      product.deleteRecord()
      product.save().then (product) ->
        alert('Product destroyed')

    edit: (product) ->
      @transitionTo('products.edit', product.get('id'))

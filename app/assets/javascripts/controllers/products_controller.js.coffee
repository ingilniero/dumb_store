DumbStore.ProductsController = Em.ArrayController.extend
  actions:
    sort: (field) ->
      @set('sortProperties', [field])
      @set('sortAscending', !@get('sortAscending'))

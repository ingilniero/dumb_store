DumbStore.ProductsController = Em.ArrayController.extend
  actions:
    sort: (field) ->
      @set('sortProperties', [field])
      @set('sortAscending', !@get('sortAscending'))

    applyFilter: ->
      filtered = @get('content').filter ((product) ->
          product.get('provider.name') is @get('filter')
      ).bind(@)

      @set('content', filtered)

  filter: ''

DumbStore.ProductsController = Em.ArrayController.extend
  filter: ''
  all: Em.A()

  actions:
    sort: (field) ->
      @set('sortProperties', [field])
      @set('sortAscending', !@get('sortAscending'))

    applyFilter: ->
      return @set('content', @get('all')) if @get('filter') is ''
      filtered = @get('all').filter ((product) ->
          product.get('provider.name') is @get('filter')
      ).bind(@)

      @set('content', filtered)


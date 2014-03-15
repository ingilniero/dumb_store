DumbStore.Router.map ()->
  @resource('products', path: 'tiendita', ->
    @route 'new'
  )

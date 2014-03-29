DumbStore.Router.map ()->
  @resource('products', path: 'tiendita', ->
    @route 'new'
    @route 'edit', path: '/edit/:id'
  )

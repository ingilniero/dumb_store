DumbStore.IndexRoute = Em.Route.extend
  redirect: ->
    @transitionTo('products')

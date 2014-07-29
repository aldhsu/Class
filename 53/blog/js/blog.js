var App = {};
App.Router = Backbone.Router.extend({
  routes: {
    '': 'index',
    'posts/:id': 'getPost'
  },
  initialize: function() {
    console.log('router initialized');
    App.posts = new App.Posts([
      post1 = new App.Post({
        id: 1, title: 'first post', content: 'backbone is hell'
      }),
      post2 = new App.Post({
        id: 2, title: 'second post', content: 'backbone is hell'
      }),
      post = new App.Post({
        id: 3, title: 'third post', content: 'backbone is hell'
      })
    ])
    console.log(post);
  },
  index: function() {
    console.log('you reached index');
    var appView = new App.AppView({collection: App.posts}); // Pass in collection
    appView.render();
  },
  getPost: function(id) {
    var post = App.posts.get(id);
    console.log(post);
    var postView = new App.PostView({model: post})
  }
});

App.Post = Backbone.Model.extend({
  defaults: {
    id: 0,
    title: 'new post about Backbone',
    content: 'new post about backbone goes here'
  },
  initialize: function() {
  }
})

App.PostListView = Backbone.View.extend({
  tagName: 'li',
  initialize: function(){

  },
  events: {
    'click': 'view'
  },
  render: function(){
    // Just returns stuff
    var list_html = Handlebars.compile(App.templates.postListView);
    var copy = list_html( this.model.toJSON() ) // Not really JSON
    this.$el.html(copy);

    return this.el;
  },
  view: function(event) {
    App.blogRouter.navigate('posts/' + this.model.get('id'), true);
  }

})

App.Posts = Backbone.Collection.extend({
  model: App.Post
})

App.AppView = Backbone.View.extend({
  el: '#main',
  intialize: function() {

  },
  render: function() {
    // This render is different to the one above and actually appends stuff
    this.$el.html( App.templates.appView);
    this.collection.each(function(post) {
      var view = new App.PostListView({model: post});
      $('#posts').append( view.render() );
    })
  }
});

App.PostView = Backbone.View.extend({
  el: '#main',
  initialize: function(){
    this.render(); //Initialise renders
    console.log('fuck');
  },
  render: function() {
    var post_html = Handlebars.compile(App.templates.postView);
    var copy = post_html( this.model.toJSON() )
    this.$el.html(copy);
  }
})

App.blogRouter = new App.Router();
$(function(){
  App.templates = {
    appView: $('#app-template').html(),
    postListView: $('#list-template').html(),
    postView: $('#post-template').html()
  }
  Backbone.history.start();
})
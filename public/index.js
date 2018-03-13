
/* global Vue, VueRouter, axios */

// Boards Components


var BoardsIndexPage = {
  template: "#boards-index-page",
  data: function() {
    return {
      boards: [],
      currentBoard: {formatted: {}}
    };
  },
  created: function() {
    console.log("this is working");
    axios.get("/boards").then(function(response) {
        console.log(response.data)
        this.boards = response.data;
      }.bind(this)
    );
  },
  methods: {
    setCurrentBoard: function(board) {
      this.currentBoard = board;
    }
  },
  computed: {}
};

var BoardsShowPage = {
  template: "#boards-show-page",
  data: function() {
    return {
      boards: {
        context: "",
        words: ""
      },
    };
  },
  created: function() {
    axios.get("/boards" + this.$route.params.id)
    .then(function(response) {
    this.boards = response.data;
    }.bind(this));
  },
};

var router = new VueRouter({
  routes: [
  { path: "/", component: BoardsIndexPage },
  { path: "/boards", component: BoardsIndexPage },
  { path: "/boards/:id", component: BoardsShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function(){
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});

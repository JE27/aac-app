
/* global Vue, VueRouter, axios */

// Boards Components

Vue.filter('capitalize', function (value) {
  if (!value) return ''
  value = value.toString()
  return value.toUpperCase()
})

var BoardsIndexPage = {
  template: "#boards-index-page",
  data: function() {
    return {
      boards: [],
      currentBoard: {formatted: {}}
    };
  },
  created: function() {
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

var WordsIndexPage = {
  template: "#words-index-page",
  data: function() {
    return {
      words: [],
      currentWord: {formatted: {}}
    };
  },
  created: function() {
    axios.get("/words").then(function(response) {
        console.log(response.data)
        this.words = response.data;
      }.bind(this)
    );
  },
  methods: {
    setCurrentWord: function(word) {
      this.currentWord = word;
    }
  },
  computed: {}
};

var BoardsShowPage = {
  template: "#boards-show-page",
  data: function() {
    return {
      board: [],
      currentWord: []
    };
  },
  created: function() {
    axios.get("/boards/" + this.$route.params.id)
    .then(function(response) {
    this.board = response.data;
    }.bind(this));
  },
  methods: {
    addSymbol: function(word) {
      this.currentWord.push(word.symbol);
    },
    clearSymbol: function(word) {
      this.currentWord = [];
    }
  },
  beforeRouteUpdate: function(to, from , next) {
    axios.get(to.fullPath)
    .then(function(response) {
    this.board = response.data;
    }.bind(this));
    next();
  }
};

var router = new VueRouter({
  routes: [
  { path: "/", component: BoardsIndexPage },
  { path: "/boards", component: BoardsIndexPage },
  { path: "/words", component: WordsIndexPage },
  { path: "/boards/:id", component: BoardsShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { selector: "div.content", offset : {x: 0, y: 68}};
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

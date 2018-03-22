
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

var WordsIndexPage = {
  template: "#words-index-page",
  data: function() {
    return {
      words: [],
      currentWord: {formatted: {}}
    };
  },
  created: function() {
    console.log("this is working");
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
    console.log("hellooooooo");
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
};

var router = new VueRouter({
  routes: [
  { path: "/", component: BoardsIndexPage },
  { path: "/boards", component: BoardsIndexPage },
  { path: "/words", component: WordsIndexPage },
  { path: "/boards/:id", component: BoardsShowPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    if (to.fullPath == "/boards") {
      console.log("scroll to position");
      console.log(to.fullPath);
      console.log(from.fullPath);
      return { selector: "div.content", offset : {x: 0, y: 68}};
    } else { 
      console.log("top");
      console.log(to.fullPath);
      console.log(from.fullPath);
      return { x: 0, y: 0 };
    }
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

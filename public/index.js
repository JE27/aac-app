
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
    },
  
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
var WordsShowPage = {
  template: "#words-show-page",
  data: function() {
    return {
      word: []
    };
  },
  created: function() {
    axios.get("/words/" + this.$route.params.id)
    .then(function(response) {
    this.word = response.data;
    }.bind(this));
  },
};
var WordsEditPage = {
  template: "#words-edit-page",
  data: function() {
    return {
      word: {
        content: "",
        symbol: "",
        errors: []
      }
    };
  },
  created: function() {
    axios.get("/words/" + this.$route.params.id)
    .then(function(response) {
    var word = response.data;
    this.content = word.content
    this.symbol = word.symbol
    }.bind(this));
  },
  methods: {
    submit: function() {
      var params = {
        word: this.content,
        image_url: this.symbol
      };
      axios.patch("/words/" + this.$route.params.id, params)
      .then(function(response){
        router.push("/words/" + response.data.id);
      }.bind(this))
      .catch(
        function(error){
          this.errors = error.response.data.errors;
          router.push("/login");
        }.bind(this)
      );
    }
  }
};
var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        auth: { email: this.email, password: this.password }
      };
      axios
        .post("/user_token", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};
var LogoutPage = {
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};


var router = new VueRouter({
  routes: [
  { path: "/", component: BoardsIndexPage },
  { path: "/boards", component: BoardsIndexPage },
  { path: "/words", component: WordsIndexPage },
  { path: "/boards/:id", component: BoardsShowPage },
  { path: "/words/:id", component: WordsShowPage },
  { path: "/words/:id/edit", component: WordsEditPage },
  { path: "/signup", component: SignupPage },
  { path: "/login", component: LoginPage },
  { path: "/logout", component: LogoutPage },

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

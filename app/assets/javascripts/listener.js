var Listener = function(){
};

Listener.prototype.fetch_data = function(){
  $.get("https://dbcpostit.herokuapp.com/computers")
};

Listener.prototype.listen = function(){
  var _this = this;
  
  setInterval(function(){
    computers = _this.fetch_data();
    

  }, 5000)
}

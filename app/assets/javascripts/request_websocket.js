var RequestSocket = function(computer_name, student_names, topic, computer_div){
  this.computer_id = computer_id;
  this.student_names = student_names;
  this.topic = topic;
  this.computer = $("#" + computer_name);

  this.socket = new WebSocket("https://dbcpostit.herokuapp.com/requests");
  this.initBinds();
}

RequestSocket.prototype.initBinds = function(){
  this.form.submit
  this.socket.onmessage = function(e){
    
    var tokens = e.data.split(" ");
    // 0 = Ok
    // 1 = Help
    // 2 = Processing
    
    switch(token[0]) {
      case "0":
        _this.sendOk(tokens[1]);
        break;
      case "1":
        _this.sendHelp(tokens[1]){
        break;
      case "2"
        _this.sendProcessing(tokens[1])
        break;
      }
      console.log(e);
    }
  }
}

RequestSocket.initiateConnection = function(value){
  this.value = value; 
  var template = "0 {{computer_id}} {{student_names}} {{topic}}"
  this.socket.send(Mustache.render(template, {
    computer_id: this.computer_id,
    student_names: this.student_names,
    topic: this.topic
  }));
};

RequestSocket.prototype.sendOk = function(value){
  this.form.find("#" + )
};

RequestSocket.prototype.sendProcessing = function(value){
}

RequestSocket.prototype.sendHelp = function(value){
  
}

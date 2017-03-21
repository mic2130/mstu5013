<mail-app>

  <img src={ imageURL }/>
  <p>APP</p>

  <button type="button" name="button" onclick={ toggleEditor }>COMPOSE</button>

  <div class="mail-list">
    <mail-item each={ emailList }></mail-item>




  </div>


  <mail-editor if= { creatingEmail }></mail-editor>


  <script>

    //we want each of this things to be pass into the mail-item tag. The each attribute that we out on the mail-item on the top, makes loop into the emailList array and creates 3 tags, one for each object of the array. The each atribute loops trhough the list of the array, and for each item creates a child component "mail-item" and pass in the particular data object into the component mail-item. For each property of the data we are passing in, it attached directly to the child tag. Inside mail-item, we will find all the properties of the list where they came from. That is why when we put { subject } in the html of the mail-item the information appears, because they are all properties of the object where they came from, in their data set. Then subject is pointing to the data on this tag.

    var that = this;

    this.creatingEmail = false;

    this.toggleEditor = function(event){
      this.creatingEmail = true;
    };

    this.closeEditor = function(event){
      console.log("test", that);
      that.creatingEmail = false;
      that.update(); //this update manually, because at is dealing with a child it not works automatically
    }



    this.emailList = [{
      toEmail: "alpha@alpha.com",
      subject: "some subject",
      body: "I like turtles"
    },{
      toEmail: "alpha@alpha.com",
      subject: "some subject",
      body: "I like turtles"
    },{
      toEmail: "alpha@alpha.com",
      subject: "some subject",
      body: "I like turtles"
    }];


  </script>

  <style>
  :scope {
    display: block;
    border: 3px solid grey;
    padding: 10px;
    position: fixed;
    height: 100%;
    width: 100%;
  }

  .mail-list {
    margin-top: 15px;
  }

  </style>
</mail-app>

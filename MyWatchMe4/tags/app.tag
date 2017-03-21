<mytag>

  <strong>app.tag</strong>
  <p ref="bravo">lorem ipsum</p>
  <p ref="alfa"> { x }
  </p>

  <button type="button" name="button" onclick ={ changeX }>CHANGE x</button>

  <input type="text" ref="password" placeholder="enter password">
  <button type="button" name="button" onclick={ login}> LOGIN</button>

<child></child>



  <script>

var userPass = "";

    console.log("test");
    this.x = "xxx";
    this.y = {animal:"tiger"};
    this.z = null;
    this.w = function(event){
      console.log('function w');
    };



    this.changeX = function(event){
      this.x = "xylophone";
      console.log(this);
    };

    this.login = function(event){
      this.userPass = this.refs.password.value;
      console.log(this.userPass);
       console.log(this.root.querySelectorAll('p'));

    };


    console.log(this);



//this means this tag, and get transform through the compilor into an object. With this tags we can create different instances of that objects. For example many instance of a pinterest card, many javascrit objects. If console log this, you will se an object with a bunch of properties, some of those we created them.

//SOME PROPERTIES OF THE OBJECT:
//_riot_id: 1 > how riot counts the tags
//isMounted: to see if it is mounted
//mixin: ways to create simmilar functionality across many components
//off and on: functions provided by riot to listen to riot internal events
//one is a convention where you listen to an event only one
//opts is a property provided by riot that collect data provided or input into tag from the outside. Is the options pocket to move things from one tag to another place.
//parents: point to the parent tag if there is one
//refs: is another pocket to store references to dom elements on your tag
//root: the root points to the tag complete element that you created
//tag: is a pocket for all children tags
//trigger: you can use it to triger an event


  </script>

  <style>
    :scope {
      display: inline-block;
      border: 1px solid #CCC;
      width: 400px;
      padding: 15px;
      color: blue;
      font-family: helvetica;
    }
  </style>
</mytag>

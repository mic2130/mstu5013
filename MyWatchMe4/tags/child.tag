<child>


  <strong>child tag</strong>
<button type="button" name="button" onclick= { createEvent }>jinsevent</button>
<button type="button" name="button" onclick= { showThisInConsole }>THIS</button>

  <script>
  //  console.log("childtag:", this);


      this.on("jinsevent", function(event){
        alert("hi jinsevent");
      });

      this.createEvent = function(event){
        this.trigger("jinsevent");
      };

      this.showThisInConsole = function(event){
        console.log(this);
      };

  </script>

  <style>
    :scope {
      display: inline-block;
      border: 1px solid #CCC;
      width: 100px;
      padding: 15px;
      color: blue;
    }
  </style>
</child>

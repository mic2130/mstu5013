<mytag>

  <img src={ imageURL }/>
  <p>{ cardText }</p>


  <script>
    console.log("test");
    this.imageURL = "http://placehold.it/100x100";
    this.cardText = "My card";
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
</mytag>

<demo>

    <h2>PREVIEW</h2>

    <div class="card">
        <img src={ card.image }>
        <h4>{ card.title }</h4>
        <p>{ card.description }</p>
    </div>


    <h2>INPUT</h2>
    <label for="linkURL">ImageURL</label>
    <input id="linkURL" type="text" ref="urlInput" value=""> <br>

    <label for="title">title</label>
    <input id="title" type="text" ref="titleInput" value=""> <br>

    <label for="description">description</label>
    <textarea id="description" type="text" ref="descriptionInput" value=""> </textarea>

    <button type = "button" onclick ={ updateCard }> UPDATE </button>

<div onclick={ switchColor }>
<div>Change color</div>
<label> red
  <input type="radio" name ="radiocolor" value="red" ref="modered" checked>
</label>

<label> blue
  <input type="radio" name="radiocolor" value="blue" ref="modoblue">
</label>

<script>

this.card = {
  image: "http://placehold.it/50x50",
  title: "the title",
  description: "the bla bla",
  color: true
};


this.switchColor = function(event) {
console.log(event);
  if (event.value === "radio") {//no entiendo que es target y xq radio
    if (event.value === "red") {
      this.card.color = true;
    } else {
      this.card.color = false;
    }
  }
};


  this.updateCard = function() {
    this.card.image = this.refs.urlInput.value;
    this.card.title = this.refs.titleInput.value;
    this.card.description = this.refs.descriptionInput.value;
};



</script>


<style>
.card {
  display: block;
  color: white;
  padding: 15px;
  background-color: red;

.changecardcolor {
  background-color: blue;
}

}
</style>

</demo>

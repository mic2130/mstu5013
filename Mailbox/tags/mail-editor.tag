<mail-editor>


  <img src={ imageURL }/>
  <p>EDITOR</p>

<div>
  <span>TO</span><input type="text" ref="emailTo" value="">
</div>
<div>
  <span>SUBJECT</span>  <input type="text" ref="emailSubject">
</div>

<textarea name="name" rows="8" cols="40" ref="emailBody"></textarea>

<div>
  <button type="button" onclick={ sendMessage }>SEND</button>
  <button type="button" onclick={ parent.closeEditor }>CANCEL</button>
</div>


  <script>
    console.log(this);

    this.sendMessage = function(event) {
      var newEmail = {
        toEmail: this.refs.emailTo.value,
        subject: this.refs.emailSubject.value,
        body: this.refs.emailBody.value
      };
      this.parent.emailList.push(newEmail);
      this.parent.update();
      this.parent.closeEditor();
    };

    //Every time you need to hookup something you console.log that element and see how you can grab it. For example, now we want that the onclick CANCEL close the editor. To do that first we have to call the parent and then the function that you want to create. Parent is a property of this tag, so is a bridge to the other tag that is the parent of this tag.

  </script>

  <style>

  :scope {
    display: block;
    color: white;
    position: fixed;
    right: 0;
    bottom: 0;
    width: 300px
    height: 200px;
    border: 1px solid grey;
    background-color: grey;
    padding: 10px;
  }

textarea {
  margin-top: 5px;
}
  </style>


</mail-editor>

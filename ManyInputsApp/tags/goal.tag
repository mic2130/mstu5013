<goal>

  <div class="box">


    <img src={ imageURL }/>
    <p>{ cardText }</p>

  </div>

  <div class="outputplace">
    <pre>StateA = { stateA ? "truthy" : "falsy" } </pre>
    <pre>StateB = { stateB }</pre>
    <pre>StateC = { stateC || "no text" }</pre>
    <pre>StateD = { stateD.toUpperCase() } </pre>
    <pre>StateE = { stateE }</pre>
    <pre>StateF = breakfast > { stateF.breakfast ? "yes" : "no" }
                  launch > { stateF.launch ? "yes" : "no" }
                  dinner > { stateF.dinner ? "yes" : "no" }

    </pre>
  </div>

  <div class="inputplace">
    <button type="button" onclick={ toggleStateA }>Button A</button>
    <input type="text" value="" placeholder="text B" onchange= { updateStateB } ref="textB" >
  </div>
  <div class="imputplace2">
    <textarea rows="4" placeholder="textAreaC" onkeyup ={ updateStateC }></textarea>
  </div>

  <div class="imputplace3">
    <label>
      English
      <input type="radio" name="language" value="eng"  onclick={ updateStateD } checked>
    </label>
    <label>
      Spanish
      <input type="radio" name="language" value="spa" onclick={ updateStateD }>
    </label>
    <label>
      Japanese
      <input type="radio" name="language" value="jpn" onclick={ updateStateD }>
    </label>
  </div>

  <div class="imputplace3b">
    <label>
      breakfast
      <input type="checkbox" value="breakfast" onchange= { updateStateF }>
    </label>
    <label>
      launch
      <input type="checkbox" value="launch" onchange= { updateStateF }>
    </label>
    <label>
      dinner
      <input type="checkbox" value="dinner" onchange= { updateStateF }>
    </label>

  </div>

  <div class="imputplace4">
    <select onchange= { updateStateE }>
      <option value="">---</option>
      <option value="car">car</option>
      <option value="bici">bici</option>

    </select>

  </div>



  <script>
    console.log("test");
    this.imageURL = "http://placehold.it/100x100";
    this.cardText = "My card";

    this.stateA = false;
    this.stateB = "default text";
    this.stateC  = "";
    this.stateD = "eng";
    this.stateE = "no selection"
    this.stateF = {
      breakfast: false,
      launch: false,
      dinner: false
    };

    this.toggleStateA = function(event){
      console.log("clicked!");
      this.stateA = !this.stateA;

    };

    this.updateStateB = function(event){
      console.log("change!");
      this.stateB = this.refs.textB.value;
    }

    this.updateStateC = function(event){
      this.stateC = event.target.value;
    }

    this.updateStateD = function(event){
      this.stateD = event.target.value;
    }

    this.updateStateE = function(event){
      this.stateE = event.target.value;
    }

    this.updateStateF = function(event){
      var foodType = event.target.value;
      var isChecked = event.target.checked;
      this.stateF[foodType] = isChecked;
      console.log(this.stateF);
    }

  </script>

  <style>
    .box {
      display: inline-block;
      border: 1px solid #CCC;
      width: 100px;
      padding: 15px;
      color: blue;
    }

    .outputplace {
      border: 1px solid #333;
      padding: 10px;
      border-radius:4px;
      background-color: #f5f5f5;
      margin-top: 10px;
      margin-bottom: 10px;
    }

  </style>
</goal>

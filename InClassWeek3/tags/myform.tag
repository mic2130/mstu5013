<myform>
<strong>PREVIEW for {this.editor} </strong>

		<div class= "preview-profile">
			<p> editor description</p>


		</div>

	<h2>FORM</h2>
			<div>
				<label for="title">TITLE</label>
				<input id="title" type="text" onchange={ updateTitle } value={ editor.title }>
				<button> 
			</div>





		<script>

this.editor = {
	title: "the title",
	imageURL: "http://placehold.it/300x300",
	description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
};

		</script>

		<style>

		</style>


</myform>

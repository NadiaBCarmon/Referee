 $.ajax({

  		type: "GET",

	  	url: "https://pokeapi.co/api/v2/pokemon/kakuna",

		  	success: function(pokemon){
		  		// console.log(new Pokemon(pokemon))

		  			$('#button2').click(function(){

		  			$('#welcome').css("visibility", "hidden")

		  			$('#kakuna-image').css("visibility", "visible")

		  			$('#typhlosion-image').css("visibility", "hidden")
		  			$('#masquerain-image').css("visibility", "hidden") 

		  			$('#poke-calls').css("visibility", "visible")  
		  			$('#name').text(pokemon.name).css("text-align", "center")
		  		    $('#abilities').text(abilities(pokemon)).css("text-align", "center")

					})
		  	},

		  	error: function(error){
		  		console.log("There was an error in your function!")
		  	}


  })//end of ajax request//
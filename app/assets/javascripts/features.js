// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// $(document).on('ready', function(event) {

// 	$('.ingredient-button').on('click', addIngredient) 

// })

// function addIngredient() {
// 	var ingredientId = $(event.target).data('ingredient-id')
// 	var sandwichId = $(event.target).data('sandwich-id')
// 	var caloriesId = $(event.target).data('calories-id')
// 	var nameId = $(event.target).data('name-id')

// 		var params = { 
// 			ingredient_id: ingredientId
		
// 		}

// 		$.ajax({
// 			type: 'POST',
// 			url: `/api/sandwiches/${sandwichId}/ingredients/add`,
// 			data: params,
// 			success: onAddSuccess,
// 			error: onAddError,
// 		})
// }

// function onAddSuccess (data){
// 	$('.ingredient-list').empty();
// 	$('.calories').text(data.total_calories);
	
// 	data.ingredients.forEach(function(ingredient){
// 		var fragment = `
// 		<li>
// 			${ingredient.name}
// 			${ingredient.calories}
// 		</li>
// 		`
// 		$('.ingredient-list').append(fragment);
// 	})
// }

// function onAddError(err) {
// 	console.log(err)
// }
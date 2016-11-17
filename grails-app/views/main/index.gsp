<g:render template = "/layouts/header" />

<section id="main-content">
          <section class="wrapper">  
                <!-- container section start -->

					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
							</div>
						</div>
						<div class="row">
							<div class="col-md-10">
								<div class="row">
									<div class="col-md-8">
										<h1 class="text-left">
											Lista de tareas por organizar
										</h1>
									</div>
									<div class="col-md-4 center-block">
										 
										<button type="button" class="btn btn-primary" style="margin-top:30px" onclick="oscar()">
											Confirmar Tareas
										</button>
									</div>
								</div>
								<br><br>
									<table id="tareas" class="table table-bordered">
											<thead>
											<tr>
												<th>
												Nombre Tarea
												</th>
												<th>
												Proyecto
												</th>
												<th>
												En Espera
												</th>
												<th>
												Proximas Acciones
												</th>	
												<th>
												Quizas
												</th>		
												<th>
												Confirmar
												</th>
												<th>
												Eliminar
												</th>
											</tr>
											</thead>

											<tbody>
											</tbody>
										</table>

							</div>
							<div class="col-md-2">
							</div>
						</div>
					</div>

                <!--hello words ${palabra}-->

               
          </section>
</section>
<g:render template = "/layouts/footer" />

<script>

var tareas = "${tareas}"

//console.log(":X"+tareas)

$(window).load(function(){
	Trello.authorize({
		type: 'popup',
	  	name: 'Organitzi',
	  	scope: {
	    	read: 'true',
	    	write: 'true' },
	  	expiration: 'never',
	  	success: onAuthorize,
	  	error: function (){alert ("Error");}
	});

})

var onAuthorize = function() {
    Trello.members.get("me", function(member){
    	console.log("*****************")
    	console.log(member)
        $("#fullName").text(member.fullName)
        // Output a list of all of the cards that the member 
        // is assigned to
        Trello.get("members/me/cards", function(cards) {
        	console.log(cards)
            $.each(cards, function(ix, card) {

            	if(tareas.indexOf(card.id)==-1){
            		var tr = $("<tr id='"+card.id+"'><td>"+card.name+"</td><td>"+'<label style="" class="pull-left"><input class="ios-switch card-switch" tipo="1" type="checkbox"><div class="switch"></div></label>'+"</td><td>"+'<label style="" class="pull-left"><input class="ios-switch card-switch"  tipo="2" type="checkbox"><div class="switch"></div></label>'+"</td><td>"+'<label style="" class="pull-left"><input class="ios-switch card-switch" tipo="3" type="checkbox"><div class="switch"></div></label>'+"</td><td>"+'<label style="" class="pull-left"><input class="ios-switch card-switch" tipo="4" type="checkbox"><div class="switch"></div></label>'+"</td><td><button class='btn btn-primary' onclick='confirmarTarea("+'"'+card.id+'"'+',"'+card.name+'"'+")'>Confirmar</button></td><td><button class='btn btn-primary' onclick='eliminarTarea("+'"'+card.id+'"'+',"'+card.name+'"'+")'>Eliminar</button></td></tr>")

	            	tr.appendTo($('#tareas > tbody'));
            	}
                
            });  
            $(".card-switch").change(function(){
				$(this).parents('tr').find('.card-switch').not(this).each(function(){
					$(this).prop('checked', false)
				})
			})
        });
    });

};

function oscar(){
	$('#tareas > tbody > tr').each(function(){
		console.log($(this).attr('id')+$(this).find("[tipo='proyecto']").is(":checked"))
	})
}    

function confirmarTarea(id,name){
	console.log(id +" "+ name)
	if($("#"+id).find(".card-switch:checked").size()==0){
		alert("debes escoger al menos una opcion")
		return
	}
	$.ajax({
        method: 'POST',
        url: "${createLink(action:'create', controller:'tarea')}",
        data:{
        	tipo:$("#"+id).find(".card-switch:checked").attr("tipo"),
            name: name,
            idTrello: id,
            },
        success: function(result) {
        	$("#"+id).remove()
        },
        error: function(status, text, result, xhr) {
        	alert("mal")
        }
    });

}


function eliminarTarea(id,name){
	console.log(id +" "+ name)
	if($("#"+id).find(".card-switch:checked").size()==0){
		alert("debes escoger al menos una opcion")
		return
	}
	$.ajax({
        method: 'POST',
        url: "${createLink(action:'delete', controller:'tarea')}",
        data:{
        	tipo:$("#"+id).find(".card-switch:checked").attr("tipo"),
            name: name,
            idTrello: id,
            },
        success: function(result) {
        	$("#"+id).remove()
        },
        error: function(status, text, result, xhr) {
        	alert("mal")
        }
    });

}

</script>


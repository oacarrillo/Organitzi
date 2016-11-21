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
							<div class="col-md-12">
								<div class="row">
									<div class="col-md-8">
										<h1 class="text-left">
											Lista de tareas en Espera
										</h1>
									</div>
								</div>
								<br><br>
										<table class="table table-bordered table-condensed table-responsive">
												<thead>
												<tr>
													<th>
													Nombre Tarea
													</th>
													<th>
													Fecha de creación
													</th>													
													<th>
													Acciones
													</th>
												</tr>
												</thead>

												<tbody>
													<g:each in="${tareas}" var="tarea">
														<tr id="${tarea.id}">
															<td>
																${tarea.name}
															</td>
															<td>
															 	<input id="date${tarea.id}" type="date" name="bday"  value="${tarea.scheduledDate?tarea.scheduledDate.format('yyyy-MM-dd'):''}">
															 	<input id="time${tarea.id}" type="time" name="hora" value="${tarea.scheduledDate?tarea.scheduledDate.format('HH:mm'):''}">
															</td>
															<td>
																<button class='btn btn-primary' onclick="guardar('${tarea.id}')">Guardar</button>

											                    <g:link controller="espera" action="finalizar" id="${tarea.id}">
											                        <button class='btn btn-primary'>Finalizar</button>
											                    </g:link>
											                    <g:link controller="espera" action="delete" id="${tarea.id}">
											                        <button class='btn btn-primary'>Eliminar</button>
											                    </g:link>

															</td>				
														</tr>
													</g:each>
												</tbody>
											</table>

							</div>
							<div class="col-md-0">
							</div>
						</div>
					</div>

                <!--hello words ${palabra}-->

               
          </section>
</section>



<g:render template = "/layouts/footer" />


<script type="text/javascript">
	function guardar(id){
		var fecha=$("#date"+id).val()+" "+ $("#time"+id).val() 
		$.ajax({
	        method: 'POST',
	        url: "${createLink(action:'guardar', controller:'espera')}",
	        data:{
	        	id:id,
	        	fecha:fecha
	            },
	        success: function(result) {
	        	alert("La tarea se guardo correctamente")
	        	window.location.reload(true)
	        },
	        error: function(status, text, result, xhr) {
	        	alert("mal")
	        }
	    });

	}
</script>



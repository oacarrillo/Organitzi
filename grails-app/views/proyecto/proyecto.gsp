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
							<div class="col-md-8">
								<div class="row">
									<div class="col-md-8">
										<h1 class="text-left">
											Lista de Proyectos
										</h1>
									</div>
								</div>
								<br><br>
										<table class="table table-bordered">
												<thead>
												<tr>
													<th>
													Nombre Tarea
													</th>
													<th>
													Eliminar
													</th>
												</tr>
												</thead>

												<tbody>
												<g:each in="${tareas}" var="tarea">
													<tr>
														<td>
															${tarea.name}
														</td>
														<td>
															<a href="${createLink(action:'listar', controller:'proyecto', id:tarea.id)}" class="btn btn-primary">Ver Proyecto</a>
															<a href="url" class="btn btn-primary">Eliminar</a>
														</td>				
													</tr>
												</g:each>												
												</tbody>
											</table>

							</div>
							<div class="col-md-4">
							</div>
						</div>
					</div>

                <!--hello words ${palabra}-->

               
          </section>
</section>
<g:render template = "/layouts/footer" />


<script>
var tareas = "${tareas}"
console.log(":P "+tareas)	


</script>>

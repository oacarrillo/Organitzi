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
														<tr>
															<td>
																${tarea.name}
															</td>
															<td>
															 	<input type="date" name="bday">
															</td>
															<td>
																<a href="url" class="btn btn-primary">Guardar</a>
																<a href="url" class="btn btn-primary">Finalizar</a>
																<a href="url" class="btn btn-primary">Eliminar</a>
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



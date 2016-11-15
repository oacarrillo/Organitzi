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
											Lista de tareas en Opcionales
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
													Fecha de creación
													</th>													
													<th>
													Acciones
													</th>
												</tr>
												</thead>

												<tbody>
													<tr>
														<td>
															Tarea pendiente numero uno
														</td>
														<td>
														 	<input type="text" name="fecha"><br>
														</td>
														<td>
															<a href="url" class="btn btn-primary">Enviar a Proyectos</a>
															<a href="url" class="btn btn-primary">Enviar a Proximas Acciones </a>
															<a href="url" class="btn btn-primary">Eliminar</a>
														</td>				
													</tr>
													<tr>
														<td>
															Tarea pendiente numero dos
														</td>
														<td>
														 	<input type="text" name="fecha"><br>
														</td>
														<td>
															<a href="url" class="btn btn-primary">Enviar a Proyectos</a>
															<a href="url" class="btn btn-primary">Enviar a Proximas Acciones </a>
															<a href="url" class="btn btn-primary">Eliminar</a>
														</td>				
													</tr>													
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


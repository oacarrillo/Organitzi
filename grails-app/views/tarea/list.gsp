	<g:render template = "/layouts/header" />

	<section id="main-content">
	          <section class="wrapper">  

	               
	<table class="table table-bordered">
		<thead>
		<tr>
			<th>
			hola
			</th>
			<th>
			hola1
			</th>
			<th>
			hola2
			</th>
			<th>
			eliminar
			</th>

		</tr>
		</thead>
		<tbody>
			<g:each in="${listTask}">
			<tr>
				<td>
					${it.name}
				</td>
				<td>
					${it.lastName}
				</td>
				<td>
					${it.number}
				</td>
				<td>
					<g:link controller="tarea" action="delete" id="${it.number}" class="btn btn-primary">eliminar</g:link>
				</td>
			</tr>
			</g:each>
		</tbody>
	</table>

<g:link controller='tarea' action=''  />


	          </section>
	</section>



	<g:render template = "/layouts/footer" />
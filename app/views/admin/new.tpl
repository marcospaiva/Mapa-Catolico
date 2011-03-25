<!-- isso é um template para criação genérica de itens -->

<section class="grid_12">
	<header>
		<h1 class="subtitle">Novo cadastro</h1>
	</header>
	<form action="" method="get" accept-charset="" id="place">
		<fieldset id="" class="">
			<div>
				<label for="digite_um_lugar">Digite um lugar</label>
				<input type="text" name="digite_um_lugar" value="" id="digite_um_lugar" class="rounded_">
				
			</div>
			<input type="submit" name="localizar" value="Localizar" class="_rounded btn">
		</fieldset>
	</form>
	<section class="wrapper _rounded rounded_ clearfix">
		<!-- the map -->
		<section class="left">
			<section class="map">
				<div id="map_canvas">
				</div>	
			</section>

		</section>
		<!-- end of map -->
		<!-- begin list -->

		<section class="right">
			
		
			<form action="" method="" accept-charset="" id="details">
				<fieldset id="" class="">
					<legend class="title">Detalhes</legend>
					<hr>
						<div>
							<label for="diocese">Diocese</label><input type="text" name="diocese" value="" id="diocese" class="rounded"/>
						</div>
						<div>
							<label for="bispo">Bispo</label>
							<input type="text" name="bispo" value="" id="bispo"class="rounded"/>
						</div>
							
				</fieldset>
				<hr>
				<fieldset id="" class="">
					<legend>Tipo</legend>
					<label for="paróquia">Paróquia</label><input type="radio" name="paróquia" value="" id="paróquia">
					<label for="capela">Capela</label><input type="radio" name="capela" value="" id="capela">
				</fieldset>
				<fieldset id="" class="">
					<legend></legend>
					<div>
						<label for="nome">Nome</label><input type="text" name="nome" value="" id="nome" class="rounded">
					</div>
					<div>
						<label for="pároco">Pároco</label><input type="text" name="pároco" value="" id="pároco" class="rounded">
					</div>
					
					
					
					
				</fieldset>
				<hr>
				<fieldset id="" class="">
					<legend></legend>
					<div>
						<label for="telefone">Telefone</label><input type="text" name="telefone" value="" id="telefone" class="rounded">
					</div>
					<div>
						<label for="e-mail">E-mail</label><input type="text" name="e-mail" value="" id="e-mail" class="rounded">
					</div>
					<div>
						<label for="">Detalhes</label>
						<textarea id="" cols="30" rows="10" class="rounded"></textarea>
					</div>
					
					
					
					
				</fieldset>
				<input type="submit" name="" value="Salvar" class="btn rounded" id="" >
			</form>
			
</section>


		<!-- end list -->
	</section>
</section>
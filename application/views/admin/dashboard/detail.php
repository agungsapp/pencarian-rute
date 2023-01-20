<!doctype html>
<html lang="en">

<head>

	<?php $this->load->view('_parts/style') ?>
</head>

<body>
	<!-- Begin page -->
	<div id="layout-wrapper">



		<?php $this->load->view('_parts/header') ?>
		<?php $this->load->view('_parts/sidebar') ?>

		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="main-content" style="margin-top:100px;">
			<div class="page-content">
				<div class="container-fluid">
					<div class="page-content-wrapper">
						<div class="mt-3">
							<h3 class=""><strong>Toko yang tersedia</strong></h3>
						</div>
						<div class="row">
							<?php foreach ($datok as $dt) : ?>
								<div class="card ms-5 mt-5	" style="width: 18rem;">
									<img src="<?= base_url('uploads/' . $dt['picture']) ?>" class="card-img-top" alt="...">
									<div class="card-body">
										<h5 class="card-title"><?= $dt['name']; ?></h5>
										<p class="card-text"><?= $dt['desc']; ?></p>
									</div>
									<div class="card-body">
										<a href="<?= base_url(); ?>/hotel/detail/<?= $dt['id']; ?>" class="btn btn-primary">Lihat Toko</a>
									</div>
								</div>
							<?php endforeach ?>
						</div>

					</div>
				</div> <!-- container-fluid -->
			</div>
			<!-- End Page-content -->

			<?php $this->load->view('_parts/footer') ?>
		</div>
		<!-- end main content-->

	</div>
	<!-- END layout-wrapper -->

	<?php $this->load->view('_parts/js') ?>
</body>
<script type="text/javascript">
	mapboxgl.accessToken = 'pk.eyJ1IjoiZWZoYWwiLCJhIjoiY2ptOXRiZ3k2MDh4bzNrbnljMjk5Z2d5aSJ9.8dSNgeAjpdTlZ3x-b2vsog';
	var map = new mapboxgl.Map({
		container: 'map', // container id
		style: 'mapbox://styles/mapbox/streets-v9', // stylesheet location
		center: [<?= $objectRow->lng ?>, <?= $objectRow->lat ?>], // starting position [lng, lat]
		zoom: <?= DEFAULT_ZOOM ?>, // starting zoom
		logoPosition: 'top-right',
	});

	marker = new mapboxgl.Marker({
			color: "#7d000c",
		})
		.setLngLat([<?= $objectRow->lng ?>, <?= $objectRow->lat ?>])
		.addTo(map);
</script>

</html>
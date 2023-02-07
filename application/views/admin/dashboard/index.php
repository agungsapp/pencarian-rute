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


							<h3 class=""><strong><?= $title ?></strong></h3>
							<?php //var_dump($dk) 
							?>
						</div>
						<div class="row mt-5">
							<!-- lop start -->
							<?php foreach ($dk as $d) : ?>
								<div class="card p-0 d-flex align-items-center justify-content-center ms-5 shadow-lg" style="width: 18rem;">
									<img src="<?= base_url(); ?>/assets/images/kategori/<?= $d['image']; ?>" style="height: 150px;" class="card-img-top" alt="kateogi-image">
									<a href="dashboard/detail/<?= $d['id'] ?>" class="btn btn-lg btn-light fw-bold position-absolute"><?= $d['nama'] ?></a>
								</div>
							<?php endforeach ?>
							<!-- <?php foreach ($dk as $d) : ?>
								<div class="col-lg-3 col-sm-3">
									<div class="card">
										<a href="dashboard/detail/<?php $d['id'] ?>" style="height: 100px; border: 1px solid rgba(0,0,0,0.2);" class="btn btn-light shadow-sm">
											<div class="card-body">
												<h3><?php $d['nama'] ?></h3>
											</div>
										</a>
									</div>
								</div>
							<?php endforeach ?> -->
							<!-- loop end -->
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

</html>
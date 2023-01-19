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
							<?php //var_dump($dk) ?>
						</div>
						<div class="row mt-5">
							<!-- lop start -->
							<?php  foreach ($dk as $d) : ?> 
							<div class="col-lg-3 col-sm-3">
								<div class="card">
									<a href="admin/dashboard/detail/<?= $d['id']?>" style="height: 100px; border: 1px solid rgba(0,0,0,0.2);" class="btn btn-light shadow-sm">
									<div class="card-body">
									<h3><?= $d['nama'] ?></h3>
									</div>
									</a>
								</div>
							</div>
							<?php endforeach ?>
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
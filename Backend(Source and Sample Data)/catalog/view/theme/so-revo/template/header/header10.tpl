
<header id="header" class=" variant typeheader-<?php echo isset($typeheader) ? $typeheader : '1'?>">
	<?php if($promotion_status):?>
		<div class="header-promotion">
			<?php
				if (isset($promotion) && is_string($promotion)) {
					echo html_entity_decode($promotion, ENT_QUOTES, 'UTF-8');
				}
			?>
		</div>
	<?php endif; ?>
	<!-- HEADER TOP -->
	<div class="header-top compact-hidden">
		<div class="header-top-inner">
			<div class="row">
				
				<div class="header-top-right collapsed-block col-lg-10 col-sm-9 col-md-9 col-xs-12 ">
					<h5 class="tabBlockTitle hidden-lg hidden-sm hidden-md visible-xs"><?php echo $text_more; ?><a class="expander " href="#TabBlock-1"><i class="fa fa-angle-down"></i></a></h5>
					<div  class="tabBlock" id="TabBlock-1">
						<ul class="top-link list-inline">
							<?php if($welcome_message_status):?>
							<li class="message hidden-xs hidden-sm" >
								<?php
									if (isset($welcome_message) && is_string($welcome_message)) {
										echo html_entity_decode($welcome_message, ENT_QUOTES, 'UTF-8');
									} else {echo 'Default welcome msg!';}
								?>
							</li>
							<?php endif; ?>
							<?php if(isset($contact_number) && is_string($contact_number)): ?>
							<li class="phone-header">	
								<span class="telephone hidden-xs" >
									<?php
										echo html_entity_decode($contact_number, ENT_QUOTES, 'UTF-8');
									?>
									
								</span>
							</li>
							<?php endif; ?>
							<!-- LANGUAGE CURENTY -->
							<?php if($lang_status):?>
								<li class="link language" ><?php echo $language; ?></li>
								<li class="currency" > <?php echo $currency; ?> </li>
							<?php endif; ?>
							<?php if ($logged) { ?>
							<li class="logout"><a href="<?php echo $logout; ?>"><i class="fa fa-lock"></i><?php echo $text_logout; ?></a></li>
							<?php } else { ?>
							<li class="login"><a href="<?php echo $login; ?>"><i class="fa fa-lock"></i><span class="hidden-xs"> <?php echo $text_login; ?></span></a></li>
							<?php } ?>
							<li class="account" id="my_account"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="btn-xs dropdown-toggle" data-toggle="dropdown"> <i class="fa fa-user"></i><span class="my-acc hidden-xs"><?php echo $text_account; ?></span> <span class="fa fa-angle-down"></span></a>
								<ul class="dropdown-menu ">
									<?php if ($logged) { ?>
									<li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
									<li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
									<li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
									<li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
									<li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
									<?php } else { ?>
									<li><a href="<?php echo $register; ?>"><i class="fa fa-user"></i> <?php echo $text_register; ?></a></li>
									<li><a href="<?php echo $login; ?>"><i class="fa fa-pencil-square-o"></i> <?php echo $text_login; ?></a></li>
									<?php } ?>
								</ul>
							</li>

							
							<li class="shopping_cart">
							 	<?php echo $cart; ?>
							</li>
						</ul>
					</div>
				</div>
				<!-- LOGO -->
				<div class="navbar-logo  col-lg-2 col-sm-3 col-md-3">
					   <?php  $this->soconfig->get_logo();?>
				</div>
			</div>
		</div>
	</div>
	
	<!-- HEADER CENTER -->
	<div class="header-center">
		<div class="contain">
			<div class="row">
				<div class="header-menu col-lg-9 col-md-9 col-xs-3">
					<?php echo $content_menu; ?>	
				</div>
				<div class="inner-top-right col-lg-3 col-md-3 col-xs-9">
					<div class="header_search">
						<a href="javascript:void(0)" title="Search" class="btn-search">
							<span class="hidden">Search</span>
						</a>
						<?php  echo $content_search; ?>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Navbar switcher -->
	<?php if (!isset($toppanel_status) || $toppanel_status != 0) : ?>
	<?php if (!isset($toppanel_type) || $toppanel_type != 2 ) :  ?>
	<div class="navbar-switcher-container">
		<div class="navbar-switcher">
			<span class="i-inactive">
				<i class="fa fa-caret-down"></i>
			</span>
			 <span class="i-active fa fa-times"></span>
		</div>
	</div>
	<?php endif; ?>
	<?php endif; ?>
</header>
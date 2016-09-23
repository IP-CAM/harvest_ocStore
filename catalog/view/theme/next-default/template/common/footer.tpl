<div id="next-map">
	<div class="maps">
        <?php global $registry; $elements_places = $registry->get('elements_places'); if (!empty($elements_places['pre_footer'])) { ?>
        <?php echo implode('', $elements_places['pre_footer']); ?>
        <?php } ?>  
	</div>
</div>
<footer>
  <div class="container">
    <div class="row">
      <?php if ($informations) { ?>
      <div class="col-sm-3">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <div class="col-sm-3">
		<h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
		  <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
		  <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
		  <li><a href="<?php echo $compare; ?>"><?php echo $text_compare; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		  
        </ul>
      </div>
      <div class="col-sm-3">
	    <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
        <h5><?php echo $text_service; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      <div class="col-sm-3">
		<h5><?php echo $meta_title; ?></h5>
		<div class="data-footer">
			<strong><!--?php echo $text_telephone; ?--></strong>
			<p><i class="fa fa-phone"></i> <?php echo $telephone; ?></p>
			<strong><!--?php echo $text_address; ?--></strong>
			<p><i class="fa fa-globe"></i> <?php echo $address; ?></p>
			<strong><!--?php echo $text_email; ?--></strong>
			<p><a target="_blank" href="mailto:<?php echo $email; ?>"><i class="fa fa-envelope"></i> <?php echo $email; ?></a></p>
			<strong><!--?php echo $text_open; ?--></strong>
			<!--p><i class="fa fa-clock-o"></i> <?php echo $open; ?></p-->
			<p class="short-description"><?php echo $meta_description; ?></p>
		</div>
      </div>
    </div>
    <hr>
    <p><?php echo $powered; ?></p>
	<div id='updown' class="hidden-xs">
		 <button id="up" class='updown' title='Вверх'><i class="fa fa-angle-up" aria-hidden="true"></i></button>
		 <button id="down" class='updown' title='Обратно'><i class="fa fa-angle-down" aria-hidden="true"></i></button>
	</div>
  </div>
</footer>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>
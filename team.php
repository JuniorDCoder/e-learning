<?php include("header.php"); ?>


		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>Team</h1>
				<span>Exceptional Team</span>
			</div>

		</section><!-- #page-title end -->

		<!-- Page Sub Menu
		============================================= -->
		<div id="page-menu">

			<div id="page-menu-wrap">


			</div>

		</div><!-- #page-menu end -->

		<!-- Content
		============================================= -->
		<section id="content">

			<div class="content-wrap">

				<div class="container clearfix">

					
					<div class="row">

						<div class="col-md-6 bottommargin">
<?php 
        $query = "SELECT * FROM `team` WHERE name = 'Chaudhry Faheem Irfan'";

        $result = mysqli_query($connection, $query);

        if(mysqli_num_rows($result) > 0){
        
                        //We have data 
                        //output the data
         while( $row = mysqli_fetch_assoc($result) ){

         		$ChairmanPic = $row['image'];

         }}

?>


							<div class="team team-list clearfix">
								<div class="team-image">
									<img src="gotoep/images/team/me.jpeg" alt="Team Lead">
								</div>
								<div class="team-desc">
									<div class="team-title"><h4>Foryoung Junior(D'COder)</h4><span>Team Lead</span></div>
									<div class="team-content">
										<p>I am software engineer with passion for solving real life problems using technology. I have a passion for anything digital technology related, enjoy programing and challenge of successful digital experience. I am a skilled web full stack developer with specialty in backend development. I am also a web developer working with The Urega Foundation(urega.org).</p>
									</div>	
								</div>
							</div>
						</div>

<?php 
        $query = "SELECT * FROM `team` WHERE name = 'Team'";

        $result = mysqli_query($connection, $query);

        if(mysqli_num_rows($result) > 0){
        
                        //We have data 
                        //output the data
         while( $row = mysqli_fetch_assoc($result) ){

         		$ceoPic = $row['image'];

         }}

?>

						<div class="col-md-6 bottommargin">

							<div class="team team-list clearfix">
								<div class="team-image">
									<img src="gotoep/images/team/<?php if(isset($ceoPic)) echo $ceoPic; ?>" alt="Entire Team">
								</div>
								<div class="team-desc">
									<div class="team-title"><h4>Team</h4><span>CEO's</span></div>
									
									<div class="team-content">
										<p>We are a team of developers <br>Among the team are web/ mobile frontend developers, web and mobile backend developers, and a team of well coordinated members, ever ready to complete the task!.</p>
									</div>
								</div>
							</div>

						</div>
					</div>




					<div class="clear"></div>

					<div class="fancy-title title-border title-center">
						<h3>Team Members</h3>
					</div>

					<div id="oc-team" class="owl-carousel team-carousel bottommargin carousel-widget" data-margin="30" data-pagi="false" data-items-xs="2" data-items-sm="2" data-items-lg="4">
					<?php 
        $query = "SELECT * FROM `team` WHERE name != 'Team' AND name != 'Foryoung Junior Ngu' ";

        $result = mysqli_query($connection, $query);

        if(mysqli_num_rows($result) > 0){
        
                        //We have data 
                        //output the data
         while( $row = mysqli_fetch_assoc($result) ){

         		$memberPic = $row['image'];
         		$memberName = $row['name'];
         		$memberQ = $row['qualification'];


         		echo '<div class="oc-item">
							<div class="team">
								<div class="team-image">
									<img src="gotoep/images/team/'.$memberPic.'" alt="Exceptional">
								</div>
								<div class="team-desc">
									<div class="team-title"><h4>'.$memberName.'</h4><span>'.$memberQ.'</span></div>
								</div>
								<div class="team-content">
									<p>Highly skilled software developer, skilled at problem solving and analytical thinking. Powerful Member of the team!.</p>
								</div>
							</div>
						</div>';

         }}

?>

					</div>
					
					<div class="clear"></div>

				</div>
			</div>
		
	</section><!-- #content end -->

<?php include("footer.php"); ?>

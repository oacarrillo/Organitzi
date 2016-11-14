
  </section>
  <!-- container section start -->

    <!-- javascripts -->
    <asset:javascript src="jquery.js" />
    <asset:javascript src="jquery-ui-1.10.4.min.js" />
    <asset:javascript src="jquery-1.8.3.min.js" />
    <!-- bootstrap -->
    <asset:javascript src="bootstrap.js" />
    <!-- nice scroll -->
    <asset:javascript src="jquery.scrollTo.min.js" />
    <asset:javascript src="jquery.nicescroll.js" />

    <!-- custom select -->
    <asset:javascript src="jquery.customSelect.min.js"  />
   
    <!--custome script for all page-->
    <asset:javascript src="scripts.js" />
    <!-- custom script for this page-->
  <asset:javascript src="xcharts.min.js" />
  <asset:javascript src="jquery.autosize.min.js" />
  <asset:javascript src="jquery.placeholder.min.js" />
  <asset:javascript src="jquery.slimscroll.min.js" />
  <script>

      //knob
      $(function() {
        $(".knob").knob({
          'draw' : function () { 
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
          $("#owl-slider").owlCarousel({
              navigation : true,
              slideSpeed : 300,
              paginationSpeed : 400,
              singleItem : true

          });
      });

      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });
	  
	  /* ---------- Map ---------- */
	$(function(){
	  $('#map').vectorMap({
	    map: 'world_mill_en',
	    series: {
	      regions: [{
	        values: gdpData,
	        scale: ['#000', '#000'],
	        normalizeFunction: 'polynomial'
	      }]
	    },
		backgroundColor: '#eef3f7',
	    onLabelShow: function(e, el, code){
	      el.html(el.html()+' (GDP - '+gdpData[code]+')');
	    }
	  });
	});



  />

  </body>
</html>

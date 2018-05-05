$( "document" ).ready( function() {
	var $mainSidebar = $( "#sidebar-main" );
	var mqxs=window.matchMedia("(max-width: 575.98px)");
	var mqsm=window.matchMedia("(max-width: 767.98px)");
	
	if(mqxs.matches || mqsm.matches ){

		$mainSidebar.simplerSidebar( {
			align: "left",
			attr: "sidebar-main",
			top: 43,
			
			selectors: {
				trigger: "#sidebar-main-trigger",
				quitter: ".quitter"
			},
			animation: {
				easing: "easeOutQuint"
			}
		} );
	}
	else{ 
		
	$mainSidebar.simplerSidebar( {
		align: "left",
		attr: "sidebar-main",
		top: 65,
		
		selectors: {
			trigger: "#sidebar-main-trigger",
			quitter: ".quitter"
		},
		animation: {
			easing: "easeOutQuint"
		}
	} );}
} );

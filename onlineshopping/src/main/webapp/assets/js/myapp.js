
(function() {
	// solving the active menu problem 
	
	switch (menu){
	case 'About Us':
	
	     $('#nav-item about').removeClass('active');
		break;
		
	case 'Contact Us':
		$('#nav-item contact ').addClass('active');
		break;
		
	default:
		$('#nav-item home').addClass('active');
		break;
	}
});

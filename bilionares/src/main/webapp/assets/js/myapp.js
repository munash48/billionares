$(function(){
	
	switch (menu){
	
	case 'Home':
		$('#home').addclass('active');
		break;
	case 'Guidelines':
		$('#guidelines').addclass('active');
		break;
		default:
		$('#profile').addclass('active');
		break;
	
	
	}
	
	
	
});
function validate(id){
	var empty_flds = 0;

	$("#"+id+" .required_").each(function() {
		$(this).css('background-color','white');
		if($.trim($(this).val()) == '0' || $.trim($(this).val()) == '0.00') {
			$(this).css('background-color','#fad4d7');
		}
		if(!$.trim($(this).val())) {
			$(this).css('background-color','#fad4d7');
		    empty_flds++;
		}    
	});
	return empty_flds;
}

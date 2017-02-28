$(function () {
	
	$(document).ready(function(){
		
		var form = $('#identityCreateForm');
		
		form.submit(function(){
			
			$.ajax({
				
				type: 'POST',
				url:'identityAction',
				data:$(this).serialize(),
				success: function(data){
					var json = data,
				    obj = JSON.parse(json);
					$('#messageContent').html('message:'+obj.message + '<br/>' + 'complementaryData:'+obj.complementaryData);
				}
				
			});
			return false;
		});
		
	});
	
});
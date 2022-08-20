$(document).ready(function(){
	$('#lbtn').click(function(){
		
		var sid = $('#id').val();
		var spw = $('#pw').val();	
		
		if(!sid) {
			$('#id').focus();
			return;
		}
		if(!spw)  {
			$('#pw').focus();
			return;
		}
		$.ajax({
			url: '/dog/loginProc',
			type: 'post',
			dataType: 'json',
			data: {
				id: sid,
				pw: spw
			},
			success: function(data){
				var result = data.result;
				
				if(result == 'OK'){
					$('#frm').attr('action', '/web/main');
					$('#frm').submit();
				}else {
					alert('가입하신 [아이디, 비밀번호] 확인 바랍니다.');
				}
			},
			error: function(){
				alert('#통신오류#');
			}	
		});		
		
	});
	
	
	
	$('#hbtn').click(function(){
		$('#frm').attr('action', '/dog/main');
		$('#frm').submit();
	});
	

	
});
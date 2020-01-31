<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>
</head>
<body>
	<h1>Home에 오신것을 환영합니다.</h1>
	<a href="/home/hello?id=ssar" id="hello-href">hello 페이지 이동-href-get</a> <br/>
	<button id="hello-button">hello 페이지 이동-button-delete</button> <br/>
	<form>
		<input type="hidden" id="id" value="ssar" />
	</form>
	<button id="hello-button-form">hello 페이지 이동-form-post</button>
	
		<form>
		<input type="hidden" id="username" value="love" />
		<input type="hidden" id="phone" value="0102222" />
	</form>
	<button id="hello-button-form-put">hello 페이지 이동-form-put</button>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script>
		// DELETE 호출
		$('#hello-button').on('click', function(){
			let data = { id : 'ssar' };
			
			$.ajax({
				type:'DELETE',
				url:'/home/hello',
				data:JSON.stringify(data),
				contentType:'application/json; charset=utf-8',
				dataType:'json'	
			}).done(function(result)){
				if(result.statusCode == 200){
					alert('글이 삭제 되었습니다.');
					location.href = '/home/hello';
				}
			}).fail(function(result){
				alert('글 삭제가 실패하였습니다.');
			});
		});
	
		// POST 호출 
		$('#hello-button-form').on('click', function(){
			let id = { id : $('#id').val() };
			
			$.ajax({
				type:'POST',
				url:'/home/hello',
				data:JSON.stringify(data),
				contentType:'application/json; charset=utf-8',
				dataType:'json'	
			}).done(function(result)){
				if(result.statusCode == 200){
					alert('글이 등록 되었습니다.');
					location.href = '/home/hello';
				}
			}).fail(function(result){
				alert('글 등록이 실패하였습니다.');
			});
		});

		// PUT 호출 
		$('#hello-button-form-put').on('click', function(){
			let data = {
					username : $('#username').val(),
					phone : $('#phone').val()
			};
			
			$.ajax({
				type:'PUT',
				url:'/home/hello',
				data:JSON.stringify(data),
				contentType:'application/json; charset=utf-8',
				dataType:'json'	
			}).done(function(result)){
				if(result.statusCode == 200){
					alert('글이 입력 되었습니다.');
					location.href = '/home/hello';
				}
			}).fail(function(result){
				alert('글 입력이 실패하였습니다.');
			});
		});
	</script>
</body>
</html>
$('#buy').click(function(){
	
	
})
 $(function () {
			$("#q").html(window.sessionStorage.getItem("province"))
			$("#le").html("欢迎你,"+window.sessionStorage.getItem("user"))
        	setInterval(Status,50)
		})

function Status() {
	$("#shop").html(window.sessionStorage.getItem("key"))
		}


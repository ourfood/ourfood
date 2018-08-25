$(function(){
	var x = 15;
	var y = -330;
	$("img.tooltip").mouseover(function(e){
			
		var tooltip = "<div id='tooltip'><img src='"+ this.src +"' alt='产品预览图' width=400px height=320px /><\/div>"; //创建 div 元素
		$("body").append(tooltip);	//把它追加到文档中						 
		$("#tooltip")
			.css({
				"top": (e.pageY+y+1000) + "px",
				"left":  (e.pageX+x)  + "px"
			}).show("fast");	  //设置x坐标和y坐标，并且显示
	}).mouseout(function(){
			
			$("#tooltip").remove();	 //移除 
	}).mousemove(function(e){
		$("#tooltip")
				.css({
				"top": (e.pageY+y) + "px",
				"left":  (e.pageX+x)  + "px"
			});
	});
})
function exhibition(product_page){
	$.ajax({
		url:"../exhibition.json",
		//url:"http://47.93.187.75:8080/yjl-web/json/exhibition.json",
		type:"GET",
		dataType:"JSON",
		success:function(data){
			// if(category == "3"){
			// 	var content = "";
            //
			// 	for(i in data.zisha){
			// 		content += "<div class='item'><img src=\"" +data.zisha[i].imageId+ "\" alt=\"紫砂" + "\"></div>";
			// 		console.log(content);
			// 	}
			// 	$("#owl-demo-2").trigger('insertContent.owl',content);
            //
			// }
		}
	})
}

function page(category, totalCount, pageNo, pageSize, nextPage, prePage){
	$("#page-before").attr("href", "http://localhost:8080/yjl/exhibition/index?pageNo="+prePage+"&pageSize="+pageSize+"&category="+category);
	$("#page-next").attr("href", "http://localhost:8080/yjl/exhibition/index?pageNo="+nextPage+"&pageSize="+pageSize+"&category="+category);
}
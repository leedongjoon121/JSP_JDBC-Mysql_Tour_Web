$(document).ready(function () {
   
   
    $("#weatherbtn").click(function () {
        var city = $("#weather_in").val();
        console.log("검색한 값이야 "+$city);
		var appid = "9d89590fff1ef68bceab0fca85ef70a4";//변경
        var url = "http://api.openweathermap.org/data/2.5/weather?q=" + 
                         city + "&mode=json&units=metric&appid=" + appid;
		
		$.get(url, function(data, status) {
			console.log(data);
			var result = data.name + "의 날씨는 " +data.main.temp + "도 입니다.";
			$("#weather-info").html(result);
		
		});
		
		$.ajax({
			url:url,
			dataType:"jsonp",
			type:"get",
			success:function(data){
				console.log(data);
				var icon;
				switch(data.weather[0].description)
				{
					case "few clouds":
						icon="02d.png";
						break;
					case "light rain":
						icon="10d.png";
						break;
					default:
						icon="13n.png";
						break;
				}
		
				$("#result-image").attr("src", "http://openweathermap.org/img/w/"+icon);
  
			}
		});
    });
});

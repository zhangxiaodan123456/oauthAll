<html>
 <head>
   <meta charset="utf-8"/>
 </head>
 <script type="text/javascript">
 function test(){
	 var url="http://localhost:8080/user/test";
	 $.ajax({
		 url:url,
		 type:"get",
		 data:{aplIdd:"123456789"},
		 success:function(data){
			 alert("23:"+data);
		 },error:function(data){
			 alert("error:"+data);
		 }

	 });
	 
	 function  getMessage(jsonp){
		 alert("message:"+jsonp);
	 }
 }
 
 function haha(){
	   var str="2017-02-28 10:20";
	  // var reg=/^(([0-9]3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)$/;
	  // var reg1=/^((((19|20)\d{2})-(0?(1|[3-9])|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20)([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))\s([0-1]\d|2[0-4]):[0-5]\d$/;
	  var reg=/^(((01[0-9]{2}|0[2-9][0-9]{2}|[1-9][0-9]{3})-(0?[13578]|1[02])-(0?[1-9]|[12]\\d|3[01]))|((01[0-9]{2}|0[2-9][0-9]{2}|[1-9][0-9]{3})-(0?[13456789]|1[012])-(0?[1-9]|[12]\\d|30))|((01[0-9]{2}|0[2-9][0-9]{2}|[1-9][0-9]{3})-0?2-(0?[1-9]|1\\d|2[0-8]))|(((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((04|08|12|16|[2468][048]|[3579][26])00))-0?2-29)) (20|21|22|23|[0-1]?\\d):[0-5]?\\d$/; 
	  if(str.match(reg)){
			alert("succe");
		}else{
			alert('error');
		}
	 }

 
 function strDateTime() 
 { alert('cc');
	 var str="2017-02-69 10:25";
 var reg = /^(\d{1,4})(-|\/)(\d{1,2})\2(\d{1,2}) (\d{1,2}):(\d{1,2})$/; 
 var r = str.match(reg); 
 alert(r);
 if(r==null)return false; 
 var d= new Date(r[1], r[3]-1,r[4],r[5],r[6]); 
 return (d.getFullYear()==r[1]&&(d.getMonth()+1)==r[3]&&d.getDate()==r[4]&&d.getHours()==r[5]&&d.getMinutes()==r[6]); 
 
 }
 </script>
 <script src="../static/js/jquery.min.js"></script>
 <body>
   <#list list as user>
第${user_index+1}个用户
 用户名:${user.cityName}
 密  码：${user.description}
 年  龄: ${user.id}
</#list>


<input type="button" value="测试" onclick="haha()">
 </body>
</html>
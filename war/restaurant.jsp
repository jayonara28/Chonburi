
    
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
 
  <%
  	String getname_ses = (String)session.getAttribute("name_ses");
  
  %>  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>::::CHONBURI::::</title>

  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" href="css/jquery.mobile-1.3.2.min.css">    
  <link rel="stylesheet" type="text/css" href="css/form.css" />
  <link rel="stylesheet" href="css/bootstrap.css">
  <link rel="stylesheet" href="css/bootstrap-theme.css"> 
  <script src="jquery.mobile-1.3.2.min.js"></script>
  <script src="phonegap.js"></script>


</head>

<body>
  <div class="container">
<div class="span8">
    <img src="img/beach.jpg"/>
</div>

    <nav class="navbar navbar-default" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">ชลบุรี</a>
        </div>
      
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.jsp">หน้าแรก</a></li>
            <li><a href="about.jsp">รู้จักชลบุรี</a></li>
            <li><a href="place.jsp">สถานที่ท่องเที่ยว</a></li>
            <li class="active"><a href="restaurant.jsp">ร้านอาหาร</a></li>
			
          </ul>

          
          <ul class="nav navbar-nav navbar-right">
            <% if(getname_ses!=null){ %>
            	<li>
                    <a href="#">สวัสดีคุณ&nbsp;<%=getname_ses %></a>
                </li>
                <li><a href="team.jsp">ผู้จัดทำ</a></li>
                <li>
                    <a href="logout.jsp">ออกจากระบบ</a>
                </li>
            <% } else { %>
       <li class="dropdown">
            <a class="dropdown-toggle" href="#" data-toggle="dropdown">เข้าสู่ระบบ <strong class="caret"></strong></a>
            <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
              <!-- Login form here -->
              <form action="checkLogin.jsp" method="post" >
              	<input type="text" class="form-control" style="margin-bottom: 15px;" id="username" name="username" placeholder="ชื่อผู้ใช้" size="30" required>
              	<input type="password" class="form-control" style="margin-bottom: 15px;" id="password" name="password" placeholder="รหัสผ่าน" size="30" required>
				  <input class="btn btn-block"  style="margin-bottom: 15px;" type="submit" name="submit" value="เข้าสู่ระบบ" />
				</form>
            </div>
          </li>
          <% } %>
      </ul>
        </div><!-- /.navbar-collapse -->
      </nav>
</div>


<div class="container">
  <div><marquee onmouseover="this.stop();" onmouseout="this.start();" id="result"></marquee></div>
  



<h3>ร้านอาหารแนะนำ</h3>
<div class="col-lg-12" id="restaurant"></div>

<hr>
<footer>
			<div class="row">
				<div class="col-lg-12">
				<p>Copyright &copy;Computer Science || Science and Technology @ The University of the Thai Chamber of Commerce</p>
				</div>
			</div>
		</footer>

</div>





<script src="js/jquery-1.10.2.min.js"></script>


        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
            });
            
        </script>
        
        
<script>
	var xmlhttp = new XMLHttpRequest();

	xmlhttp.onreadystatechange=function(){
		if(xmlhttp.readyState==4 && xmlhttp.status==200){ 
			document.getElementById("result").innerHTML = xmlhttp.responseText;		
		}
	}

	var url="calltext.jsp";
	xmlhttp.open("GET",url,true);
	xmlhttp.send();
</script>



<script>
$(document).ready(function(){
var data = '{"location":['+
'{"rname":"ร้าน 6 Corner (ซิกคอร์เนอร์)","rpic":"6corner.jpg","rdetail":"ร้านคาเฟ่และอาหาร ที่นี้มีทั้งเครื่องดื่มและอาหารให้บริการ บรรยากาศภายในร้านร่มรื่น และอาหารรสชาติดี","raddrs":"ที่อยู่ : ถนนบางแสนล่าง (บางแสนล่างซอย 6) แสนสุข , ชลบุรี , ชลบุรี 20130","rtel":"เบอร์โทร : 038-384-226","ropen":"เวลาเปิด-ปิด ทุกวัน 11:30 - 22:30"},'+
'{"rname":"ร้าน ภูแอทเลิฟ ชลบุรี","rpic":"phulove.jpg","rdetail":"ร้านคาเฟ่และอาหาร ที่มีการตกแต่งร้านสวยงาม คล้ายๆในหุบเขา เป็นร้านที่มีบริเวณกว้าง บรรยากาศในช่วงเย็น","raddrs":"ที่อยู่ : บ้านไร่ไหหลำเหมือง, ชลบุรี, ไทย 20130","rtel":"เบอร์โทร : 084-533-3345","ropen":"เวลาเปิด-ปิด ทุกวัน 11:30 - 23:00" },'+
'{"rname":"ร้าน La Tosta","rpic":"latosta.jpg","rdetail":"ร้านคาเฟ่และอาหาร สไตล์ของร้านคล้ายๆเมือง ปาริโอ้ ที่เขาใหญ่","raddrs":"ที่อยู่ : ถนนเลี่ยงตลาดหนองมนตำบลแสนสุข อำเภอเมือง จังหวัดชลบุรี","rtel":"เบอร์โทร : 087-978-2700","ropen":"เวลาเปิด-ปิด ทุกวัน 9:00 - 21:00" },'+
'{"rname":"ร้าน ครัวกังวาล","rpic":"kruakungwan.jpg","rdetail":"ร้านอาหารทะเลขึ้นชื่ออีกร้านย่านบางแสน อาหารทะเลสดใหม่ รสชาติจัดจ้าน ถูกปาก นักท่องเที่ยวที่มาแวะเวียน","raddrs":"ที่อยู่ : 154/2 ถ.บางแสนสาย 1 ต.แสนสุขอ.เมืองจ.ชลบุรี 20130","rtel":"เบอร์โทร : 03-838-2843","ropen":"เวลาเปิด-ปิด ทุกวัน 10:30 - 23:00" },'+
'{"rname":"ร้าน ร้าน ครัวต้นข้าว","rpic":"tonkhaow.jpg","rdetail":"ร้านอาหารริมทะเลบางแสน บรรยากาศดี เหมือนนั่งทานข้าวในสวน","raddrs":"ที่อยู่ : 94/1 ถนนบางแสนล่างต.แสนสุขจ.ชลบุรี, บางแสน","rtel":"เบอร์โทร : 086-843-8222","ropen":"เวลาเปิด-ปิด ทุกวัน 11:00 - 23:00" },'+
'{"rname":"ร้าน ครัวป้าไหม","rpic":"kruapamai.jpg","rdetail":"ร้านอาหารทะเลอีกร้านที่ต้องบอกเลยว่า เหมาะจะมานั่งทานกับครอบครัวหรือจะเป็นงานเลี้ยง","raddrs":"สาขาอ่างศิลา ถนนเลียบหาดอ่างศิลา-บางแสน ต.อ่างศิลา จ.ชลบุรี","rtel":"เบอร์โทร : 087-144-1155","ropen":"เวลาเปิด-ปิด ทุกวัน 8:30 - 20:00" },'+
'{"rname":"ร้าน ทะเลนาวาชายหาด","rpic":"nawachaitalay.jpg","rdetail":"ร้านอาหารทะเล อีกร้านที่ผ่านมาแถว ศรีราชาต้องลองแวะทานให้ได้เลย","raddrs":"ที่อยู่ : 27/24 หมู่ 4 ซอยท่าเรือศรีราชาฮาร์เบอร์ถนนสุขุมวิท (ซอยท่าเรือศรีราชาฮาร์เบอร์) สุรศักดิ์ , ศรีราชา ,ชลบุรี","rtel":"เบอร์โทร : 038-773-175","ropen":"เวลาเปิด-ปิด ทุกวัน 10:00 - 22:00" },'+
'{"rname":"ร้าน ระเบียงไม้","rpic":"labeimai.jpg","rdetail":"ร้านอาหารที่ร้านหนึ่งที่มีเมนูให้เลือกทานหลากหลาย ทั้งอาหารทะเล ยำ ต้ม ผัด ครบทุกประเภท","raddrs":"ที่อยู่ : 11/114 ถนน 9 กิโลต.สุรศักดิ์จ.ชลบุรี, อ.ศรีราชา","rtel":"เบอร์โทร : 081-377-6066","ropen":"เวลาเปิด-ปิด ทุกวัน 10:00 - 23:30" },'+
'{"rname":"ร้าน มุมอร่อยนาเกลือ","rpic":"moomrroi.jpg","rdetail":"ร้านอาหารที่ทุกคนน่าจะคุ้นชื่อกันอยู่แล้วด้วยความ โด่งดัง","raddrs":"ที่อยู่ : ซอยนาเกลือ 4 (ซอยนาเกลือ 4) นาเกลือ , บางละมุง , ชลบุรี 20260","rtel":"เบอร์โทร : 038-223-252","ropen":"เวลาเปิด-ปิด ทุกวัน 11:30 - 23:00" },'+
'{"rname":"ร้าน ม.ม้าซีฟู้ด","rpic":"mormaseafood.jpg","rdetail":"ร้านอาหารทะเลอีกร้านที่ต้องมาลองให้ได้ รับรองความอรอ่ยกับอาหารทะเลสดๆ","raddrs":"ที่อยู่ : ถนนสุขุมวิทนาเกลือ , บางละมุง , ชลบุรี","rtel":"เบอร์โทร : 038-223-165","ropen":"เวลาเปิด-ปิด ทุกวัน 12:00 - 23:00" }]}';

	var obj = eval ("("+data+")");
	for (var i = 0;i<obj.location.length;i++){		
		$("#restaurant").append("<div><img src=\"img/"+obj.location[i].rpic+"\" align=\"left\" style=\"margin-right: 10px;\" width=\"200px;\" height=\"200px;\"><br>");
		$("#restaurant").append("<h4>"+obj.location[i].rname+"</h4>");
		$("#restaurant").append("<p>"+obj.location[i].rdetail+"</p>");
		$("#restaurant").append("<p>"+obj.location[i].raddrs+"</p>");
		$("#restaurant").append("<p>"+obj.location[i].rtel+"</p>");
		$("#restaurant").append("<p>"+obj.location[i].ropen+"</p>");
		$("#restaurant").append("<br><br><br></div>");
	
	}//forloop	
});//document-ready block
</script>


        
</body>
</html>

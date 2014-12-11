
    
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
            <li class="active"><a href="place.jsp">สถานที่ท่องเที่ยว</a></li>
            <li><a href="restaurant.jsp">ร้านอาหาร</a></li>
			
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
  


<h3>แนะนำสถานที่ท่องเที่ยว</h3>
<div class=row>
<div class="col-lg-8" id="place"></div>
<div class="col-lg-4"></div>
</div>



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
'{"lname":"สวนนงนุช","lpic":"nongnooch1.jpg","ldetail":"เป็นสถานที่พักผ่อนหย่อนใจในพื้นที่กว่า 1,500 ไร่ ภายในมีสวนไม้ดอกไม้ประดับนานาชนิด สวนรถไฟจำลอง สโตนเฮนจ์ ฯลฯ พร้อมที่พักเป็นเรือนไม้สักทรงไทย มีห้องประชุมสัมมนา สวนสัตว์ และศูนย์แสดงศิลปวัฒนธรรมไทย ประกอบด้วยการฟ้อนรำพื้นเมือง ศิลปะการต่อสู้ป้องกันตัว กีฬาพื้นบ้าน และการแสดงของช้าง" },'+
'{"lname":"ปราสาทสัจธรรม","lpic":"sanctruth1.jpg","ldetail":"ตั้งอยู่ ณ บริเวณอ่าววงพระจันทร์ แหลมราชเวช ตำบลนาเกลือ ในเนื้อที่  80 ไร่ งดงามด้วยสถาปัตยกรรมไม้ขนาดใหญ่ที่สุดของโลก ชาวบ้านโดยทั่วไปเรียกว่าวังโบราณ บ้างก็เรียกตามวัสดุของตัวอาคารว่าปราสาทไม้ โดยเริ่มก่อสร้างขึ้นเมื่อปี พ.ศ. 2524 จวบจนปัจจุบันก็ยังไม่เสร็จสมบูรณ์" },'+
'{"lname":"อันเดอร์วอเตอร์ เวิลด์ พัทยา","lpic":"underwater1.jpg","ldetail":"เป็นสถานที่ท่องเที่ยวซึ่งทำให้ผู้มาเยือนเหมือนกับได้เดินทางดำดิ่งลงสู่โลกใต้ทะเล โดยเริ่มจากชายฝั่งอันเป็นหาดทรายและแก่งหิน ลงลึกไปยังดงปะการังสีสันสดใส จนถึงท้องทะเลลึก นักท่องเที่ยวจะได้เข้าชมในอุโมงค์ซึ่งสร้างเป็นทางลอดไปในอควาเรียมขนาดใหญ่ ที่จำลองสภาพแวดล้อมธรรมชาติใต้ทะเลไว้อย่างสวยงามและใกล้ชิด" },'+
'{"lname":"เขาชีจรรย์","lpic":"cheechan1.jpg","ldetail":"เขาชีจรรย์ เป็นเขาหินปูน เดิมมีการระเบิดหินนำไปใช้ในการก่อสร้าง ต่อมาสมเด็จพระญาณสังวร ทรงเสียดายลักษณะภูมิทัศน์อันสง่างามของเขาลูกนี้ จึงมีพระดำริที่จะอนุรักษ์ไว้ และได้ดำเนินการสร้างพระพุทธรูปแกะสลักในลักษณะของพระพุทธฉายที่ใหญ่ที่สุดในโลก" }]}';

	var obj = eval ("("+data+")");
	for (var i = 0;i<obj.location.length;i++){
		
		$("#place").append("<div><img src=\"img/"+obj.location[i].lpic+"\" align=\"left\" style=\"margin-right: 10px;\" width=\"200px;\" height=\"130px;\">");
		$("#place").append("<h4>"+obj.location[i].lname+"</h4>");
		$("#place").append("<p>"+obj.location[i].ldetail+"</p>");
		$("#place").append("<br><br><br></div>");
	
	}//forloop	
});//document-ready block
</script>


        
</body>
</html>

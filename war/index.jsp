
    
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
 
  <%
  	String getname_ses = (String)session.getAttribute("name_ses");
  
  %>  
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>::::CHONBURI::::</title>
  <meta equiv="Content-Type" content="text/html; charset=TIS-620">

   
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
            <li class="active"><a href="#">หน้าแรก</a></li>
            <li><a href="#">เกี่ยวกับเรา</a></li>
            
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">ไปเที่ยว <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="#">เที่ยงกลางวัน</a></li>
                <li><a href="#">เที่ยวกลางคืน</a></li>
              </ul>
            </li>
            <li><a href="#">ร้านอาหาร</a></li>
            <li><a href="#">ที่พัก</a></li>
			<li><a href="team.jsp">ติดต่อเรา</a></li>
          </ul>

          
          <ul class="nav navbar-nav navbar-right">
            <% if(getname_ses!=null){ %>
            	<li>
                    <a href="#">สวัสดีคุณ&nbsp;<%=getname_ses %></a>
                </li>
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
  <div class="row">
    <div class="col-lg-4">
      <div class="panel panel-default">
      <div class="panel-heading"><center><h4>มิโมซ่า พัทยา</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/mimosa1.jpg"/></div>
      <div class="panel-body"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่เที่ยวแห่งใหม่สไตล์เมืองนอก จำลองมาจาก COLMAR หมู่บ้านในเมือง Alsace ของฝรั่งเศส เป็นเมืองเก่าเล็กๆ สีสันสวยงาม มิโมซ่า พัทยา เป็นสถานที่ท่องที่ยว ภายใต้แนวคิด The City of Love หรือเมืองแห่งความรัก ซึ่งก็คือการให้นักท่องเที่ยวได้เห็นมุมมองต่างๆ ของความรักผ่านทางศิลปะการตกแต่งภายในที่แห่งนี้นั่นเอง</h4></p></div>
      </div>
    </div>
  <div class="col-lg-4">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>ไร่องุ่นซิลเวอร์เลค</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/silverlake1.jpg"/></div>
      <div class="panel-body"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นอาณาจักรทั้งผลิตและจำหน่ายองุ่นสด ผลิตภัณฑ์ แปรรูปจากองุ่น ทางไร่ยังมีกิจกรรมให้นักท่องเที่ยวได้สัมผัสกับความงามของธรรมชาติของไร่องุ่น ซึ่งที่นี่ไม่ได้มีเพียงแต่ไร่องุ่นอย่างเดียวเท่านั้น แต่ยังมีสวนดอกไม้นานาพันธุ์ในทุ่งโล่ง ที่มีกังหันลมเนเธอร์แลนด์อยู่เชิงเขา ให้ได้ชื่นชมกันเต็มอิ่ม</h4></p></div>
      </div>
  </div>
  <div class="col-lg-4">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>หาดพัทยา</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/pattaya1.jpg"/></div>
      <div class="panel-body"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นเมืองท่องเที่ยวชายทะเลที่มีชื่อเสียงมากที่สุดแห่งหนึ่งของประเทศ  และเป็นที่รู้จักกันไปทั่วโลก  โดยมีสถานที่ท่องเที่ยวทั้งทางบกและทางน้ำ พัทยาได้พัฒนาขึ้นจากหมู่บ้านชายทะเลอันเงียบสงบ  กลายเป็นสถานที่ท่องเที่ยวตากอากาศระดับนานาชาติดังที่ปรากฏในปัจจุบัน</h4></p></div>
      </div>
  </div>
  
</div>
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
</body>
</html>

<%@ page contentType="text/html; charset=UTF-8" language="java" %>
 
  <%
  	String getusername_ses = (String)session.getAttribute("username_ses");
  
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
			<li class="active"><a href="team.jsp">ติดต่อเรา</a></li>
          </ul>

          
          <ul class="nav navbar-nav navbar-right">
            <% if(null!=getusername_ses){ %>
            	<li>
                    <a href="#">สวัสดีคุณ&nbsp;<%=getusername_ses %></a>
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
  <div><p></p></div>
  <div class="row">

    <div class="col-lg-4">
      <div class="panel panel-default">
      <div class="panel-heading"><center><h4>5405100050 ภวิศ ตันจงศิริกุล</h4></center></div>
      <div class="panel-body"><center><img class="img-responsive" src="img/team1.jpg"/></center></div>
      <div class="panel-body"></div>
      </div>
    </div>
    
  <div class="col-lg-4">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>5405100071 สัญชัย ธนะทรัพย์จินดา</h4></center></div>
      <div class="panel-body"><center><img class="img-responsive" src="img/team2.jpg"/></center></div>
      <div class="panel-body"></div>
      </div>
  </div>
  <div class="col-lg-4"></div>

  
</div>
</div>





<script src="js/jquery-1.10.2.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
            });
            
        </script>
</body>
</html>

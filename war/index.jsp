
    
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
            <li class="active"><a href="index.jsp">หน้าแรก</a></li>
            <li><a href="about.jsp">รู้จักชลบุรี</a></li>         
            <li><a href="place.jsp">สถานที่ท่องเที่ยว</a></li>
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
  
  <div class="row">
    <div class="col-lg-3">
      <div class="panel panel-default">
      <div class="panel-heading"><center><h4>มิโมซ่า พัทยา</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/mimosa1.jpg"/></div>
      <div class="panel-body" style="height: 265px;"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ที่เที่ยวแห่งใหม่สไตล์เมืองนอก จำลองมาจาก COLMAR หมู่บ้านเล็กๆ ของฝรั่งเศส เป็นเมืองเก่าเล็กๆ สีสันสวยงาม มิโมซ่า พัทยา เป็นสถานที่ท่องที่ยว ภายใต้แนวคิดเมืองแห่งความรัก ซึ่งก็คือการให้นักท่องเที่ยวได้เห็นมุมมองต่างๆ ของความรักผ่านทางศิลปะการตกแต่งภายในที่แห่งนี้นั่นเอง</h4></p>
      <button type="button" class="btn pull-right btn-primary" data-toggle="modal" data-target="#myModal1">more</button>
      </div>
      
      </div>
    </div>
  <div class="col-lg-3">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>ไร่องุ่นซิลเวอร์เลค</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/silverlake1.jpg"/></div>
      <div class="panel-body" style="height: 265px;"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นอาณาจักรทั้งผลิตและจำหน่ายองุ่นสด ผลิตภัณฑ์ แปรรูปจากองุ่น ทางไร่ยังมีกิจกรรมให้นักท่องเที่ยวได้สัมผัสกับความงามของธรรมชาติของไร่องุ่น ซึ่งที่นี่ไม่ได้มีเพียงแต่ไร่องุ่นอย่างเดียวเท่านั้น แต่ยังมีสวนดอกไม้นานาพันธุ์ในทุ่งโล่ง  ให้ได้ชื่นชมกันเต็มอิ่ม</h4></p>
      <button type="button" class="btn pull-right btn-primary" data-toggle="modal" data-target="#myModal2">more</button>
      </div>
      </div>
  </div>
  <div class="col-lg-3">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>หาดพัทยา</h4></center></div>
      <div class="panel-body"	><img class="img-responsive" src="img/pattaya1.jpg"/></div>
      <div class="panel-body" style="height: 265px;"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;เป็นเมืองท่องเที่ยวชายทะเลที่มีชื่อเสียงมากที่สุดแห่งหนึ่งของประเทศ  และเป็นที่รู้จักกันไปทั่วโลก  โดยมีสถานที่ท่องเที่ยวทั้งทางบกและทางน้ำ พัทยาได้พัฒนาขึ้นจากหมู่บ้านชายทะเลอันเงียบสงบ  กลายเป็นสถานที่ท่องเที่ยวตากอากาศระดับนานาชาติดังที่ปรากฏในปัจจุบัน</h4></p>
      <button type="button" class="btn pull-right btn-primary" data-toggle="modal" data-target="#myModal3">more</button>
      </div>
      </div>
  </div>
  
   <div class="col-lg-3">
    <div class="panel panel-default">
      <div class="panel-heading"><center><h4>สวนสนุกพัทยาปาร์ค</h4></center></div>
      <div class="panel-body"><img class="img-responsive" src="img/pattayapark1.jpg"/></div>
      <div class="panel-body" style="height: 265px;"><p><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;หากการไปพัทยาของคุณขาดสีสัน ลองไปเที่ยวสนุกแบบผจญภัยกันที่สวนสนุกพัทยาปาร์คดูสิ รับรองว่าไม่มีคำว่าน่าเบื่อ เพราะที่นี่มีทั้งสวนสนุกและสวนน้ำ ให้ได้กรี๊ดกับเครื่องเล่นสนุกๆ มากมาย ก่อนจะสไลด์ลงมายังสระน้ำมหึมาที่สวนน้ำริมชายหาด หรือจะไปวัดใจที่หอคอยพัทยาปาร์ค</h4></p>      
      <button type="button" class="btn pull-right btn-primary" data-toggle="modal" data-target="#myModal4">more</button>
      </div>
      </div>
  </div>
</div>

  <div class="row">
  		<div class="col-lg-6"> 		
		<h3>ที่ตั้ง และอาณาเขต</h3>
  		<p>จังหวัดชลบุรีตั้งอยู่ในภาคตะวันออกของประเทศไทย  หรือริมฝั่งทะเลตะวันออกของอ่าวไทย  ประมาณเส้นรุ้งที่ 12  องศา  30  ลิปดา-13 องศา  43 ลิปดาเหนือ  และเส้นแวงที่  100  องศา  45  ลิปดา-101 องศา 45  ลิปดาตะวันออก  ระยะทางจากกรุงเทพมหานครตามเส้นทางหลวงแผ่นดินหมายเลข 34 (ถนนสายบางนา-ตราด)  รวมระยะทางประมาณ 81  กิโลเมตร  นอกจากนี้ยังมีเส้นทางหลวงพิเศษหมายเลข 7 หรือ Motorway (กรุงเทพฯ-ชลบุรี) ระยะทาง 79 กิโลเมตร ใช้ระยะเวลาในการเดินทางประมาณ 45 นาทีเท่านั้น</p> 		
  		<p>จังหวัดชลบุรีมีพื้นที่ทั้งสิ้น 2,726,875  ไร่ (4,363  ตารางกิโลเมตร) คิดเป็นร้อยละ 0.85 ของพื้นที่ประเทศไทย  (พื้นที่ของประเทศไทยประมาณ  320,696,875 ไร่  หรือ  513,115  ตารางกิโลเมตร)</p>
  		<p>ทิศเหนือ ติดกับจังหวัดฉะเชิงเทรา</p>
  		<p>ทิศใต้ ติดกับจังหวัดระยอง</p>
  		<p>ทิศตะวันออก ติดกับจังหวัดฉะเชิงเทรา  จังหวัดจันทบุรี และจังหวัดระยอง</p>
  		<p>ทิศตะวันตก ติดกับชายฝั่งทะเลตะวันออกของอ่าวไทย</p>
  		</div>
  		
  		
  		<div class="col-lg-6">
  				<div><h3>แผนที่จังหวัดชลบุรี</h3></div>
  				<div class="col-lg-6" id="googleMap" style="width:300px;height:300px;"></div>
  		</div>
  
  </div>
  











<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">มิโมซ่า พัทยา</h4>
      </div>
      <div class="modal-body">
      	<div><img class="img-responsive" src="img/mimosa1.jpg"/></div>
      	<p></p>
       	<p>มิโมซ่า พัทยา แหล่งช้อป-กิน-เที่ยวบรรยากาศเมืองนอก ภายใต้คอนเซปท์ "The City of Love เมืองเเห่งความรัก" โดดเด่นด้วยสถาปัตยกรรมเมืองโกลมาร์ (Colmar) ประเทศฝรั่งเศส เมืองโบราณที่ติดอันดับความโรแมนติก 1 ใน 10 ของโลก สะดุดตาด้วยอาคารร้านค้าสีสันสดใส โอบล้อมด้วยกลิ่นอายแห่งความรักที่รอให้ทุกท่านเข้ามาสัมผัส พักผ่อน เที่ยวชม และเก็บภาพสวยๆ พร้อมความทรงจำดีๆได้ทุกวัน มิโมซ่าเปิดให้เข้าชมอย่างเป็นทางการเมื่อวันที่ 14 กุมภาพันธ์ 2556 ตามคอนเซปท์ The City of Love บนพื้นที่กว่า 50 ไร่ ใช้งบประมาณกว่า 1,000 ล้านบาท สามารถรองรับนักท่องเที่ยวได้ไม่ต่ำกว่า 10,000 คน/วัน เปิดบริการทุกวัน (ไม่เว้นวันหยุดนักขัตฤกษ์) ตั้งแต่เวลา 10.00-22.00 น. ตั้งอยู่บน ถ.สุขุมวิท ตรงข้ามโรงแรมแอมบาสเดอร์ ซิตี้ จอมเทียน ตำบลนาจอมเทียน อำเภอสัตหีบ จังหวัดชลบุรี บริหารงานโดยคุณนิกกี้ จิรโชติ แก้วเสถียร</p>
      	<p>สำหรับขั้นตอนการออกแบบงานสถาปัตยกรรมของมิโมซ่า ทีมงานผู้เชี่ยวชาญด้านสถาปัตยกรรมท้องถิ่นชาวฝรั่งเศสได้เดินทางไปเก็บรายละเอียดที่เมืองโกลมาร์(Colmar) เมืองชายแดนระหว่างฝรั่งเศสและเยอรมนี หลังจากนั้นจึงกลับมาก่อสร้างมิโมซ่าพัทยา ตั้งแต่วันที่ 14 พฤศจิกายน 2554 ด้วยระยะเวลาเพียง 1 ปีเศษเท่านั้น มิโมซ่าก็เปิดบ้านต้อนรับนักท่องเที่ยวทั้งชาวไทยและชาวต่างชาติอย่างเป็นทางการ</p>
      	<p>มิโมซ่าพัทยา โดดเด่นด้วยงานสถาปัตยกรรมในยุคเรอเนซองส์ (Renaissance) ของยุโรปและรูปแบบอาคารบ้านเรือนของเมืองโกลมาร์ (Colmar) ประเทศฝรั่งเศส ซึ่งเป็นเมืองชายแดนที่ติดกับประเทศเยอรมนี จึงได้รับการผสมผสานของสถาปัตยกรรมที่หลากหลาย ทั้งการใช้สีสันของอาคารและรูปทรงแบบฮาล์ฟ-ทิมเบอร์ (Half-Timbered) ซึ่งเป็นเอกลักษณ์ของบ้านเรือนในยุโรป นอกจากนี้ยังมี คลอง พร้อมหงส์และเป็ดน้อยที่ว่ายน้ำไปมา ช่วยสร้างบรรยากาศอันโรแมนติกให้มิโมซ่าพัทยามีความคล้ายคลึงกับเมืองโกลมาร์ ที่ได้ชื่อว่า "ลิตเติ้ลเวนิส"</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">ไร่องุ่นซิลเวอร์เลค</h4>
      </div>
      <div class="modal-body">
      	<div><img class="img-responsive" src="img/silverlake1.jpg"/></div>
      	<p></p>
       	<p>ไร่องุ่นใกล้เมืองพัทยา นาม“ซิลเวอร์เลค”(Silverlake) ให้เป็นอาณาจักรทั้งผลิตและจำหน่ายองุ่นสด ผลิตภัณฑ์ แปรรูปจากองุ่น และล่าสุดเป็นแหล่งท่องเที่ยวใหม่ประจำเมืองพัทยา ซึ่งเจ้าของไร่องุ่นแห่งนี้เป็นของอดีต นางเอกชื่อดัง คุณสุพรรษา เนื่องภิรมย์ สุพรรษา เล่าแรงบันดาลใจเกิดขึ้นเมื่อประมาณ 5-6 ปีที่แล้ว มีโอกาส เข้าชม ไร่องุ่นต่างๆ ในประเทศสหรัฐอเมริกา พบว่า หลาย แห่งมีสภาพแวดล้อมค่อนข้างแห้งแล้ง เป็นป่าเขาโล้น แต่ก็สามารถ ทำไร่องุ่นได้ จึงเกิดความสนใจ อยากนำที่ดินใน ต.นาจอมเทียน อ.สัตหีบ จ.ชลบุรี ซึ่งเธอและสามี ซื้อเก็บไวมาพัฒนา้ เป็นไร่องุ่นดูบ้าง  จากนั้นได้เชิญเจ้าของไร่องุ่น ชาวอเมริกัน ท่านหนึ่ง มาช่วยพิจารณา ดูสภาพ แวดล้อมที่ดินดังกล่าวว่า สามารถพัฒนาเป็นไร่องุ่นได้หรือไม่ ซึ่งได้รับการยืนยันว่า เหมาะจะ ทำไร่องุ่นอย่างยิ่ง ด้วยจากข้อได้เปรียบพื้นที่ไร่่ติด กับ“พระพุทธแกะสลัก เขาชีจรรย์”และอยู่ใกล้ตัวเมืองพัทยาแค่ 20 กิโลเมตร สุพรรษา จึงปรับปรุงภูมิทัศน์ไร่องุ่น “ซิลเวอร์เลค” ให้สวยงาม รองรับเป็นแหล่งท่องเที่ยวใหม่ของเมืองพัทยา โดยไม่คิดค่าเข้าชม</p>
      	<p>กิจกรรมภายในไร่ จะเน้นให้นักท่องเที่ยวสัมผัสบรรยากาศการทำไร่องุ่นตามธรรมชาติจริงๆสามารถร่วมกิจกรรม ที่น่า สนใจกับรถ ATV ที่ให้คุณได้สัมผัสบรรยากาศกับการขี่เข้าชมไร และกิจกรรมอื่นๆ ที่เราจะรังสรรค์ขึ้นให้คุณ ใน อนาคต ่พร้อมบันทึกความทรงจำของความงามครั้งนี้ได้อย่างมิรู้ลืม ณ ไร่องุ่นซิลเวอร์เลค “Silverlake, Pattaya Grape Escape  ในปัจจุบัน ทางไร่ได้เพิ่มกิจกรรมต่างๆมากขึ้นเพื่อให้ผู้เข้าเยี่ยมชมไร่ได้สัมผัสกับ บรรยากาศอันสวยงาม ของทางไร่ได้หลากหลาย ไม่ว่าจะเป็นการนั่งรถม้าชมไร่ หรือขี่จักรยานเสือภูเขาลัดเลาะ ไปตามแนวปลูก องุ่นของไร่ หรือนั่งช้างชมบรรยากาศอันงดงาม นอกจากนั้นท่านยังสามารถสัมผัสบรรยากาศ พระอาทิตย์ตกกลางทะเลสาบโดยขี่ จักรยานน้ำซึ่งจะเป็นภาพที่ท่านมิอาจลืมได้ในอนาคตอันใกล้นี้</p>
      	<p>นอกจากเราจะสามารถกินลมชมวิว สัมผัสอากาศอันริสุทธิ์ภายในไร่อุง่นซิลเวอร์เลคแล้ว ตรงข้ามไร่องุ่นยังมีร้าน อาหาร ที่ทางไร่ไว้คอยบริการนักท่องเที่ยว บรรยากากาศของร้าน สีสันสวยงาม มองเห็นวิวไกลสุดตาน่านั่งดีแท้</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>


<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">หาดพัทยา</h4>
      </div>
      <div class="modal-body">
      	<div><img class="img-responsive" src="img/pattaya2.jpg"/></div>
      	<p></p>
       	<p>การที่ชายหาดพัทยาเป็นที่นิยมนั้น ไม่ได้มาจากแค่ส่วนที่เป็นโค้งและความยาวชายของชายหาด เพราะที่จริงแล้วมันรวมถึงการที่เต็มไปด้วยกิจกรรมทางน้ำ ห้างสรรพสินค้าและร้านค้าที่อยู่ใกล้ ๆ ร้านอาหารและมีที่พักติดกับบริเวณชายหาดด้วย หรือถ้าพูดอีกทางหนึ่งก็คือพัทยาบีช สามารถตอบสนองความต้องการของนักท่องเที่ยวได้ดีมากในแทบทุก ๆ ด้านนั่นเอง</p>
      	<p>คำว่าชายหาดพัทยานั้นบ่อยครั้งหมายถึงโดยชาดหาดโดยรวม ซึ่งรวมไปกับชายหาดของนาเกลือและจอมเทียนด้วย เพราะฉะนั้นบางท ีอาจจะต้องถามให้เฉพาะเจาะจงว่า ชายหาดไหนกันแน่ที่นักท่องเที่ยวต้องการไป (ทางด้านจอมเทีนบีชและนาเกลือบีชนั้นมีสิ่งอำนวนความสะดวกไม่เท่ากับพัทยาบีช)</p>
      	<p>น้ำทะเลของเมืองพัทยาทุกวันนี้ค่อนสะอาดขึ้นมากกว่าเมื่อก่อนเยอะ เพราะช่วงระยะเวลาสองสามปีมานี้ เมืองพัทยาวางเป้าที่จะทำให้บีชมีความสะอาด เพื่อดึงดูดนักท่องเที่ยวได้มากขึ้น  ซึ่งหลังจากกระบวนการทำความสะอาดแล้ว กิจกรรมและการกีฬาทางน้ำที่เมืองพัทยาก็เริ่มมีมากขึ้น เช่น บานาน่าโบ๊ต วินเซิร์ฟ และเจ๊ตสกี เป็นต้น และแน่นอนที่สุดว่า ชายหาดจะต้องมีเตียงผ้าใบใต้ร่มคันใหญ่คอยให้บริการด้วยเช่นกัน</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
</div>



<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
        <h4 class="modal-title" id="myModalLabel">สวนสนุกพัทยาปาร์ค</h4>
      </div>
      <div class="modal-body">
      	<div><img class="img-responsive" src="img/pattayapark2.jpg"/></div>
      	<p></p>
       	<p>สวนสนุกพัทยาปาร์ค สวนนน้ำขึ้นชื่อของเมืองพัทยา มีสระน้ำวนขนาดใหญ่ สร้างวนรอบสวนน้ำ สามารถว่ายเล่นได้อย่างทั่วถึง มีสระสำหรับเด็กเล็กและส่วนของฝักบัวสำหรับอาบน้ำจืด ไฮไลท์คือสไลเดอร์ขนาดยักษ์ทั้งแบบทางตรง และแบบอุโมงค์ เตรียมไว้ให้สำหรับนักท่องเที่ยวที่ต้องการคลายร้อน รวมไปถึงที่นี่ยังมีทั้งสวนสนุกให้คุณได้เล่นกันอย่างจุใจ ไม่ว่าจะเป็นรถไฟเหินเวหา ไวกิ้งสุดเร้าใจ หรือจะเป็นทาวน์เวอร์ช๊อตสุดมัน แต่สำหรับคุณหนูๆ ที่ไม่ชอบความหวาดเสียว ที่นี่ก็มีเครื่องเล่นน่ารักๆ ให้คุณหนูๆ ได้เล่นอีกด้วย นอกจากนี้ยังมีจุดชมวิวให้คุณได้ชมทัศนียภาพของเมืองพัทยาได้อย่างเต็มตากับกระเช้าลอยฟ้าที่ลาดยาวลงมาจากปลายหอคอยที่สูงกว่า 50 ชั้น ให้ คุณได้ชมวิวจากมุมสูงของเมืองพัทยาแบบสุดลูกหูลูกตาเลยทีเดียว</p>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        
      </div>
    </div>
  </div>
  
  
  
  
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



<script
src="http://maps.googleapis.com/maps/api/js">
</script>

<script>
var myCenter=new google.maps.LatLng(13.283036, 101.110569);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:7,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
  
     
</body>
</html>

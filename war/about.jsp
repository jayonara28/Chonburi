
    
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
            <li class="active"><a href="about.jsp">รู้จักชลบุรี</a></li>         
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
  <div><p></p></div>

<div role="tabpanel">

<ul class="nav nav-tabs" role="tablist">
  <li role="presentation" class="active"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">รู้จักชลบุรี</a></li> 
  <li role="presentation"><a href="#travel" aria-controls="messages" role="tab" data-toggle="tab">แหล่งท่องเที่ยวระดับโลก</a></li>
  <li role="presentation"><a href="#port" aria-controls="port" role="tab" data-toggle="tab">ท่าเรืออุตสาหกรรมนานาชาติ</a></li>
  <li role="presentation"><a href="#product" aria-controls="product" role="tab" data-toggle="tab">สินค้าและเกษตรเลื่องชื่อ</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="profile">
  			<br>
  			<img class="img-responsivec" src="img/boat.jpg" align="left" style="margin-right: 10px;"/>
  			<p><b>จังหวัดชลบุรี</b> หรือที่คนทั่วไปเรียกกันสั้นๆว่า <b>“เมืองชล”</b>  เป็นจังหวัดท่องเที่ยวชายทะเลภาคตะวันออกที่มีชื่อเสียงมาช้านาน  อีกทั้งมีชุมชนอยู่อาศัยย้อนไปได้ถึงยุคทวารวดี   กลายเป็นแหล่งสั่งสมอารยธรรมและความเจริญรุ่งเรืองในหลายๆด้าน  โดยเฉพาะการท่องเที่ยว  ขนบธรรมเนียมประเพณี  วิถีชีวิตชุมชน  และอุตสาหกรรมระดับนานาชาติ  สำหรับคนทั่วไปแล้ว  ชลบุรีอาจเป็นที่รู้จักในฐานะเมืองตากอากาศชายทะเลที่ใกล้กรุงเทพฯ  โดยเฉพาะหาดบางแสนและพัทยา  ซึ่งได้รับความนิยมจากนักท่องเที่ยว  ทั้งชาวไทยและชาวต่างประเทศ  ต่างก็เดินทางเข้ามาสัมผัสความสวยสดงดงามของชายทะเลตะวันออกอันมีมนต์เสน่ห์แห่งนี้   ปีละหลายล้านคน	</p>
 			<p>การที่ชลบุรีตั้งอยู่ติดทะเล  และมีชายฝั่งทอดยาวถึง 160 กิโลเมตร  ส่งผลให้มีอากาศเย็นสบายตลอดปี  ฤดูร้อนไม่ร้อนจัด  ฤดูหนาวอากาศไม่ถึงกับแห้งแล้งมากนัก  เพราะยังมีฝนตกอย่างชุ่มฉ่ำภายใต้อิทธิพลของลมมรสุมตะวันตกเฉียงใต้  โดยเฉพาะบริเวณพื้นที่ตอนในของจังหวัด  ซึ่งมีลักษณะภูมิประเทศเป็นภูเขาและที่ราบลอนลูกคลื่นสลับกันไป  มักจะมีฝนตกชุกกว่าชายฝั่งทะเล  ในครั้งอดีตแถบชายทะเลเมืองชลบุรีได้รับการยอมรับว่ามีอากาศดีมาก  จนสามารถใช้เป็นสถานพักฟื้นผู้ป่วยและที่ตากอากาศของพระมหากษัตริย์  รวมถึงเชื้อพระวงศ์ชั้นสูงในราชวงศ์จักรีหลายพระองค์  ดังปรากฏหมู่พระราชฐานอันงดงามของพระบาทสมเด็จพระจุลจอมเกล้าเจ้าอยู่หัว  รัชกาลที่ 5  อยู่บนเกาะสีชัง  และกลายเป็นแหล่งท่องเที่ยวยอดนิยมแห่งหนึ่งอย่างมิอาจปฏิเสธได้</p>
  			<p>ความได้เปรียบทางทำเลที่ตั้ง  ณ  ชายฝั่งทะเลซึ่งมีคลื่นลมไม่แรงจัดตลอดปี  ทำให้ชลบุรีกลายเป็นเมืองท่าสำคัญมาแต่ครั้งโบราณกาล  มีชาวจีนล่องเรือสำเภาขนาดใหญ่เข้ามาค้าขายและอพยพเข้ามาตั้งถิ่นฐานเป็นจำนวนมาก  ดังปรากฏว่ายังคงมีลูกหลานชาวจีนอาศัยสืบต่อและประกอบสัมมาอาชีพอยู่ทั่วไปในชลบุรีแม้ทุกวันนี้   มีบันทึกของชาวเรือในอดีตกล่าวว่า  เกาะสีชังเป็นจุดที่เรือสำเภาจีนมักใช้จอดพักเรือก่อนเดินทางเข้าสู่ปากแม่น้ำเจ้าพระยา  หรือก่อนเดินทางออกสู่มหาสมุทร  จนถึงทุกวันนี้ก็ยังมีเรือสินค้าและเรือเดินทะเลขนาดใหญ่เข้ามาจอดลอยลำในบริเวณดังกล่าวอยู่เสมอ  ไม่เคยเปลี่ยน</p>
  			<br><br><br><br>
  </div>



  <div role="tabpanel" class="tab-pane" id="travel">
  	<br>
  	<p><b>“เที่ยวชลบุรีไม่มีคำว่าน่าเบื่อ  กิจกรรมเหลือเฟือ  แหล่งท่องเที่ยวมากมี  สัมผัสเกลียวคลื่นคราม  สายน้ำใส  ลมเย็นสบาย  ภายใต้ไอแดดอุ่น  ท่องเที่ยวแหล่งประวัติศาสตร์  ธรรมชาติ   วัฒนธรรม   และความรู้หลากหลายครบรส  ปิดท้ายด้วยแหล่งบันเทิงและแสงสีสุดอลังการ  ชลบุรี  บ้านของแหล่งท่องเที่ยวที่คนทั่วโลกชื่นชม”</b></p>
  	<img class="img-responsivec" src="img/travel.jpg" align="left" style="margin-right: 10px;"/>
  	<p>จังหวัดชลบุรีเป็นแหล่งที่มีสถานที่ท่องเที่ยวสวยงามและน่าสนใจเป็นจำนวนมาก โดยจำแนกออกเป็นหลายประเภท  ประกอบด้วย  แหล่งท่องเที่ยวธรรมชาติ  แหล่งท่องเที่ยวเชิงประวัติศาสตร์  แหล่งท่องเที่ยวเชิงวัฒนธรรม  แหล่งท่องเที่ยวกิจกรรมผจญภัย  และแหล่งท่องเที่ยวบันเทิงสมัยใหม่  อาทิ หาดพัทยา หาดบางแสน เกาะสีชัง  หมู่เกาะไผ่  สถาบันวิทยาศาสตร์ทางทะเล มหาวิทยาลัยบูรพา  สวนสัตว์เปิดเขาเขียว   วัดใหญ่อินทาราม  วัดญาณสังวรารามฯ  วิหารเซียน  หมู่บ้านช้าง  สวนเสือศรีราชา  เมืองจำลอง  สวนนงนุช   อุทยานหินล้านปีและฟาร์มจระเข้พัทยา  และอื่นๆอีกมากมาย  ความหลากหลายซึ่งมารวมกันอยู่ในแหล่งเดียวนี้เอง  เอื้ออำนวยให้ชลบุรีกลายเป็นเมืองท่องเที่ยวระดับโลกซึ่งทุกคนมิอาจปฏิเสธได้</p>
  	<p>สถานการณ์การท่องเที่ยวจังหวัดชลบุรี  ชลบุรีมีจำนวนนักท่องเที่ยวประมาณ  10 ล้านคน  ทำรายได้ราว   91,733 ล้านบาท  (ข้อมูลประมาณการ ณ สิ้นปี พ.ศ. 2555)  เฉพาะเมืองพัทยาแห่งเดียวมีจำนวนนักท่องเที่ยวมากถึง  9  ล้านคน  จากผลการสำรวจพบว่านักท่องเที่ยวต่างชาติซึ่งมาเยือนจังหวัดชลบุรี   เรียงลำดับจากมากไปหาน้อย  ได้แก่ ชาวจีน รัสเซีย   เยอรมนี ไต้หวัน และอินเดีย   ตามลำดับ   โดยนักท่องเที่ยวแต่ละคนมีระยะเวลาพำนักเฉลี่ยอยู่ในจังหวัดราว 3 วัน</p>
  	<p>ชลบุรีวันนี้จึงพร้อมแล้วสำหรับนักท่องเที่ยวทุกคน  ในการมอบประสบการณ์ดีๆ  และเติมเต็มวันหยุดพักผ่อนในชีวิตให้สมบูรณ์แบบ  สมกับคำว่า  “ชลบุรี  ศูนย์กลางการท่องเที่ยวแห่งทะเลตะวันออก”  อย่างแท้จริง</p>
  	<br><br><br><br>
  </div>
  
  
  
  
  <div role="tabpanel" class="tab-pane" id="port">
  	<br>
  	<P><b>“ชลบุรีเมืองหน้าด่านชายทะเล  ประตูสู่เอเชียตะวันออกเฉียงใต้ที่ใครๆก็ยอมรับ  วันนี้เรามีแหลมฉบัง  ท่าเทียบเรือระดับ World Class  ที่เชื่อมโยงภาคอุตสาหกรรม  ภาคเกษตร  และวิถีชีวิตผู้คนท้องถิ่นเข้าด้วยกัน  ความทันสมัยได้มาตรฐาน  ผสานวิสัยทัศน์กว้างไกล  ทำให้ชลบุรีมีท่าเรือนานาชาติซึ่งโลกต้องเหลียวมามอง”</b></P>
  	<img class="img-responsivec" src="img/port.jpg" align="left" style="margin-right: 10px;"/>
  	<p>ด้วยปัจจัยความได้เปรียบทางภูมิศาสตร์  มีชายฝั่งทะเลทอดยาวกว่า 160 กิโลเมตร  อีกทั้งคลื่นลมไม่รุ่นแรงมากนัก  แม้ในฤดูมรสุม  เอื้ออำนวยให้จังหวัดชลบุรีกลายเป็นบริเวณที่เหมาะสมในการสร้างท่าจอดเรือพาณิชย์  ทั้งขนาดใหญ่และขนาดเล็กได้เป็นอย่างดี  ตำแหน่งที่ตั้งของชลบุรีที่อยู่ใกล้กับเมืองหลวงของประเทศ  อีกทั้งไม่ห่างไกลจากสนามบินสุวรรณภูมิมากนัก  ยิ่งเสริมให้ชายฝั่งทะเลตะวันออกของชลบุรีกลายเป็นศูนย์กลางการส่งออกทางทะเลของประเทศในเวลาอันรวดเร็ว  รัฐบาลจึงจัดให้ชลบุรีเป็นพื้นที่เป้าหมาย โครงการพัฒนาพื้นที่ชายฝั่งทะเลภาคตะวันออก (Eastern Seaboard)  ซึ่งมีระยะเวลาโครงการ 20 ปี  ตั้งแต่ พ.ศ. 2524-2544  ครอบคลุมพื้นที่ถึง 8.3 ล้านไร่  </p>
  	<p>โครงการพัฒนาพื้นที่ชายฝั่งทะเลภาคตะวันออกนี้  เป็นแผนพัฒนาที่รัฐบาลส่งเสริมให้เอกชนเข้ามาลงทุน โดยรัฐบาลจะอำนวยความสะดวกในด้านสาธารณูปโภคต่างๆให้แก่เอกชนและนักลงทุน  เพื่อต้นทุนต่ำ   เกิดการผลิตคล่องตัว  อันจะนำไปสู่ความสามารถในการแข่งขันกับต่างประเทศได้ตามนโยบายพัฒนาเศรษฐกิจของชาติ และได้กำหนดนโยบายการพัฒนาให้ผสานกับการวางผังเมือง การพัฒนาชุมชน การบริหารทางสังคม  และการควบคุมสภาวะแวดล้อมควบคู่ไปด้วย  พื้นที่เป้าหมายของโครงการนี้ในส่วนจังหวัดชลบุรี  คือบริเวณ “ท่าเรือแหลมฉบัง”   ซึ่งได้รับการพัฒนาให้เป็นแหล่งอุตสาหกรรมเพื่อการส่งออกขนาดย่อมและขนาดกลาง  ที่ปราศจากปัญหาสิ่งแวดล้อม  โดยในระยะเวลาที่ผ่านมาได้มีการพัฒนาแหลมฉบังให้เป็นเมืองท่าที่ทันสมัย   ประกอบด้วย  “ท่าเรือพาณิชย์”  เป็นท่าเรือน้ำลึกสำหรับขนถ่ายสินค้าประเภทบรรจุตู้เป็นหลัก  มีท่าเรือสินค้าประเภทตู้ 4 ท่า ท่าเรือสินค้าเกษตร 2 ท่า ท่าเทียบเรือชายฝั่ง 1 ท่า  มีการสร้างเขื่อนกันคลื่น ขุดร่องน้ำลึก  ตลอดจนโครงการก่อสร้างพื้นฐาน เช่น โรงพักสินค้า  พื้นที่ลานสินค้ากลางแจ้ง  อาคารที่ทำการ  ถนน  ทางรถไฟ  ฯลฯ  และมีสาธารณูปโภคครบถ้วน  เช่น  ไฟฟ้า  ประปา  โทรศัพท์ ฯลฯ นอกจากนี้ยังมีการจัดสร้าง  “นิคมอุตสาหกรรมแหลมฉบัง”  ซึ่งใช้เป็นเขตอุตสาหกรรมทั่วไป  เขตอุตสาหกรรมส่งออก  และเขตพาณิชยกรรม  ที่มีโครงสร้างพื้นฐาน  รวมถึงระบบสาธารณูปโภคและสาธารณูปการพร้อมสรรพ  โดยในปีงบประมาณเดือนตุลาคม  พ.ศ.  2554  ถึงเดือนกันยายน  พ.ศ.  2555  สำนักงานศุลกากรท่าเรือแหลมฉบัง  ได้รายงานสถิติการนำเข้า-ส่งออกสินค้า  ไว้ดังนี้  คือ  มีสินค้าขาเข้า   2,456,602.066   ล้านบาท  และสินค้าขาออก 3,254,236.902   ล้านบาท</p>
 	<br><br><br><br>
  
  </div>
  
  
  
  
    <div role="tabpanel" class="tab-pane" id="product">
  	<br>
  	<p><b>“ชลบุรี  เมืองแห่งสินค้าและเกษตรมั่งคั่ง  ผืนดินอุดมก่อเกิดพืชผลล้นหลาม  ดอกผลงอกงาม  วิถีเกษตรรุ่งเรือง  เมืองชลมีดีที่ท้องทะเล  กุ้ง  หอย  ปู  ปลา  มากล้นไม่เคยสิ้น  ทั้งสดทั้งแปรรูปน่าลิ้มลองผู้คนรู้จัก  อีกผลิตภัณฑ์งานฝีมือประณีตบรรจงจากความตั้งใจ  นำวัสดุท้องถิ่นมาใช้  ก่อเกิดสินค้างามเลื่องลือ”</b></p>
  	<img class="img-responsivec" src="img/product1.jpg" align="left" style="margin-right: 10px;"/>
  	<P><b>“ทะเลงาม  ข้าวหลามอร่อย  อ้อยหวาน  จักสานดี  ประเพณีวิ่งควาย”</b>  ถ้าลองสังเกตให้ดีจะพบว่า  แม้ในคำขวัญของจังหวัดชลบุรีเองก็กล่าวถึงสินค้าหรือของที่ระลึกเลื่องชื่อไว้ถึง 3 ชนิดแล้ว  ทั้งข้าวหลาม  อ้อย  และเครื่องจักสาน  บ่งบอกถึงศักยภาพการผลิตที่มีมาช้านาน  โดยยืนอยู่บนพื้นฐานทรัพยากรอันมั่งคั่งทั้งบนบกและในท้องทะเลของจังหวัดชลบุรี</P>
 	<p>ครั้งอดีตชลบุรีเป็นเมืองเกษตรกรรม  ผู้คนยังพึ่งพิงอยู่กับวิถีธรรมชาติอย่างสนิทแนบ  ใครอาศัยอยู่ใกล้ทะเลก็ประกอบอาชีพประมง  ใครอยู่ใกล้ป่าก็ได้เก็บหาผลิตผลจากพงไพรมาเลี้ยงชีพ  ใครอาศัยอยู่ใกล้กับที่ลุ่ม-ที่ราบก็มักทำนาทำสวน  ปลูกพืชไร่ตามความเหมาะสม  ควบคู่ไปกับการเลี้ยงสัตว์  ทั้งหมู  ไก่  เป็ด  โค  และกระบือ  นอกจากนี้ชาวชลบุรียังมีฝีมือในการประดิษฐ์ประดอยงานหัตถกรรมอันประณีตงดงามอีกด้วย  อาทิ  เครื่องจักสานพนัสนิคม  ซึ่งเป็นมรดกสืบสานมาจากบรรพบุรุษชาวลาวที่อพยพเข้ามา  ประดิษฐ์เป็นกระจาด  ฝาชี  กระบุง  ตะกร้า  ที่รองจาน  ฯลฯ  โดยแหล่งผลิตใหญ่อยู่ที่ตำบลไร่หลักทอง  และบริเวณถนนเกาะแก้วย่านตลาดเก่า  นอกจากนี้ยังมีศูนย์ส่งเสริมฝีมือการจักสานด้วยไม้ไผ่  ตามโครงการพระราชดำริ  อีกด้วย </p>
 	<p>ถัดมาคือ  ผลไม้ดินปั้นบ้านหนองพรหม  ตำบลนาเริก  อำเภอพนัสนิคม  มีการปั้นดินเหนียวเป็นรูปผลไม้ต่างๆในขนาดย่อส่วน  จากนั้นนำไปตากแดดจนแห้ง  แล้วทาสีให้เหมือนจริง  ใช้ประดับตกแต่งบ้าน  หรือเป็นของขวัญของฝากที่ถูกใจทั้งผู้ให้และผู้รับ  ส่วนงานฝีมือโดดเด่นอีกประเภทในปัจจุบัน คือ  กระดาษใยสับปะรดอำเภอศรีราชา  ตำบลหนองขาม  มีการนำใยสับปะรดมาแปรรูปเป็นผลิตภัณฑ์นานาชนิด ไม่ว่าจะเป็นกล่อง-ถุงใส่ไวน์  กล่องกระดาษโน้ต  กล่องกระดาษทิชชู  กล่องใส่เครื่องหอม  อับบั้มรูป  แฟ้มใส่เอกสาร  ชุดซองจดหมาย  ฯลฯ  โดยภายหลังได้มีการพัฒนาผลิตภัณฑ์นำกระดาษใยสับปะรดมาผสมกับกระดาษจากใยกล้วย  และกระดาษจากใยผักตบชวา  จนเกิดเป็นสินค้าแนวใหม่ที่ทนทานกว่าเก่า  อีกทั้งเป็นการนำวัสดุท้องถิ่นที่ไร้ค่ามาแปรรูปเพิ่มมูลค่าแก่ชุมชนได้เป็นอย่างดี แม้ปัจจุบันจะมีสินค้าสมัยใหม่เข้ามาตีตลาดเป็นจำนวนมาก  แต่งานฝีมืออันละเอียดอ่อนอันเกิดจากความอุตสาหะใส่ใจเหล่านี้  ก็ยังคงมีความโดดเด่นอยู่เสมอ  เมื่อผู้มาเยือนชลบุรีนึกถึงของฝากอันมีเอกลักษณ์ </p>
  	<p>สินค้าพื้นถิ่นของชลบุรีหลายชนิดได้รับการประกาศให้เป็นสินค้าหนึ่งผลิตภัณฑ์  หนึ่งตำบล (OTOP)  ที่นักท่องเที่ยวนิยมซื้อหา  ตัวอย่างเช่น  ข้าวกล้องจากตำบลสำนักบก  อำเภอเมืองชลบุรี  เป็นข้าวกล้องหอมมะลิคุณภาพดีที่สีด้วยเครื่องมือหมุนแบบโบราณ  จำหน่ายกันในราคาย่อมเยา  อุดมด้วยคุณค่าทางโภชนาการ  หรือถ้าใครที่ชอบทำขนมไทย  ก็ต้องไม่พลาดชิม  น้ำตาลปึกตำบลนาป่า  ของอำเภอเมืองชลบุรี  เป็นน้ำตาลปึกจากน้ำตาลสดที่ขึ้นชื่อในเรื่องความหอมหวาน  รสชาติดี  เหมาะจะนำไปทำขนมต่างๆ  หรือหากเป็นคนรักสวยรักงามและชอบดูแลสุขภาพ  แชมพูสมุนไพรตำบลหนองรี  อำเภอเมืองชลบุรี  ก็น่าจะเป็นสิ่งที่ควรทดลอง  เพราะเป็นแชมพูธรรมชาติ  ผสมจากประคำดีควาย  ว่านหางจระเข้  มะกรูด  และดอกอัญชัน  ใช้แล้วไม่มีรังแค  หนังศีรษะไม่คัน  เส้นผมไม่หงอกก่อนวัย  และช่วยปรับสภาพเส้นผมให้นิ่มสลวย  เป็นต้น</p>
  	<br><br><br><br>
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

<script src="js/jquery-1.10.2.min.js"></script>


        <script src="js/bootstrap.min.js"></script>
        <script>
            $(document).ready(function (){
                $(".tool").tooltip();
            });
            
        </script>
        

<script>
  $(function () {
    $('#myTab a:last').tab('show')
  })
</script>
        
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String id = (String) session.getAttribute("id"); %>
<html>
   <head>
      <title>With Pet</title>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      <link rel="stylesheet" href="assets/css/main.css" />
   </head>
   <body class="is-preload homepage">
      <div id="page-wrapper">

         <!-- Header -->
         <div id="header-wrapper">
            <header id="header" class="container">
              <!-- Logo -->
              <div id="logo">
               <img class="d-block mx-auto mb-4" src="logo.png" alt="" width="150" height="75">
              </div>
      
              <!-- Nav -->
              <nav id="nav">
               <ul>
                 <li class="current"><a href="index copy.html">홈</a></li>
                 <li>
                  <a href="index copy.html">호텔 찾기</a>
                  <ul>
                    <li><a href="#">지도별 검색</a></li>
                    <li><a href="#">종별 검색</a></li>
                  </li>
                  </ul>
                 </li>
                 <li><a href="petsitter/petsitter.html">펫시터 찾기</a></li>
                 <li><a href="right-sidebar.html">반려동물 용품</a></li>
                 <li><a href="no-sidebar.html">커뮤니티</a>
                  <ul>
                     <li><a href="#">보호자 커뮤니티</a></li>
                     <li><a href="#">보호자 대백과</a></li>
                    </li>
                    </ul>
                  </li>
                  <li>
                     <a href="#">위드펫과 함께하기</a>
                     <ul>
                        <li><a href="#">호텔 등록 신청</a></li>
                        <li><a href="#">펫시터 등록 신청</a>
                       </li>
                       </ul>
                     </li>
                     <li>
                     <% if(id != null) { %>
                        <a href="/WithPet_ver01/user/logout.jsp">로그아웃</a>
                        <%}else{ %>
                        <a href="/WithPet_ver01/user/login.jsp">로그인</a>
                        <%} %>
                        </li>
                        <li><a href="/WithPet_ver01/user/signin.jsp">회원가입</a></li>
                 </ul>
               </ul>
              </nav>
            </header>
           </div>

         <!-- Banner -->
            <div id="banner-wrapper">
               <div id="banner" class="box container">
                  <div class="row">
                     <div class="col-7 col-12-medium">
                        <h2>위드펫</h2>
                        <h1>안녕하세요, 동물을 사랑하는 위드펫입니다. 안녕하세요, 동물을 사랑하는 위드펫입니다.안녕하세요, 동물을 사랑하는 위드펫입니다.안녕하세요, 동물을 사랑하는 위드펫입니다.안녕하세요, 동물을 사랑하는 위드펫입니다.안녕하세요, 동물을 사랑하는 위드펫입니다.안녕하세요, 동물을 사랑하는 위드펫입니다.</h1>
                     </div>
                     <div class="col-13 col-20-medium">
                        <img class="d-block mx-auto mb-4" src="img/main4.png" alt="" width="400" height=300">
                     </div>
                  </div>
               </div>
            </div>

         <!-- Features -->
            <div id="features-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-4 col-12-medium">

                        <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img src="img/hotel1.jpg" alt="" /></a>
                              <div class="inner">
                                 <header>
                                    <h2>장기 숙박 EVENT</h2>
                                    <p>최대 3만원 할인</p>
                                 </header>
                                 <p>~4/30</p>
                                 <p>3박 이상 숙박시 쿠폰 지급</p>
                                 <button type="button" class="btn btn-outline" style="background-color: peachpuff;">쿠폰 받으러 가기</button>
                              </div>
                           </section>

                     </div>
                     <div class="col-4 col-12-medium">

                        <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img src="img/hotel2.jpg" alt="" /></a>
                              <div class="inner">
                                 <header>
                                    <h2>첫 예약 EVENT</h2>
                                    <p>2만원 추가 할인</p>
                                 </header>
                                 <p>~행사 진행 중</p>
                                 <p>처음 예약하는 모든 고객에게 쿠폰 지급</p>
                                 <button type="button" class="btn btn-outline" style="background-color: peachpuff;">쿠폰 받으러 가기</button>
                              </div>
                           </section>

                     </div>
                     <div class="col-4 col-12-medium">

                        <!-- Box -->
                           <section class="box feature">
                              <a href="#" class="image featured"><img src="img/snack.jpg" alt="" /></a>
                              <div class="inner">
                                 <header>
                                    <h2>오늘의 특가 간식</h2>
                                    <p>유기농 간식 3종 특가 SALE</p>
                                 </header>
                                 <p>~5월 한 달간</p>
                                 <p>유기농 간식 3종세트 구매하는 고객에게 50% 할인</p>
                                 <button type="button" class="btn btn-outline" style="background-color: peachpuff">구매하러 가기</button>
                              </div>
                           </section>

                     </div>
                  </div>
               </div>
            </div>

         <!-- Main -->
            <div id="main-wrapper">
               <div class="container">
                  <div class="row gtr-200">
                     <div class="col-4 col-12-medium">

                        <!-- Sidebar -->
                           <div id="sidebar">
                              <section class="widget thumbnails">
                                 <h3>Interesting stuff</h3>
                                 <div class="grid">
                                    <div class="row gtr-50">
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a></div>
                                       <div class="col-6"><a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a></div>
                                    </div>
                                 </div>
                                 <a href="#" class="button icon fa-file-alt">More</a>
                              </section>
                           </div>

                     </div>
                     <div class="col-8 col-12-medium imp-medium">

                        <!-- Content -->
                           <div id="content">
                              <section class="last">
                                 <h2>So what's this all about?</h2>
                                 <p>This is <strong>Verti</strong>, a free and fully responsive HTML5 site template by <a href="http://html5up.net">HTML5 UP</a>.
                                 Verti is released under the <a href="http://html5up.net/license">Creative Commons Attribution license</a>, so feel free to use it for any personal or commercial project you might have going on (just don't forget to credit us for the design!)</p>
                                 <p>Phasellus quam turpis, feugiat sit amet ornare in, hendrerit in lectus. Praesent semper bibendum ipsum, et tristique augue fringilla eu. Vivamus id risus vel dolor auctor euismod quis eget mi. Etiam eu ante risus. Aliquam erat volutpat. Aliquam luctus mattis lectus sit amet phasellus quam turpis.</p>
                                 <a href="#" class="button icon solid fa-arrow-circle-right">Continue Reading</a>
                              </section>
                           </div>

                     </div>
                  </div>
               </div>
            </div>

         <!-- Footer -->
            <div id="footer-wrapper">
               <footer id="footer" class="container">
                  <div class="row">
                     <div class="col-3 col-6-medium col-12-small">

                        <!-- Links -->
                           <section class="widget links">
                              <h3>개인정보 처리방침</h3>
                           </section>

                     </div>
                     <div class="col-3 col-6-medium col-12-small">

                        <!-- Links -->
                           <section class="widget links">
                              <h3>홈페이지 이용약관</h3>
                           </section>

                     </div>
                     <div class="col-3 col-6-medium col-12-small">

                        <!-- Links -->
                           <section class="widget links">
                              <h3>비회원 이용약관</h3>
                           </section>

                     </div>
                     <div class="col-3 col-6-medium col-12-small">

                        <!-- Contact -->
                           <section class="widget contact last">
                              <h3>Contact Us</h3>
                              <ul>
                                 <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                                 <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                                 <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                                 <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                                 <li><a href="#" class="icon brands fa-pinterest"><span class="label">Pinterest</span></a></li>
                              </ul>
                              <p>1234 Fictional Road<br />
                              Nashville, TN 00000<br />
                              (800) 555-0000</p>
                           </section>

                     </div>
                  </div>
                  <div class="row">
                     <div class="col-12">
                        <div id="copyright">
                           <ul class="menu">
                              <li>&copy; Untitled. All rights reserved</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </footer>
            </div>

         </div>

      <!-- Scripts -->

         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>

   </body>
</html>
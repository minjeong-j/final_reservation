<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	body {
		margin: 0;
		width: 1930px;
		}
	#footerDiv {
            background-color: #555;
            width: 100%;
            height: 600px;
        }
        .contact_box {
            margin: 0 auto;
            width: 1200px;
        }
        .contact_box::after {
            display: block;
            content: "";
            clear: both;
        }
        .contact_box h3 {
            font-size: 24px;
            padding: 40px 0;
            color: #ddd;
        }
            
        .c_box1 {
            float: left;
            width: 400px;
            height: 450px;
            margin-right: 200px;
        }
        .c_box1 div {
            margin-bottom: 50px;
        }
        .c_box1 div:first-child {}
        .c_box1 div:first-child p {
        	color: #ddd;
            line-height: 26px;
        }
        .c_box1 div:nth-child(2) {}
        .c_box1 div:nth-child(2) p {}
        .c_box1 div:nth-child(2) p:first-child {
        	color: #ddd;
        }
        .c_box1 div:nth-child(2) p:nth-child(2) {
            margin-top: 5px;
            color: #999;
        }
            
        .c_box1 div:nth-child(3) {}
        .c_box1 div:nth-child(3) p {}
        .c_box1 div:nth-child(3) p:first-child {
        	color: #ddd;
        }
        .c_box1 div:nth-child(3) p:nth-child(2) {
            margin-top: 5px;
            color: #999;
        }
            
        .c_box1 div:nth-child(4) {}
        .c_box1 div:nth-child(4) p {}
        .c_box1 div:nth-child(4) p:first-child {
        	color: #ddd;
        }
        .c_box1 div:nth-child(4) p:nth-child(2) {
            margin-top: 5px;
            color: #999;
        }

        .c_box2 {
            float: left;
            width: 600px;
            height: 450px;
        }
        .c_box2 form {}
        .c_box2 form fieldset {
            border: none;
        }
        .c_box2 form div {
            margin-bottom: 20px;
        }
        .c_box2 form div:last-of-type {
            margin-bottom: 0px;
        }
        .c_box2 form div label {
        	color: #ddd;
        }
        .c_box2 form div input {
            width: 100%;
            height: 50px;
            outline: none;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 1px solid rgb(224, 224, 224);
            box-sizing : border-box;
            color: #f7f7f7;
            background-color: transparent;
        }
        .c_box2 form div input:focus {
            border-color: cornflowerblue;
        }
        .c_box2 form div:nth-of-type(3) textarea {
            display: block;
            margin-top: 15px;
            width: 100%;
            height: 140px;
            background-color: transparent;
            outline: none;
            border-top: none;
            border-left: none;
            border-right: none;
            border-bottom: 1px solid rgb(224, 224, 224);
            color: #ddd;
        }
        .c_box2 form div:nth-of-type(3) textarea:focus {
            border-color: cornflowerblue;
        }
        .c_box2 form .btn_box {
            margin-top: 50px;
            text-align: right;
        }
        .c_box2 form .btn_box button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            color: #ddd;
            font-size: 18px;
        }
        .c_box2 form .btn_box button:hover {
            color: cornflowerblue;
        }
        .c_box2 form div input::placeholder {
            
        }
</style>
      <footer>
         <div id="footerDiv">
             <div class="footer_box">
                 <div class="contact_box">
                     <h3>Contact Us</h3>
                     <div class="c_box1">
                         <div>
                             <p>'와요(WAYO)'는 전문 펫시터를 통한 '방문 돌봄 서비스'를 제공하고 있습니다. 장기간의 여행이나 명절, 때로는 바쁜 업무로 직접 케어해줄 수 없을 때 도움의 손길이 되어드리겠습니다.</p>
                         </div>
                         <div>
                             <p>대표 전화</p>
                             <p>02-1234-5678</p>
                         </div>
                         <div>
                             <p>주소</p>
                             <p>서울특별시 강남구 테헤란로 124 4층</p>
                         </div>
                         <div>
                             <p>E-mail</p>
                             <p>wayo@itwill.com</p>
                         </div>
                     </div> <!-- c_box1 -->
                     <div class="c_box2">
                         <form name="contactForm" action="" method="post">
                             <fieldset>
                                 <div>
                                     <label>성함</label>
                                     <input type="text" placeholder="성함">
                                 </div>
                                 <div>
                                     <label>이메일</label>
                                     <input type="text" placeholder="연락 가능한 이메일을 써주세요">
                                 </div>
                                 <div>
                                     <label>메세지</label>
                                     <textarea placeholder="메세지를 써주세요"></textarea>
                                 </div>
                                 <div class="btn_box">
                                     <button id="submitBtn">전송</button>
                                 </div>
                             </fieldset>
                         </form>
                     </div> <!-- c_box2 -->
                 </div> <!-- cantact_box -->
             </div> <!-- footer_box -->
         </div> <!-- footer -->
     </footer>
</html>
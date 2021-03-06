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
                             <p>'??????(WAYO)'??? ?????? ???????????? ?????? '?????? ?????? ?????????'??? ???????????? ????????????. ???????????? ???????????? ??????, ????????? ?????? ????????? ?????? ???????????? ??? ?????? ??? ????????? ????????? ????????????????????????.</p>
                         </div>
                         <div>
                             <p>?????? ??????</p>
                             <p>02-1234-5678</p>
                         </div>
                         <div>
                             <p>??????</p>
                             <p>??????????????? ????????? ???????????? 124 4???</p>
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
                                     <label>??????</label>
                                     <input type="text" placeholder="??????">
                                 </div>
                                 <div>
                                     <label>?????????</label>
                                     <input type="text" placeholder="?????? ????????? ???????????? ????????????">
                                 </div>
                                 <div>
                                     <label>?????????</label>
                                     <textarea placeholder="???????????? ????????????"></textarea>
                                 </div>
                                 <div class="btn_box">
                                     <button id="submitBtn">??????</button>
                                 </div>
                             </fieldset>
                         </form>
                     </div> <!-- c_box2 -->
                 </div> <!-- cantact_box -->
             </div> <!-- footer_box -->
         </div> <!-- footer -->
     </footer>
</html>
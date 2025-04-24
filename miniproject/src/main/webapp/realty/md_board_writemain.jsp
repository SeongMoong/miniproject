<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <section class="sub">
        <p>추천분양 정보 게시판</p>
        <div class="boards">이번주 신규 매물정보를 한눈에 확인하실 수 있습니다.</div>
        <div class="info_board">
          <ul>
            <li>제&nbsp;&nbsp;&nbsp;목</li>
            <li><input type="text" class="board_in2" name="bunyang_title"></li>
            <li>글쓴이</li>
            <li><input type="text" class="board_in1" value="${suser.bname}"></li>
            <li>썸네일 이미지</li>
            <li><input type="file" name="bunyang_img"></li>
            <li class="litext">내&nbsp;&nbsp;&nbsp;용</li>
            <li class="litext">
                <textarea id="board_text" name="bunyang_subject">
                    
                </textarea>
            </li>
          </ul>
        </div>
        <div class="board_btn">
            <input type="button" value="등&nbsp;&nbsp;&nbsp;록" class="btns">
        </div>
    </section>
    <script>
    window.onload = function(){
        CKEDITOR.replace('board_text',{
            height : 360
        });
    };
    </script>
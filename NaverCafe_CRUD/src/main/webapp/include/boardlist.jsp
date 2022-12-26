<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="boardlist_wrap">
        <div class="boardlist_cb">
            <div class="boardlist_box">
                <div class="boardlist_tit">
                    <h3><a href="#">전체글보기</a></h3> <br>
                </div>
            </div>
            <div class="boardlist_list_area ">
                <span class="boardlist_total"><b>4</b>개의 글</span>
                <div class="boardlist_style ">
                    <div class="boardlist_checkbox cf">
                        <ul>
                            <li class="boardlist_text"><input type="checkbox"></li>
                            <li class="boardlist_text"><a href="#">공지숨기기</a></li>
                            <li><a href="#"><i class="fa fa-list-ul" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-play-circle-o" aria-hidden="true"></a></i></li>
                            <li><a href="#"><i class="fa fa-th-large" aria-hidden="true"></a></i></li>
                            <li><a href="#"><i class="fa fa-file-text" aria-hidden="true"></i></a></li>
                            <li>
                                <select name="" id="board_list_ae">
                                    <option value="2"><a href="#">15개씩</a></option>
                                    <option value="3">5개씩</option>
                                    <option value="4">10개씩</option>
                                    <option value="5">15개씩</option>
                                    <option value="6">20개씩</option>
                                    <option value="7">30개씩</option>
                                    <option value="8">40개씩</option>
                                    <option value="9">50개씩</option>
                                </select>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="boardlist_list">
                <table>
                    <thead>
                        <tr>
                            <th><b>제목</b></th>
                            <th><b>작성자</b></th>
                            <th><b>작성일</b></th>
                            <th><b>조회</b></th>
                        </tr>
                    </thead>
                    <tr>
                        <td class="boardlist_td">
                            <div class="boardlist_dot">
                                <span><a href="#">신고게시판</a></span>
                                <a href="#">신고합니다</a>
                            </div>
                        </td>
                        <td class="boardlist_id"><a href="#">id</a></td>
                        <td class="boardlist_date">date</td>
                        <td class="boardlist_cnt">cnt</td>
                    </tr>
                    <tr>
                        <td class="boardlist_td">
                            <div class="boardlist_dot">
                                <span><a href="#">질문게시판</a></span>
                                <a href="#">질문있어요</a>
                            </div>
                        </td>
                        <td class="boardlist_id"><a href="#">id</a></td>
                        <td class="boardlist_date">date</td>
                        <td class="boardlist_cnt">cnt</td>
                    </tr>
                    <tr>
                        <td class="boardlist_td">
                            <div class="boardlist_dot">
                                <span><a href="#">자유게시판</a></span>
                                <a href="#">자유게시판</a>
                                <a href="#" style="color:red">[댓글]</a>
                            </div>
                        </td>
                        <td class="boardlist_id"><a href="#">id</a></td>
                        <td class="boardlist_date">date</td>
                        <td class="boardlist_cnt">cnt</td>
                    </tr>
                    <tr>
                        <td class="boardlist_td">
                            <div class="boardlist_dot">
                                <span><a href="#">공지사항&nbsp;&nbsp;&nbsp;</a></span>
                                <a href="#">CRUD Portfolio 카페를 시작합니다.</a>
                            </div>
                        </td>
                        <td class="boardlist_id"><a href="#">id</a></td>
                        <td class="boardlist_date">date</td>
                        <td class="boardlist_cnt">cnt</td>
                    </tr>
                </table>
            </div>
            <div class="boardlist_prev_next">
                <a href="#" class="on">1</a>
            </div>
            <div class="boardlist">
                <div class="boardlist_select">
                    <select name="" id="board_title">
                            <option value="2">전체기간</option>
                            <option value="3">1일</option>
                            <option value="4">1주</option>
                            <option value="5">1개월</option>
                            <option value="6">6개월</option>
                            <option value="7">1년</option>
                    </select>
                </div>
                <div class="boardlist_select">
                    <select name="" id="board_title">
                            <option value="2">게시물 + 댓글</option>
                            <option value="3">제목만</option>
                            <option value="4">글작성자</option>
                            <option value="5">댓글내용</option>
                            <option value="6">댓글작성자</option>
                    </select>
                </div>
                <div class="boardlist_input">
                    <input type="text" placeholder="검색어를 입력해주세요.">
                </div>
                <div class="boardlist_btn">
                    <button><a href="#">검색</a></button>
                </div>
            </div>
        </div>
    </div>
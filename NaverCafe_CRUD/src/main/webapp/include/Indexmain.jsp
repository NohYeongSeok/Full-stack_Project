<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>    
<div class="index_top_top">
                    <div class="index_top">
                        <h1>카페에 오신것을 환영합니다.</h1>
                        <p>혼자보단 둘이, 둘보단 셋이 더 재미있을 거예요</p>
                        <p>함께 재미있는 이야기 나누며 행복한 카페를 만들어가요!</p>
                    </div>
                </div>
                <div class="index_full_view">
                    <div class="index_full_view_top">
                        <h2>전체글보기</h2>
                        <p>더보기 ></p>
                    </div>
                    <table class="index_full_view_main">
                        <!-- JSTL 사용 -->
                        <c:forEach var="bean" items="${bbean }">
                            <tr class="list">
                                <td><i class="fa fa-circle" aria-hidden="true"></i>${bean.title }</td>
                                <td>${bean.id }</td>
                                <td>${bean.regdate }</td>
                                <td>${bean.cnt }</td>
                            </tr>
						</c:forEach>
                    </table>
                </div>
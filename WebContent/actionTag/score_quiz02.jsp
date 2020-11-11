<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	앞에서 넘어온 폼값을 받아서 평균을 구한다.
	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
	평균이 60이하면 score_quiz04로 이동해서 "~님 불합격입니다."
	조건 : session을 사용하지 않는다.
	*/
	
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	double avg = (int)((kor + eng + math) / 3.0 * 100) / 100.0;
	
	if(kor < 0 || kor > 100 || eng < 0 || eng > 100 || math < 0 || math > 100){
		request.setAttribute("msg", "점수 범위는 100점 만점입니다.");
	}
	
	request.setAttribute("name", name);
	request.setAttribute("avg", avg);
	
	if(avg >= 60){
		request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	}else
		request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	
%>

<%--	
	
	if(kor < 0 || kor > 100 || eng < 0 || eng > 100 || math < 0 || math > 100){
%>
		<jsp:forward page="score_quiz01.jsp" >
			<jsp:param name="msg" value="점수 범위는 100점 만점입니다." />
		</jsp:forward>
<%		
	}
	
	
	
	if(avg >= 60){
%>
		<jsp:forward page="score_quiz03.jsp">
			<jsp:param value="<%=avg %>" name="avg"/>
		</jsp:forward>
<%		
	} else {
%>
		<jsp:forward page="score_quiz04.jsp">
			<jsp:param name="avg" value="<%=avg %>"/>
		</jsp:forward>
<%
	}
%>
 --%>
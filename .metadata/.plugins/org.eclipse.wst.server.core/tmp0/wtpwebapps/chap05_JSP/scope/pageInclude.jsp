<%@page import="kr.co.ezenac.dto.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h4>Include</h4>
<%
	int pInteger2 = (Integer)(pageContext.getAttribute("pageInteger"));	
	Person pPerson2 = (Person)pageContext.getAttribute("pagePerson");
%>
<ul>
	<li>Integer 객체(include) : <%= pInteger2 %> </li>
	<li>String 객체(include) : <%= pageContext.getAttribute("pageString") %></li>
	<li>Person 객체(include) : <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>
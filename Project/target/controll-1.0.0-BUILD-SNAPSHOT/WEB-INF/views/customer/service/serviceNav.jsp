<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<nav class="navbar text-center">
	<a class="btn btn${target == 'general' ? '-secondary' : '-outline-secondary'} col-sm-4" href="${path}/customer/service/general">일반상담</a>
	<a class="btn btn${target == 'rental' ? '-secondary' : '-outline-secondary'} col-sm-4" href="${path}/customer/service/rental">렌터카상담</a>
	<a class="btn btn${target == 'info' ? '-secondary' : '-outline-secondary'} col-sm-4" href="${path}/customer/service/info">상담안내</a>
</nav>
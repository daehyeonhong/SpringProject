<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<h1>kakaoPay api 이용하기</h1>
<form method="post" action="/payment/kakaoPay">
	<input name="users_id" value="1" />
	<input name="period" value="1" />
	<input name="sc_seq" value="1" />
	<input name="total_amount" value="1" />
	<button>카카오페이로 결제하기</button>
</form>
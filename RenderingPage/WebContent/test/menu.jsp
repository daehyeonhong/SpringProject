<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Roboto');

/*body 초기화*/
body {
  margin: 0;
  padding: 0;
  font-family: "Roboto", serif;
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  overflow-x: hidden;  
}

h1 {
  margin: 2em 0 1.5em 0;
}

nav {
  width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
  background: linear-gradient(90deg, #051937, #004d7a, #008793, #00bf72, #a8eb12);
}

ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}

#main-menu > li {
  float: left;
  position: relative;
}

#main-menu > li > a {
  font-size: 0.85rem;
  color: rgba(255,255,255,0.85);
  text-align: center;
  text-decoration: none;
  letter-spacing: 0.05em;
  display: block;
  padding: 14px 36px;
  border-right: 1px solid rgba(0,0,0,0.15);
  text-shadow: 1px 1px 1px rgba(0,0,0,0.2);
}

#main-menu > li:nth-child(1) > a {
  border-left: 1px solid rgba(0,0,0,0.15);
}

#sub-menu {
  position: absolute;
  background: #182952;
  opacity: 0;
  visibility: hidden;
  transition: all 0.15s ease-in;
}

#sub-menu > li {
  padding: 16px 28px;
  border-bottom: 1px solid rgba(0,0,0,0.15);
}

#sub-menu > li >  a {
  color: rgba(255,255,255,0.6);
  text-decoration: none;
}

#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}

#sub-menu > li >  a:hover {
 text-decoration: underline;
}

section {
  column-width: 15em;
  background: #dadadf;
  padding: 2em 12em;
}
</style>
</head>
<body>
	<h1>Pure css drop down menu</h1>
	<nav role="navigation">
		<ul id="main-menu">
			<li><a href="#">MENU1</a></li>
			<li><a href="#">MENU2</a>
				<ul id="sub-menu">
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
				</ul></li>
			<li><a href="#">MENU3</a>
				<ul id="sub-menu">
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
				</ul></li>
			<li><a href="#">MENU4</a>
				<ul id="sub-menu">
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
					<li><a href="#" aria-label="subemnu">submenu</a></li>
				</ul></li>
			<li><a href="#">MENU5</a></li>
			<li><a href="#">MENU6</a></li>
		</ul>
	</nav>
	<section>
		<h2>Title</h2>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos
			fugiat dolor velit, voluptatum vel enim consectetur eligendi
			molestias quaerat magnam voluptatibus corrupti eos quae praesentium
			voluptate tempora, provident voluptatem voluptates tenetur odio
			perspiciatis quisquam eum? Consequuntur quaerat earum natus minima
			soluta non quam temporibus beatae, explicabo repudiandae nihil? Eaque
			obcaecati, nisi laudantium rem consectetur eos quas. A quaerat libero
			ipsam, dolor quas rem est suscipit nemo accusamus corrupti, quisquam
			ex tenetur sed. Voluptas, veniam veritatis aperiam quos, optio quo
			nihil, iusto inventore illum porro quae id. Similique reiciendis
			dolorem debitis quia dignissimos ea fugit aut! Saepe vel accusantium
			et adipisci! Soluta reprehenderit quidem odio vel a labore officiis
			quisquam libero ipsum. Nobis, natus voluptatum consequatur officia
			ipsa tempora aut veritatis cumque aperiam beatae velit! Non veniam
			aliquid at aut iste odit error, omnis rerum commodi odio voluptas, ex
			sunt, tempore laborum natus aspernatur unde autem enim nesciunt
			suscipit dolorum. Fugiat expedita eos saepe sapiente, recusandae
			distinctio placeat corporis, pariatur id dolorum libero asperiores
			illum laborum obcaecati ad quia ullam non porro magni accusamus est
			nulla soluta magnam! Quae obcaecati autem officiis. Natus minima ab,
			accusamus a quia in, praesentium vel eligendi ratione, esse et sit
			commodi! Quis id magnam vero! atus aspernatur unde autem enim
			nesciunt suscipit dolorum. Fugiat expedita eos saepe sapiente,
			recusandae distinctio placeat corporis, pariatur id dolorum libero
			asperiores illum laborum obcaecati ad quia ullam non porro magni
			accusamus est nulla soluta magnam! Quae obcaecati autem officiis.
			Natus minima ab, accusamus a quia in, praesentium vel eligendi
			ratione, esse et sit commodi! Quis id magnam vero!</p>
	</section>

</body>
</html>
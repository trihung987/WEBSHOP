<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Green Garden</title>
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="<c:url value='/views/img/logo.png'/>">
    <!-- Link css -->
    <link rel="stylesheet" href="/frontend/css/style.css">
    <!-- Font AWESOME -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
	<style>
	
	/* Import font Montserrat, Poppins, Kanit */
@import url('https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Kanit:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Playwrite+HR+Lijeva:wght@100..400&display=swap');

:root {
  --color-primary-blue: #024CAA;
  --color-primary-light-gray: #E4E0E1;
  --font-primary: 'Poppins', sans-serif;
  --font-logo: 'Kanit', sans-serif;
  --color-dark-1 : #1E1E1E;
  --color-dark-2 : #6d6d6d;
}

* { 
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
body {
  font-style: 16px;
  font-family: var(--font-primary);
}
ul {
  list-style: none;
}
a{
  text-decoration: none;
}
.container { 
  max-width: 1920px;
  margin: 0 auto;
  padding: 0 15px;
}
/* nav */
.nav {
  position: fixed;
  width: 100%;
  height: 70px;
  background-color: var(--color-primary-light-gray);
  box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
  z-index: 10;
}
.nav-container {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.nav-left {
  display: flex;
  align-items: center;
}
.nav-logo {
  display: flex;
  flex-direction: row;
  align-items: center;

}
.nav-logo h1 {
  font-family: var(--font-logo);
  font-size: 34px;
  color: black;
  font-weight: 600;
  margin-right: 200px;
  margin-left: 10px;
}
.nav-list {
  display: flex;
  flex-direction: row;
  justify-content: center;
  align-items: center;
  margin-left: 30px;
}
.nav-item {
  margin: 0px 6px;
}
.nav-link {
  font-family: 'Kanit', sans-serif;
  padding: 7px 10px;
  color: black;
  font-weight: 500;
  font-size: 20px;
}
.nav-link:hover {
  color: var(--color-primary-blue);
}
/* .active { 
  color: var(--color-primary-2);
} */
.nav-right{
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 10px;
}
.nav-right-icon {
  display: flex;
  align-items: center;
  justify-content: space-around;
  margin-right: 50px;
  gap: 20px;
}
.btn {
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 10px;
}
/* Profile User */
.action-user {
  z-index: 2;
}

.action-user .profile {
  position: relative;
  width: 40px;
  height: 40px;
  border-radius: 50%;
  overflow: hidden;
  cursor: pointer;
}

.action-user .profile img {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.action-user .menu-user {
  position: absolute;
  right: 50px;
  padding: 10px 20px;
  background: #fff;
  width: 200px;
  box-sizing: 0 5px 25px rgba(0, 0, 0, 0.1);
  border-radius: 15px;
  transition: 0.5s;
  visibility: hidden;
  opacity: 0;
  border: 1px solid var(--color-primary-blue);
}

.action-user .menu-user.active {
  top: 60px;
  visibility: visible;
  opacity: 1;
}

.action-user .menu-user::before {
  content: "";
  position: absolute;
  top: -5px;
  right: 28px;
  width: 20px;
  height: 20px;
  background: #fff;
  transform: rotate(45deg);
}

.action-user .menu-user h3 {
  width: 100%;
  text-align: center;
  font-size: 18px;
  padding: 20px 0;
  font-weight: 500;
  color: #555;
  line-height: 1.5em;
}

.action-user .menu-user h3 span {
  font-size: 14px;
  color: #cecece;
  font-weight: 300;
}

.action-user .menu-user ul li {
  list-style: none;
  padding: 16px;
  border-top: 1px solid rgba(0, 0, 0, 0.05);
  display: flex;
  align-items: center;
}

.action-user .menu-user ul li svg {
  max-width: 20px;
  margin-right: 10px;
  opacity: 0.5;
  transition: 0.5s;
}

.action-user .menu-user ul li:hover img {
  opacity: 1;
}

.action-user .menu-user ul li a {
  display: inline-block;
  text-decoration: none;
  color: #555;
  font-weight: 500;
  transition: 0.5s;
}

.action-user .menu-user ul li:hover a {
  color: #ff5d94;
}
.menu-user ul li svg {
  width: 20px;
}
/*End profile user*/
/* test */

.btn button {
  position: relative;
  padding: 8px;
  border-radius: 7px;
  border: 1px solid rgb(61, 106, 255);
  font-size: 12px;
  text-transform: uppercase;
  font-weight: 700;
  letter-spacing: 2px;
  background: transparent;
  color: #fff;
  overflow: hidden;
  box-shadow: 0 0 0 0 transparent;
  -webkit-transition: all 0.2s ease-in;
  -moz-transition: all 0.2s ease-in;
  transition: all 0.2s ease-in;
}
.text-btn { 
  font-family: 'Montserrat', sans-serif;
  color: black;
}

.btn button:hover {
  background: rgb(61, 106, 255);
  box-shadow: 0 0 30px 5px rgba(0, 142, 236, 0.815);
  -webkit-transition: all 0.2s ease-out;
  -moz-transition: all 0.2s ease-out;
  transition: all 0.2s ease-out;
}

.btn button:hover::before {
  -webkit-animation: sh02 0.5s 0s linear;
  -moz-animation: sh02 0.5s 0s linear;
  animation: sh02 0.5s 0s linear;
}

.btn button::before {
  content: '';
  display: block;
  width: 0px;
  height: 86%;
  position: absolute;
  top: 7%;
  left: 0%;
  opacity: 0;
  background: #fff;
  box-shadow: 0 0 50px 30px #fff;
  -webkit-transform: skewX(-20deg);
  -moz-transform: skewX(-20deg);
  -ms-transform: skewX(-20deg);
  -o-transform: skewX(-20deg);
  transform: skewX(-20deg);
}

@keyframes sh02 {
  from {
    opacity: 0;
    left: 0%;
  }

  50% {
    opacity: 1;
  }

  to {
    opacity: 0;
    left: 100%;
  }
}

.btn button:active {
  box-shadow: 0 0 0 0 transparent;
  -webkit-transition: box-shadow 0.2s ease-in;
  -moz-transition: box-shadow 0.2s ease-in;
  transition: box-shadow 0.2s ease-in;
}


/* Dropdown shop */
.menu-shop {
  font-size: 16px;
  line-height: 1.6;
  color: #000000;
  width: fit-content;
  display: flex;
  list-style: none;
}

.menu-shop a {
  text-decoration: none;
}

.menu-shop .link-shop {
  position: relative;
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 12px;
  padding: 12px 36px;
  border-radius: 16px;
  overflow: hidden;
  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.menu-shop .link-shop::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: -1;
  transform: scaleX(0);
  transform-origin: left;
  transition: transform 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.menu-shop .link-shop svg {
  width: 14px;
  height: 14px;
  fill: #000000;
  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.menu-shop .item-shop {
  position: relative;
}

.menu-shop .item-shop .submenu-shop {
  display: flex;
  flex-direction: column;
  align-items: center;
  position: absolute;
  top: 100%;
  border-radius: 0 0 16px 16px;
  left: 0;
  width: 250px;
  overflow: hidden;
  border: 1px solid #cccccc;
  opacity: 0;
  visibility: hidden;
  transform: translateY(-12px);
  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
  z-index: 1;
  pointer-events: none;
  list-style: none;
}

.menu-shop .item-shop:hover .submenu-shop {
  opacity: 1;
  visibility: visible;
  transform: translateY(0);
  pointer-events: auto;
  border-top: transparent;
  background-color: #f1f1f1;
}

.menu-shop .item-shop:hover .link-shop {
  /* color: #ffffff; */
  border-radius: 16px 16px 0 0;
}

.menu-shop .item-shop:hover .link-shop::after {
  transform: scaleX(1);
  transform-origin: right;
}

.menu-shop .item-shop:hover .link-shop svg {
  /* fill: #ffffff; */
  transform: rotate(-180deg);
  fill: var(--color-primary-blue);
}

.submenu-shop .submenu-item-shop {
  width: 100%;
  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.submenu-shop .submenu-link-shop {
  display: block;
  padding: 12px 24px;
  width: 100%;
  position: relative;
  text-align: center;
  align-items: center;
  transition: all 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.submenu-shop .submenu-item-shop:last-child .submenu-link-shop {
  border-bottom: none;
}

.submenu-shop .submenu-link-shop::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  transform: scaleX(0);
  width: 100%;
  height: 100%;
  background-color: var(--color-primary-blue);
  z-index: -1;
  transform-origin: left;
  transition: transform 0.48s cubic-bezier(0.23, 1, 0.32, 1);
}

.submenu-shop .submenu-link-shop:hover:before {
  transform: scaleX(1);
  transform-origin: right;
}

.submenu-shop .submenu-link-shop:hover {
  color: #ffffff;
}


/*End Dropdown shop */


/*test */
.header-container{
  width: 100%;
  height: 100vh;
  background-image: url(<c:url value='/views/img/bgplant.jpg'/>);
  background-size: cover;
  background-position-y: -30%;
  border-radius: 10px;
}

.header-content {
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: flex-start;
  align-items: center;
  /* grid-template-columns: repeat(autofit, minmax(300px, 1fr));
  grid-gap: 20px; */
  padding: 0px 50px;
}
.header-main-title {
  font-size: 42px;
  /* color: #859F3D; */
  color: #024CAA;
  font-weight: 800;
  line-height: 60px;
}
.header-items{
  margin-top: 15px;
  margin-bottom: 30px;
  display: flex;
}
.header-item:not(:first-child) {
  margin-left: 30px;
}
.header-item-number {
  font-size: 25px;
  font-weight: 500;
  color: #F95454;
}
.header-form {
  padding: 10px;
  background-color: #f3f3f3;
  width: 300px;
  display: flex;
  justify-content: space-between;
  align-items: center;
  border-radius: 10px;
}
.header-form:hover {
  border: 1px solid var(--color-primary-blue);
}
.header-form-input {
  padding: 7px 10px;
  width: 250px;
  outline: none;
  border: none;
  background-color: #f3f3f3;
}
.fa-magnifying-glass { 
  padding: 10px;
  border-radius: 10px;
  background-color: var(--color-primary-light-gray);
}
.fa-magnifying-glass:hover {
  background-color: var(--color-primary-blue);
  color: white;
}
.section-2 {
  background-color: var(--color-primary-light-gray);
}
/* Slider */

.banner {
  width: 100%;
  height: 100vh;
  text-align: center;
  overflow: hidden;
  position: relative;
}

.banner .slider {
  position: absolute;
  width: 200px;
  height: 250px;
  top: 15%;
  left: calc(50% - 100px);
  transform-style: preserve-3d;
  transform: perspective(1000px);
  animation: autoRun 20s linear infinite;
  z-index: 2;
}

@keyframes autoRun {
  from{
    transform: perspective(1000px) rotateX(-10deg) rotateY(0deg);
  }to{
    transform: perspective(1000px) rotateX(-10deg) rotateY(360deg);
  }
}

.banner .slider .item{
  position: absolute;
  inset: 0 0 0 0 ;
  transform: 
    rotateY(calc((var(--position) - 1) * (360 / var(--quantity)) * 1deg))
    translateZ(550px);
}
.banner .slider .item img {
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.banner .slider-content {
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: min(1400px, 100vw);
  height: max-content;
  padding-bottom: 100px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  align-items: center;
  z-index: 1;
}
.banner .slider-content h1{
  font-size: 7em;
  line-height: 1em;
  color: #25283B;
  position: relative;
}
.banner .slider-content h1::after{
  position: absolute;
  inset: 0 0 0 0;
  content: attr(data-content);
  z-index: 2;
  -webkit-text-stroke:1px #d2d2d2;
  color: transparent;
}
.banner .slider-content .author{
  font-family: 'Poppins', sans-serif;
  text-align: right;
  max-width: 200px;
}
.banner .slider-content .author p{
  font-style: 3em;
}
.banner .slider-content .model{
  background-image: url(<c:url value='/views/img/gcenter.png'/>);
  width: 100%;
  height: 75vh;
  position: absolute;
  bottom: 0;
  left: 0;
  background-size: auto 130%;
  background-repeat: no-repeat;
  background-position: top center;
  z-index: 1;  
}
/* End slider */
/* section half */

.section-half {
  position: relative;
  height: 50vh;
  margin-bottom: 20px;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
}
.author-introduce{
  font-size: 40px;
  font-family: "Kanit", cursive;
  text-transform: uppercase;;
}
.creator { 
  width: 100%;
  display: flex;
  justify-content: space-around;
  flex-direction: row;
}
.author-creator {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  cursor: pointer;
  
}
.author-creator h2 {
  font-size: 22px;
  font-family: "Kanit", cursive;
}
.img-author img{
  width: 200px;
  height: 200px;
  border-radius: 50%;
}
.group-author {
  position: relative;
  transition: 400ms;
}
.group-author:hover .tooltip {
  opacity: 1;
  transform: translateY(0);
}
.group-author:hover .tooltip-3 {
  opacity: 1;
  transform: translateY(0);
}
.creator .group-author:hover {
  transform: scale(1.1, 1.1);
}

.creator:hover > .group-author:not(:hover) {
  filter: blur(10px);
  transform: scale(0.9, 0.9);
}
.fb-author {
  text-decoration: none;
  color: white;
}
.fb-author:hover {
  color: var(--color-primary-blue);
}

/* end section half */

/* Section 3 */

.section-3,.section-4 {
  height: 100vh;
}
.section-4 {
  background-color: var(--color-primary-light-gray);
}
.show-container-3{
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: 1fr 2fr;
}
.show-container-4{
  width: 100%;
  height: 100%;
  display: grid;
  grid-template-columns: 2fr 1fr;
}

.show-item {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 0 50px;
}
.show-h2 {
  font-style: 32px;
  font-family: "Playwrite HR Lijeva", cursive;
}
.show-p{
  margin-top: 15px;
  margin-bottom: 25px;
}
.btn-s4 { 
  margin-right: 200px;
}
.show-btn{
  width: fit-content;
  display: flex;
  padding: 12px;
  cursor: pointer;
  gap: 0.4rem;
  font-weight: bold;
  border-radius: 10px;
  text-shadow: 2px 2px 3px rgb(136 0 136 / 50%);
  background: linear-gradient(15deg, #880088, #aa2068, #cc3f47, #de6f3d, #f09f33, #de6f3d, #cc3f47, #aa2068, #880088) no-repeat;
  background-size: 300%;
  color: #fff;
  border: none;
  background-position: left center;
  box-shadow: 0 30px 10px -20px rgba(0,0,0,.2);
  transition: background .3s ease;
}

.show-btn:hover {
  background-size: 320%;
  background-position: right center;
}

.group {
  position: relative;
}

.group:hover .tooltip {
  opacity: 1;
  transform: translateY(0);
}

.tooltip {
  width: 290px;
  position: absolute;
  left: 40%;
  transform: translateX(-50%) translateY(0.5rem);
  opacity: 0;
  transition: opacity 0.1s ease, transform 0.1s ease;
  bottom: 80%;
  margin-bottom: 0.5rem;
}
.tooltip-3 {
  width: 290px;
  position: absolute;
  right: 40%;
  transform: translateX(-50%) translateY(0.5rem);
  opacity: 0;
  transition: opacity 0.1s ease, transform 0.1s ease;
  bottom: 80%;
  margin-bottom: 0.5rem;
}
.tooltip-content {
  background-color: #2d3748; /* Slate 800 */
  color: white;
  border-radius: 0.375rem; /* Rounded-lg */
  padding: 1rem;
  max-width: 20rem; /* Max-width-xs */
}

.tooltip-title {
  font-weight: bold;
  font-size: 1rem; /* text-md */
  margin-bottom: 0.25rem;
}

.tooltip-description {
  font-size: 0.875rem; /* text-sm */
}


.blueprint-item {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
}
.blueprint-item img { 
  position: absolute;
}
.blueprint-item-img {
  width: 100%;
}
.blueprint-item-img-2{
  height: 300px;
  width: 500px;
  top: 320px;
  left: 420px;
}
.blueprint-item-img-3{
  left: 320px;
  z-index: 1;
}
.blueprint-item-img-4{
  height: 300px;
  width: 500px;
  top: 420px;
  right: 480px;
  z-index: 2;
}
/* End Section 3 */

/* Section feature - p1 */
.secion-p1 {
  padding: 40px 80px;
}
/* End Section feature - p1 */
	</style>
    <div class="container header-container">
        
        <div class="header-content">
            <div class="wrapper">
                <h1 class="header-main-title">Buy your dream gundams</h1>
                <div class="header-items">
                    <div class="header-item">
                        <p class="header-item-number">50+</p>
                        <p class="header-item-text">Gundam Species</p>
                    </div>
                    <div class="header-item">
                        <p class="header-item-number">100+</p>
                        <p class="header-item-text">Customers</p>
                    </div>
                </div>
                <!-- Search -->
                <form action="#" class="header-form">
                    <input type="text" class="header-form-input" placeholder="What are you looking for ?">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </form>
                <!-- End Search -->
            </div>
        </div>
    </div>
    <section class="section-2">
        <div class="banner">
            <div class="slider" style="--quantity: 10">
                <div class="item" style="--position: 1"><img src="<c:url value='/views/img/g1.jpg'/>" alt=""></div>
                <div class="item" style="--position: 2"><img src="<c:url value='/views/img/g2.jpg'/>" alt=""></div>
                <div class="item" style="--position: 3"><img src="<c:url value='/views/img/g3.jpg'/>" alt=""></div>
                <div class="item" style="--position: 4"><img src="<c:url value='/views/img/g4.jpg'/>" alt=""></div>
                <div class="item" style="--position: 5"><img src="<c:url value='/views/img/g5.jpg'/>" alt=""></div>
                <div class="item" style="--position: 6"><img src="<c:url value='/views/img/g6.jpg'/>" alt=""></div>
                <div class="item" style="--position: 7"><img src="<c:url value='/views/img/g7.jpg'/>" alt=""></div>
                <div class="item" style="--position: 8"><img src="<c:url value='/views/img/g8.jpg'/>" alt=""></div>
                <div class="item" style="--position: 9"><img src="<c:url value='/views/img/g9.jpg'/>" alt=""></div>
                <div class="item" style="--position: 10"><img src="<c:url value='/views/img/g10.jpg'/>" alt=""></div>
            </div>
            <div class="slider-content">
                <h1 data-content="Build your own Gundam">Build your own Gundam</h1>
                <div class="author">
                    <p>Nguyễn Thành Đạt</p>
                    <p>Vương Trí Hùng</p>
                    <p>Đồng Gia Sang</p>
                </div>
                <div class="model"></div>
            </div>
        </div>
    </section>
    <section class="section-p1">
        <div class="fe-box">
            <img src="" alt="">
            <h6>Free Shipping</h6>
        </div>
    </section>
    
    <section class="section-3">
        <div class="container show-container-3">
            <div class="show-item">
                <h2 class="show-h2">
                    RX-78-2 - Bản thiết kế Gundam tiêu biểu
                </h2>
                <p class="show-p">
                    Sẽ là sơ suất lớn nếu danh sách này thiếu bản thiết kế Gundam 
                    RX-78-2! Có thể bạn không ấn tượng quá nhiều với cái tên 
                    RX-78-2 nhưng ắt hẳn ít nhiều thì bạn cũng từng nghe qua Gundam
                    'cụ tổ', đó chính là RX-78-2 đấy!
                </p>
                <div class="group">
                    <a href="#" class="show-btn">See more 👉</a>
                    <div class="tooltip">
                      <div class="tooltip-content">
                        <p class="tooltip-title">RX-78-2-Bản thiết kế Gundam tiêu biểu 👋</p>
                        <p class="tooltip-description">
                          This is for sale!
                          <br />
                          Buy <b>it</b> with <b>discount</b> price.
                          <br />
                        </p>
                      </div>
                    </div>
                </div>
            </div>
            <div class="blueprint-item">
                <img src="<c:url value='/views/img/bp2-1.png'/>" alt="" class="blueprint-item-img-1">
                <img src="<c:url value='/views/img/bp2.png'/>" alt="" class="blueprint-item-img-2">
            </div>
        </div>
    </section>
    <section class="section-4">
        <div class="container show-container-4">
            <div class="blueprint-item">
                <img src="<c:url value='/views/img/bp3.jpg'/>" alt="" class="blueprint-item-img-4">
                <img src="<c:url value='/views/img/bp3-1.png'/>" alt="" class="blueprint-item-img-3">
            </div>
            <div class="show-item">
                <h2 class="show-h2">
                    RX-0 Unicorn Gundam 02 Banshee
                </h2>
                <p class="show-p">
                    Mặc dù tên là Unicorn Gundam nhưng bản thiết kế Gundam Banshee được dựa trên hình ảnh của loài sư tử. Ở Unicorn mode, Banshee sở hữu ngoại hình màu đen xuyên suốt từ trên xuống, điểm nhấn chỉ nằm ở đốm vàng cổ, tượng trưng cho bờm sư tử, giáp che kín mặt và những nhánh sừng trông như kiểu đầu mohawk màu vàng, tạo cảm giác cứng cáp, vững chãi và bí ẩn cho Mobile Suit này.
                </p>
                <!-- <a href="" class="show-btn">See more 👉
                    
                </a> -->
                <div class="group">
                    <a href="#" class="show-btn btn-s4">See more 👉</a>
                    <div class="tooltip">
                      <div class="tooltip-content">
                        <p class="tooltip-title">RX-0 Unicorn Gundam 02 Banshee 👋</p>
                        <p class="tooltip-description">
                          This is for sale!
                          <br />
                          Buy <b>it</b> with <b>discount</b> price.
                          <br />
                        </p>
                      </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="section-half">
        <h1 class="author-introduce">Creator</h1>
        <div class="creator">
            <div class="group-author">
                <a href="#" class="show-btn">
                    <div class="author-creator red">
                        <div class="img-author">
                            <img src="<c:url value='/views/img/ntd.png'/>" alt="">
                        </div>
                        <h2>Nguyễn Thành Đạt</h2>
                        <p>22110129</p>
                    </div>
                </a>
                <div class="tooltip">
                    <div class="tooltip-content">
                    <p class="tooltip-title"></p>
                    <p class="tooltip-description">
                        <b>Facebook</b>: <a class="fb-author" href="https://www.facebook.com/ntd.1422/">https://www.facebook.com/ntd.1422/</a>
                    </p>
                    </div>
                </div>
            </div>
            <div class="group-author">
                <a href="#" class="show-btn">
                    <div class="author-creator blue">
                        <div class="img-author">
                            <img src="<c:url value='/views/img/dgs.png'/>" alt="">
                        </div>
                        <h2>Đồng Gia Sang</h2>
                        <p>22110219</p>
                    </div>
                </a>
                <div class="tooltip">
                  <div class="tooltip-content">
                    <p class="tooltip-title"></p>
                    <p class="tooltip-description">
                        <b>Facebook</b>: <a class="fb-author" href="https://www.facebook.com/sinhvienamhai">https://www.facebook.com/sinhvienamhai</a>
                    </p>
                  </div>
                </div>
            </div>
            <div class="group-author">
                <a href="#" class="show-btn">
                    <div class="author-creator green">
                        <div class="img-author">
                            <img src="<c:url value='/views/img/vth.jpg'/>" alt="">
                        </div>
                        <h2>Vương Trí Hùng</h2>
                        <p>22110xxx</p>
                    </div>
                </a>
                <div class="tooltip-3">
                  <div class="tooltip-content">
                    <p class="tooltip-title"></p>
                    <p class="tooltip-description">
                        <b>Facebook</b>: <a class="fb-author" href="https://www.facebook.com/vtrhung.9">https://www.facebook.com/vtrhung.9</a>
                    </p>
                  </div>
                </div>
            </div>
            
        </div>
    </section>
    
    <script src="/frontend/js/script.js"></script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success 😄</title>
    <link rel="stylesheet" href="/frontend/css/payment-complete.css">
</head>
<body>
<style>

@import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
body{
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}
/* From Uiverse.io by zanina-yassine */ 
.container {
    width: 250px;
    height: 250px;
    display: flex;
    align-items: center;
    justify-content: center;
  }
  
  .cloud {
    width: 250px;
  }
  
  .front {
    padding-top: 45px;
    margin-left: 25px;
    display: inline;
    position: absolute;
    z-index: 11;
    animation: clouds 8s infinite;
    animation-timing-function: ease-in-out;
  }
  
  .back {
    margin-top: -30px;
    margin-left: 150px;
    z-index: 12;
    animation: clouds 12s infinite;
    animation-timing-function: ease-in-out;
  }
  
  .right-front {
    width: 45px;
    height: 45px;
    border-radius: 50% 50% 50% 0%;
    background-color: #4c9beb;
    display: inline-block;
    margin-left: -25px;
    z-index: 5;
  }
  
  .left-front {
    width: 65px;
    height: 65px;
    border-radius: 50% 50% 0% 50%;
    background-color: #4c9beb;
    display: inline-block;
    z-index: 5;
  }
  
  .right-back {
    width: 50px;
    height: 50px;
    border-radius: 50% 50% 50% 0%;
    background-color: #4c9beb;
    display: inline-block;
    margin-left: -20px;
    z-index: 5;
  }
  
  .left-back {
    width: 30px;
    height: 30px;
    border-radius: 50% 50% 0% 50%;
    background-color: #4c9beb;
    display: inline-block;
    z-index: 5;
  }
  
  .sun {
    width: 120px;
    height: 120px;
    background: -webkit-linear-gradient(to right, #fcbb04, #fffc00);
    background: linear-gradient(to right, #fcbb04, #fffc00);
    border-radius: 60px;
    display: inline;
    position: absolute;
  }
  
  .sunshine {
    animation: sunshines 2s infinite;
  }
  
  @keyframes sunshines {
    0% {
      transform: scale(1);
      opacity: 0.6;
    }
  
    100% {
      transform: scale(1.4);
      opacity: 0;
    }
  }
  
  @keyframes clouds {
    0% {
      transform: translateX(15px);
    }
  
    50% {
      transform: translateX(0px);
    }
  
    100% {
      transform: translateX(15px);
    }
  }
  

.success {
    background: #2ed573;
    width: 400px;
    height: 400px;
    display: flex;
    justify-content: center;
    align-items: center;
    flex-direction: column;
    gap: 10px;
}
.content h1 {
    font-family: "Pacifico", cursive;
    font-size: 30px;
    color: #fff;
    margin: 0;
    font-weight: 700;
    text-align: center;
    text-transform: uppercase;
}
.btn-sc button{
    background: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    font-size: 20px;
    font-weight: 700;
    cursor: pointer;
    transition: all 0.3s;
}
.btn-sc button a{
    text-decoration: none;
    color: black;
}
.btn-sc button:hover{
    background: #f1f1f1;
}</style>
    <div class="success">
        <div class="svg-success">
            <div class="container">
            <div class="cloud front">
                <span class="left-front"></span>
                <span class="right-front"></span>
            </div>
            <span class="sun sunshine"></span>
            <span class="sun"></span>
            <div class="cloud back">
                <span class="left-back"></span>
                <span class="right-back"></span>
            </div>
            </div>
        </div>
        <div class="content">
            <h1>Success!</h1>
        </div>
        <div class="btn-sc">
            <button><a href="http://localhost:8080/DAWEBB/home">Back Home</a></button>
        </div>
    </div>
</body>
</html>
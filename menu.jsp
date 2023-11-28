<html>    
<head>
<style type="text/css">
    *{
        padding:0;
        margin:0;
        box-sizing: border-box;
    }
body{
background-image:url('p6.jpeg');
font-family: 'Courier Prime', monospace;
background:  #edeaff;
}
.stopwatch{
     width:90%;
     max-width: 600px;
     background-image:linear-gradient(rgba(0,0,0,0.8),rgba(0,0,0,0.8)), url(p6.jpeg);
     background-size: cover;
     background-position: center;
     text-align: center;
     padding:40px 0;
     color: #fff;
     margin:200px auto 0;
     box-shadow: 0 10px 10px rgba(0,0,0,0.2);    
}
.stopwatch h1{
    margin-top: 60px;
    font-size: 64px;
    font-weight:300;
}
.buttons{
    display: flex;
    align-items: center;
    justify-content: center;
}
.buttons img{
    width:50px;
    margin: 0 20px;
    cursor: pointer;
    
}

.buttons img:nth-child(2){
    width:80px;
    
}
  


#mymenu{
background:black;
text-align: center;
color:white;
}
#mymenu ul li{
width: 120px;
padding: 15px;
display:inline-block;
}
#mymenu ul li a{
    text-decoration: none;
    color: #fff;
}
#mymenu ul{
    display: inline-flex;
    list-style: none;
    color: #fff;
}
.active, #mymenu ul li:hover{
    background: blue;
    border-radius: 3px;
}
.sub-menu-1{
   display: none; 
}
#mymenu ul li:hover .sub-menu-1{
    display: block;
    position: absolute;
    background: blue;
    margin-top: 15px;
    margin-left: -15px;
}
#mymenu ul li:hover .sub-menu-1 ul{
display: block;
    margin: 10px;
}
#mymenu ul li:hover .sub-menu-1 ul li{
    width: 150px;
    padding: 10px;
    border-bottom: 1px dotted #fff;
    background: transparent;
    border-radius: 0;
    text-align: left;
}
#mymenu ul li:hover .sub-menu-1 ul li a:hover{
    color:black;
}


.stopwatch{
    width:90%;
    max-width:600px;
    text-align: center;
    padding: 40px 0;
    color: blue;
    margin: 200px auto 0;
    box-shadow: 0 10px 10px rgba(0,0,0,0.8);
    
} 
</style>
</head>
<meta name="viewport" content ="width=device-width, initial-scale=1.0">
<title> TIME ANALYZER</title>
<link rel="stylesheet" href ="style.css">
</head>
<body>
 
    







<div id="mymenu">
<ul>
<li class="active"> <a href="head2.jsp">Home </a></li>
<li><a href="#">Actions</a>

<div class="sub-menu-1">
<ul>
<li onclick="watchStart()"><a href="#">Active</a></li>
<li onclick="watchStop()"><a href="#">Break</a></li>
<li onclick="watchReset()"><a href="#">Off-Shift</a></li>
<li onclick="watchStop()"><a href="#">Meeting</a></li>
<li onclick="watchStop()"><a href="#">Tea-break</a></li>
</ul>
</div>
</li>

<li><a href="#">About Us</a>
<div class="sub-menu-1">
<ul>
<li><a href="#">Mission</a></li>
<li><a href="#">Vision</a></li>
<li><a href="#">Team</a></li>
</ul>
</div>
</li>

<li><a href="#">Contact</a></li>
<li><a href="login.jsp"> LogOut</a></li>
</ul>
</div>   
<div class="stopwatch">
<h1 id="displayTime">00:00:00</h1>
<div class="buttons">

<img src="stop.png" onclick="watchStop()">
<img src="start.png" onclick="watchStart()">
<img src="reset.png" onclick="watchReset()">               >
</div>
</div>
    
    <script>
        let [seconds, minutes, hours] = [0,0,0];
        let displayTime = document.getElementById("displayTime");
        let timer = null;
        
        function stopwatch(){
            seconds++;
            if(seconds == 60){
                seconds = 0;
                minutes++;
                if(minutes == 60){
                    minutes = 0;
                    hours++;           
                }
            }
    let h = hours < 10 ? "0" + hours : hours;        
    let m = minutes < 10 ? "0" + minutes : minutes; 
    let s = seconds < 10 ? "0" + seconds : seconds;
    
    
            displayTime.innerHTML = h +":"+ m +":"+ s;
            
        }
        function watchStart(){
            if(timer!==null){
                clearInterval(timer);
            }
          timer =  setInterval(stopwatch,1000);
        }
         function watchStop(){
             clearInterval(timer);
         }
        
         function watchReset(){
             clearInterval(timer);
             [seconds, minutes, hours] = [0,0,0];
             displayTime.innerHTML = "00:00:00";
         }
        
    </script>
    
    
</body>
</html>
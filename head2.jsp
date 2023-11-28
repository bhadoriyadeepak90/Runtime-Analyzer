<style type="text/css">
body{
background-image:url('p6.jpeg');
}
#mymenu{
background-color:rgba(0,0,0,0.5);
color:white;
text-align:right;
}
#mymenu ul li
{
display:inline-block;
padding:12px;
}
#mymenu hover{
background:linear-gradient(blue,green);
}
#data{
margin-top:150px;
}
table{
color:white;
background-color:rgba(3,3,3,0.5);
box-shadow:20px 20px 20px white;
}
.t1{
border-radius:30px;
}
#deep{
    width: 100%;
    position:absolute;
    top:50%;
    transform: translateY(-50%);
    text-align:center;
}
#deep h1{
  font-size:50px;
margin-top:80px; 
}
#deep p{
    margin:20px auto;
font-weight:100;
line-height:5px;
}
.B{
width:80px;
height:40px;
background:linear-gradient(to right, red, black);
color:white;
}
.B:hover{
background:linear-gradient(to right, black, red);
}
button{
    width:200px;
    padding: 15px 0;
    text-align: center;
    margin: 20px 10px;
    border-radius:25px;
    font-weight:bold;
    border: 2px solid #009688; 
    background:transparent;
    color:black;
    cursor:pointer;
    position:relative;
    overflow: hidden;
}
span{
    background:#009688;
    height:100%;
    width:0;
    border-radius:25px;
    position:absolute;
    left:0;
    bottom:0;
    z-index:-1;
    transition: 0.5s;
}
button:hover span{
    width:100%;
}
button:hover{
    border:none;
}
</style>
</head>
<body >
<div id="mymenu">
<ul>
<li><a href='head2.jsp'> Home </a></li>
<li> <a href="login.jsp"> Sign-In </a></li>
<li><a href="regis.jsp"> Sign-Up </a></li>
<li><a href="#"> About Us</a> </li>
<li><a href="#"> Contact Us</a> </li>
</ul>
</div>
<div id="deep">
    <h1>Changing Lives with RunTime Analyzer.</h1>
    <p>Connecting everyone's time globally, to be able to provide better 
        collections of choices to be made from.</p>
    <div>
        <button type="button"><span></span>WATCH MORE</button>
        <button type="button"><span></span>SUBSCRIBE</button>
    </div>
</div>
</body>
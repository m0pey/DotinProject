﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>سامانه مدیریت بانک</title>
    <link rel="Stylesheet" type="text/css" href="htmlPart/style/stylemain.css"/>
    <link rel="Stylesheet" type="text/css" href="htmlPart/style/style.css"/>
    <script src="htmlPart/js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });

    </script>


    <style type="text/css"></style>
</head>

<body>
<div id="mainBar">
    <div id="topBar">
        </br>
        <a id="homeLink" href="http://localhost:8080/htmlPart/Home.jsp"><b>سامانه مدیریت بانک </b></a>
    </div>
    <div id="middleBar">
        <div id="rightBar">
            <div id="verticalLinks">
                <ul id="vertLinks">
                    <a class="vertLink" href="http://localhost:8080/htmlPart/new-user.jsp">تعریف مشتری جدید</a>
                    <a class="vertLink" href="http://localhost:8080/htmlPart/search-user.jsp">جستجو </a>
                    <a class="vertLink" href="http://localhost:8080/htmlPart/banking-facilities.jsp">تسهیلات بانکی</a>
                </ul>

            </div>
        </div>
        <div id="leftBar">
            <div id="loginForm">
                <form action="http://localhost:8080/htmlPart/home-welcome.jsp" align=center>
                    <ul>نام کاربری:&ensp;&ensp; &ensp;<input type="text" name="userName"></ul>
                    <ul>کلمه عبور: &ensp;&ensp;&ensp;<input type="text" name="passWord"></ul>
                    <ul><input type="submit" value="ورود"></ul>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>


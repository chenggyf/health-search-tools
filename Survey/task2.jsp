<%-- 
    Document   : task2
    Created on : 2013-12-13, 5:58:09
    Author     : Cheng Guo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Health Information Study</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="https://www.google.com/jsapi" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.icheck.js"></script>
        <link href="layout/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="flat/blue.css" rel="stylesheet" media="screen">


        <style type="text/css">
            /* Sticky footer styles
            -------------------------------------------------- */
            html,
            body {
                height: 96.5%;
                /* The html and body elements cannot have any padding or margin. */
            }

            /* Wrapper for page content to push down footer */
            #wrap {
                min-height: 100%;
                height: auto !important;

                /* Negative indent footer by it's height */
                margin: 0 auto -55px;

                margin-bottom: 5px;               
            }

            #footer {             
                bottom: 0;
                height: 55px;
                background-color: #f5f5f5;
            }

            .container .credit {
                margin: 15px 0;
            }

            .taskHeader{
                font-size:160%;
                line-height:120%;
                font-weight: bold;
            }

        </style>

        <script type="text/javascript">
            function noBack() {
                window.history.forward(1);
            }

            function   KeyDown() {
                if ((event.keyCode === 116) || (event.ctrlKey && event.keyCode === 82))
                {
                    event.keyCode = 0;
                    event.returnValue = false;
                }

                if ((window.event.altKey) &&
                        ((window.event.keyCode === 37) ||
                                (window.event.keyCode === 39))) {
                    alert("Please do not hit back. You will have to begin again.");
                    event.returnValue = false;
                }
            }

            function showContent(id) {
                document.getElementById(id).style.display = "block";
            }

            function keyPress1() {
                if (event.keyCode === 13) {
                    cleanML1();
                    setPage1();
                    getResults1();
                }
            }

            function keyPress2() {
                if (event.keyCode === 13) {
                    cleanML2();
                    setPage2();
                    getResults2();
                }
            }

            function keyPress3() {
                if (event.keyCode === 13) {
                    cleanML3();
                    setPage3();
                    getResults3();
                }
            }

            function hideContent(id) {
                document.getElementById(id).style.display = "none";
            }

            $(document).ready(function() {
                $('input').iCheck({
                    checkboxClass: 'icheckbox_flat-blue',
                    radioClass: 'iradio_flat-blue',
                    increaseArea: '20%' // optional
                });
            });

            function setPage1() {
                $('#query1').attr("class", 0);
            }

            function setPage2() {
                $('#query2').attr("class", 0);
            }

            function setPage3() {
                $('#query3').attr("class", 0);
            }

            function Go(self) {
                $(self).next().submit();
                return false;
            }

            function getAnswers(self) {
                hbo_effective = $("input[name='hbo_effective_O']:checked").val();
                $(self).next().find("input[name='hbo_effective']").val(hbo_effective);
                hbo_trustworthiness = $("input[name='hbo_trustworthiness_O']:checked").val();
                $(self).next().find("input[name='hbo_trustworthiness']").val(hbo_trustworthiness);
                hbo_factualSupport = $("input[name='hbo_factualSupport_O']:checked").val();
                $(self).next().find("input[name='hbo_factualSupport']").val(hbo_factualSupport);
                hbo_popularity = $("input[name='hbo_popularity_O']:checked").val();
                $(self).next().find("input[name='hbo_popularity']").val(hbo_popularity);

                rife_effective = $("input[name='rife_effective_O']:checked").val();
                $(self).next().find("input[name='rife_effective']").val(rife_effective);
                rife_trustworthiness = $("input[name='rife_trustworthiness_O']:checked").val();
                $(self).next().find("input[name='rife_trustworthiness']").val(rife_trustworthiness);
                rife_factualSupport = $("input[name='rife_factualSupport_O']:checked").val();
                $(self).next().find("input[name='rife_factualSupport']").val(rife_factualSupport);
                rife_popularity = $("input[name='rife_popularity_O']:checked").val();
                $(self).next().find("input[name='rife_popularity']").val(rife_popularity);

                probiotics_effective = $("input[name='probiotics_effective_O']:checked").val();
                $(self).next().find("input[name='probiotics_effective']").val(probiotics_effective);
                probiotics_trustworthiness = $("input[name='probiotics_trustworthiness_O']:checked").val();
                $(self).next().find("input[name='probiotics_trustworthiness']").val(probiotics_trustworthiness);
                probiotics_factualSupport = $("input[name='probiotics_factualSupport_O']:checked").val();
                $(self).next().find("input[name='probiotics_factualSupport']").val(probiotics_factualSupport);
                probiotics_popularity = $("input[name='probiotics_popularity_O']:checked").val();
                $(self).next().find("input[name='probiotics_popularity']").val(probiotics_popularity);
                $(self).next().submit();
                return false;
            }

            function getResults1() {
                query = $('#query1').val();
                page = $('#query1').attr("class");
                try {
                    $.ajax({
                        type: "POST",
                        url: "Search1",
                        data: {"query": query, "page": page},
                        dataType: "json",
                        success: function(data) {
                            var url1 = data.url1;
                            var title1 = data.title1;
                            $('#1title1').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title1 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input id='1url1' name='url' value='" + url1 + "'/>"
                                    + "<input id='1query1' name='query' value='" + query + "'/>"
                                    + "<input id='1treatment1' name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex1' name='experiential' value=''/>"
                                    + "<input id='1info1' name='infoLinks' value=''/>");

                            var url2 = data.url2;
                            var title2 = data.title2;
                            $('#1title2').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title2 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url2 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex2' name='experiential' value=''/>"
                                    + "<input id='1info2' name='infoLinks' value=''/>");

                            var url3 = data.url3;
                            var title3 = data.title3;
                            $('#1title3').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title3 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url3 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex3' name='experiential' value=''/>"
                                    + "<input id='1info3' name='infoLinks' value=''/>");


                            var url4 = data.url4;
                            var title4 = data.title4;
                            $('#1title4').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title4 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url4 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex4' name='experiential' value=''/>"
                                    + "<input id='1info14' name='infoLinks' value=''/>");


                            var url5 = data.url5;
                            var title5 = data.title5;
                            $('#1title5').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title5 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url5 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex5' name='experiential' value=''/>"
                                    + "<input id='1info5' name='infoLinks' value=''/>");


                            var url6 = data.url6;
                            var title6 = data.title6;
                            $('#1title6').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title6 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url6 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex6' name='experiential' value=''/>"
                                    + "<input id='1info6' name='infoLinks' value=''/>");


                            var url7 = data.url7;
                            var title7 = data.title7;
                            $('#1title7').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title7 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url7 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex7' name='experiential' value=''/>"
                                    + "<input id='1info7' name='infoLinks' value=''/>");

                            var url8 = data.url8;
                            var title8 = data.title8;
                            $('#1title8').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title8 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url8 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex8' name='experiential' value=''/>"
                                    + "<input id='1info8' name='infoLinks' value=''/>");


                            var url9 = data.url9;
                            var title9 = data.title9;
                            $('#1title9').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title9 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url9 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex9' name='experiential' value=''/>"
                                    + "<input id='1info9' name='infoLinks' value=''/>");


                            var url10 = data.url10;
                            var title10 = data.title10;
                            $('#1title10').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title10 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url10 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex10' name='experiential' value=''/>"
                                    + "<input id='1info10' name='infoLinks' value=''/>");


                            getML1_1();
                            getML1_2();
                            getML1_3();
                            getML1_4();
                            getML1_5();
                            getML1_6();
                            getML1_7();
                            getML1_8();
                            getML1_9();
                            getML1_10();
                        }
                    });

                } catch (err) {
                }
            }

            function cleanML1() {
                cleanML1_1();
                cleanML1_2();
                cleanML1_3();
                cleanML1_4();
                cleanML1_5();
                cleanML1_6();
                cleanML1_7();
                cleanML1_8();
                cleanML1_9();
                cleanML1_10();

            }

            function cleanML1_1() {
                $('#1post1').html("");
                $('#1experiential1').html("");
                $('#1infoLinks1').html("");
            }

            function cleanML1_2() {
                $('#1post2').html("");
                $('#1experiential2').html("");
                $('#1infoLinks2').html("");
            }

            function cleanML1_3() {
                $('#1post3').html("");
                $('#1experiential3').html("");
                $('#1infoLinks3').html("");
            }

            function cleanML1_4() {
                $('#1post4').html("");
                $('#1experiential4').html("");
                $('#1infoLinks4').html("");
            }

            function cleanML1_5() {
                $('#1post5').html("");
                $('#1experiential5').html("");
                $('#1infoLinks5').html("");
            }

            function cleanML1_6() {
                $('#1post6').html("");
                $('#1experiential6').html("");
                $('#1infoLinks6').html("");
            }

            function cleanML1_7() {
                $('#1post7').html("");
                $('#1experiential7').html("");
                $('#1infoLinks7').html("");
            }

            function cleanML1_8() {
                $('#1post8').html("");
                $('#1experiential8').html("");
                $('#1infoLinks8').html("");
            }

            function cleanML1_9() {
                $('#1post9').html("");
                $('#1experiential9').html("");
                $('#1infoLinks9').html("");
            }

            function cleanML1_10() {
                $('#1post10').html("");
                $('#1experiential10').html("");
                $('#1infoLinks10').html("");
            }

            function getML1_1() {
                urlNum = "0";
                query = $('#query1').val();
                try {
                    $.ajax({
                        type: "POST",
                        url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post1').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex1').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential1').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential1').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential1').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential1').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential1').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential1').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential1').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential1').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential1').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential1').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential1').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info1').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks1').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            } else {
                                $('#1infoLinks1').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_2() {
                query = $('#query1').val();
                urlNum = "1";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post2').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex2').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential2').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential2').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential2').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential2').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential2').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential2').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential2').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential2').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential2').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential2').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential2').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info2').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks2').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks2').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }


            function getML1_3() {
                query = $('#query1').val();
                urlNum = "2";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post3').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex3').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential3').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential3').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential3').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential3').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential3').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential3').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential3').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential3').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential3').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential3').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential3').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info3').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks3').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks3').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }


            function getML1_4() {
                query = $('#query1').val();
                urlNum = "3";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post4').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex4').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential4').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential4').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential4').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential4').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential4').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential4').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential4').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential4').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential4').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential4').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential4').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info4').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks4').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks4').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_5() {
                query = $('#query1').val();
                urlNum = "4";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post5').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex5').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential5').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential5').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential5').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential5').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential5').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential5').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential5').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential5').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential5').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential5').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential5').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info5').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks5').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks5').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_6() {
                query = $('#query1').val();
                urlNum = "5";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post6').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex6').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential6').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential6').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential6').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential6').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential6').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential6').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential6').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential6').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential6').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential6').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential6').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info6').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks6').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks6').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_7() {
                query = $('#query1').val();
                urlNum = "6";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post7').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex7').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential7').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential7').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential7').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential7').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential7').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential7').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential7').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential7').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential7').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential7').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential7').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info7').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks7').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks7').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_8() {
                query = $('#query1').val();
                urlNum = "7";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post8').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex8').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential8').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential8').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential8').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential8').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential8').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential8').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential8').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential8').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential8').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential8').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential8').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info8').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks8').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks8').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML1_9() {
                query = $('#query1').val();
                urlNum = "8";
                try {
                    $.ajax({
                        type: "POST", url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post9').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex9').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential9').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential9').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential9').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential9').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential9').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential9').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential9').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential9').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential9').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential9').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential9').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info9').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks9').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#1infoLinks9').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }


            function getML1_10() {
                query = $('#query1').val();
                urlNum = "9";
                try {
                    $.ajax({
                        type: "POST",
                        url: "Ml1",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#1post10').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#1ex10').val(experiential);
                            if (experiential === "0.0") {
                                $('#1experiential10').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#1experiential10').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#1experiential10').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#1experiential10').html("<img src='img/experiencee_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#1experiential10').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#1experiential10').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#1experiential10').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#1experiential10').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#1experiential10').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#1experiential10').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#1experiential10').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#1info10').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#1infoLinks10').html("<img src='img/lyme_no.gif' height='20' width='20'>");
                            } else {
                                $('#1infoLinks10').html("<img src='img/lyme_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            $(document).ready(function() {
                getResults1();

            });

//            function cleanML2() {
//                cleanML2_1();
//                cleanML2_2();
//                cleanML2_3();
//                cleanML2_4();
//                cleanML2_5();
//                cleanML2_6();
//                cleanML2_7();
//                cleanML2_8();
//                cleanML2_9();
//                cleanML2_10();
//
//            }
//
//            function cleanML2_1() {
//                $('#2post1').html("");
//                $('#2experiential1').html("");
//                $('#2infoLinks1').html("");
//            }
//
//            function cleanML2_2() {
//                $('#2post2').html("");
//                $('#2experiential2').html("");
//                $('#2infoLinks2').html("");
//            }
//
//            function cleanML2_3() {
//                $('#2post3').html("");
//                $('#2experiential3').html("");
//                $('#2infoLinks3').html("");
//            }
//
//            function cleanML2_4() {
//                $('#2post4').html("");
//                $('#2experiential4').html("");
//                $('#2infoLinks4').html("");
//            }
//
//            function cleanML2_5() {
//                $('#2post5').html("");
//                $('#2experiential5').html("");
//                $('#2infoLinks5').html("");
//            }
//
//            function cleanML2_6() {
//                $('#2post6').html("");
//                $('#2experiential6').html("");
//                $('#2infoLinks6').html("");
//            }
//
//            function cleanML2_7() {
//                $('#2post7').html("");
//                $('#2experiential7').html("");
//                $('#2infoLinks7').html("");
//            }
//
//            function cleanML2_8() {
//                $('#2post8').html("");
//                $('#2experiential8').html("");
//                $('#2infoLinks8').html("");
//            }
//
//            function cleanML2_9() {
//                $('#2post9').html("");
//                $('#2experiential9').html("");
//                $('#2infoLinks9').html("");
//            }
//
//            function cleanML2_10() {
//                $('#2post10').html("");
//                $('#2experiential10').html("");
//                $('#2infoLinks10').html("");
//            }
//
//            function getResults2() {
//                query = $('#query2').val();
//                page = $('#query2').attr("class");
//                try {
//                    $.ajax({
//                        type: "POST",
//                        url: "Search2",
//                        data: {"query": query, "page": page},
//                        dataType: "json",
//                        success: function(data) {
//                            var url1 = data.url1;
//                            var title1 = data.title1;
//                            $('#2title1').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title1 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url1 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex1' name='experiential' value=''/>"
//                                    + "<input id='1info1' name='infoLinks' value=''/>");
//
//                            var url2 = data.url2;
//                            var title2 = data.title2;
//                            $('#2title2').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title2 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url2 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex2' name='experiential' value=''/>"
//                                    + "<input id='1info2' name='infoLinks' value=''/>");
//
//                            var url3 = data.url3;
//                            var title3 = data.title3;
//                            $('#2title3').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title3 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url3 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex3' name='experiential' value=''/>"
//                                    + "<input id='1info3' name='infoLinks' value=''/>");
//
//                            var url4 = data.url4;
//                            var title4 = data.title4;
//                            $('#2title4').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title4 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url4 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex4' name='experiential' value=''/>"
//                                    + "<input id='1info14' name='infoLinks' value=''/>");
//
//                            var url5 = data.url5;
//                            var title5 = data.title5;
//                            $('#2title5').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title5 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url5 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex5' name='experiential' value=''/>"
//                                    + "<input id='1info5' name='infoLinks' value=''/>");
//
//                            var url6 = data.url6;
//                            var title6 = data.title6;
//                            $('#2title6').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title6 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url6 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex6' name='experiential' value=''/>"
//                                    + "<input id='1info6' name='infoLinks' value=''/>");
//
//                            var url7 = data.url7;
//                            var title7 = data.title7;
//                            $('#2title7').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title7 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url7 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex7' name='experiential' value=''/>"
//                                    + "<input id='1info7' name='infoLinks' value=''/>");
//
//                            var url8 = data.url8;
//                            var title8 = data.title8;
//                            $('#2title8').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title8 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url8 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex8' name='experiential' value=''/>"
//                                    + "<input id='1info8' name='infoLinks' value=''/>");
//
//
//                            var url9 = data.url9;
//                            var title9 = data.title9;
//                            $('#2title9').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title9 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url9 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex9' name='experiential' value=''/>"
//                                    + "<input id='1info9' name='infoLinks' value=''/>");
//
//                            var url10 = data.url10;
//                            var title10 = data.title10;
//                            $('#2title10').html("<a href='NewServlet' target='_blank' onclick='return Go(this);'>"
//                                    + title10 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
//                                    + "<input name='url' value='" + url10 + "'/>"
//                                    + "<input name='query' value='" + query + "'/>"
//                                    + "<input name='treatment' value='hyperbaric'/>"
//                                    + "<input id='1ex10' name='experiential' value=''/>"
//                                    + "<input id='1info10' name='infoLinks' value=''/>");
//
//
//                            getML2_1();
//                            getML2_2();
//                            getML2_3();
//                            getML2_4();
//                            getML2_5();
//                            getML2_6();
//                            getML2_7();
//                            getML2_8();
//                            getML2_9();
//                            getML2_10();
//
//
//                        }
//                    });
//
//                } catch (err) {
//
//                }
//            }
//            function getML2_1() {
//                query = $('#query2').val();
//                urlNum = "0";
//                try {
//                    $.ajax({
//                        type: "POST",
//                        url: "Ml2",
//                        data: {"query": query, "urlNum": urlNum},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post1').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex1').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential1').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential1').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential1').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential1').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential1').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential1').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential1').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential1').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential1').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential1').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential1').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info1').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks1').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks1').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_2() {
//                query = $('#query2').val();
//                urlNum = "1";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post2').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex2').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential2').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential2').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential2').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential2').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential2').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential2').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential2').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential2').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential2').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential2').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential2').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info2').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks2').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks2').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_3() {
//                query = $('#query2').val();
//                urlNum = "2";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post3').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex3').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential3').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential3').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential3').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential3').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential3').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential3').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential3').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential3').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential3').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential3').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential3').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info3').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks3').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks3').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_4() {
//                query = $('#query2').val();
//                urlNum = "3";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post4').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex4').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential4').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential4').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential4').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential4').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential4').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential4').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential4').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential4').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential4').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential4').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential4').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info4').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks4').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks4').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_5() {
//                query = $('#query2').val();
//                urlNum = "4";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post5').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex5').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential5').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential5').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential5').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential5').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential5').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential5').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential5').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential5').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential5').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential5').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential5').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info5').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks5').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks5').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_6() {
//                query = $('#query2').val();
//                urlNum = "5";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post6').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex6').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential6').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential6').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential6').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential6').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential6').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential6').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential6').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential6').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential6').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential6').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential6').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info6').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks6').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks6').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_7() {
//                query = $('#query2').val();
//                urlNum = "6";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post7').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex7').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential7').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential7').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential7').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential7').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential7').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential7').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential7').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential7').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential7').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential7').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential7').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info7').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks7').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks7').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_8() {
//                query = $('#query2').val();
//                urlNum = "7";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post8').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex8').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential8').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential8').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential8').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential8').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential8').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential8').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential8').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential8').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential8').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential8').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential8').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info8').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks8').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks8').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_9() {
//                query = $('#query2').val();
//                urlNum = "8";
//                try {
//                    $.ajax({
//                        type: "POST", url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post9').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex9').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential9').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential9').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential9').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential9').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential9').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential9').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential9').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential9').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential9').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential9').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential9').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info9').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks9').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            }
//                            else {
//                                $('#2infoLinks9').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }
//
//            function getML2_10() {
//                query = $('#query2').val();
//                urlNum = "9";
//                try {
//                    $.ajax({
//                        type: "POST",
//                        url: "Ml2",
//                        data: {"urlNum": urlNum, "query": query},
//                        dataType: "json",
//                        success: function(data) {
//                            $('#2post10').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
//                            var experiential = data.experiential;
//                            $('#2ex10').val(experiential);
//                            if (experiential === "0.0") {
//                                $('#2experiential10').html("<img src='img/experience_000.gif' height='105' width='80'>");
//                            }
//                            else if (experiential > 0.0 && experiential < 0.15) {
//                                $('#2experiential10').html("<img src='img/experience_010.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.15 && experiential < 0.25) {
//                                $('#2experiential10').html("<img src='img/experience_020.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.25 && experiential < 0.35) {
//                                $('#2experiential10').html("<img src='img/experience_030.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.35 && experiential < 0.45) {
//                                $('#2experiential10').html("<img src='img/experience_040.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.45 && experiential < 0.55) {
//                                $('#2experiential10').html("<img src='img/experience_050.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.55 && experiential < 0.65) {
//                                $('#2experiential10').html("<img src='img/experience_060.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.65 && experiential < 0.75) {
//                                $('#2experiential10').html("<img src='img/experience_070.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.75 && experiential < 0.85) {
//                                $('#2experiential10').html("<img src='img/experience_080.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.85 && experiential < 0.95) {
//                                $('#2experiential10').html("<img src='img/experience_090.gif' height='105' width='80'>");
//                            }
//                            else if (experiential >= 0.95 && experiential <= 1.00) {
//                                $('#2experiential10').html("<img src='img/experience_100.gif' height='105' width='80'>");
//                            }
//                            var infoLinks = data.infoLinks;
//                            $('#2info10').val(infoLinks);
//                            if (infoLinks === "0.0") {
//                                $('#2infoLinks10').html("<img src='img/info_no.gif' height='20' width='20'>");
//                            } else {
//                                $('#2infoLinks10').html("<img src='img/info_yes.gif' height='20' width='20'>");
//                            }
//                        }
//                    });
//                } catch (err) {
//                }
//            }

            function cleanML3() {
                cleanML3_1();
                cleanML3_2();
                cleanML3_3();
                cleanML3_4();
                cleanML3_5();
                cleanML3_6();
                cleanML3_7();
                cleanML3_8();
                cleanML3_9();
                cleanML3_10();

            }

            function cleanML3_1() {
                $('#3post1').html("");
                $('#3experiential1').html("");
                $('#3infoLinks1').html("");
            }

            function cleanML3_2() {
                $('#3post2').html("");
                $('#3experiential2').html("");
                $('#3infoLinks2').html("");
            }

            function cleanML3_3() {
                $('#3post3').html("");
                $('#3experiential3').html("");
                $('#3infoLinks3').html("");
            }

            function cleanML3_4() {
                $('#3post4').html("");
                $('#3experiential4').html("");
                $('#3infoLinks4').html("");
            }

            function cleanML3_5() {
                $('#3post5').html("");
                $('#3experiential5').html("");
                $('#3infoLinks5').html("");
            }

            function cleanML3_6() {
                $('#3post6').html("");
                $('#3experiential6').html("");
                $('#3infoLinks6').html("");
            }

            function cleanML3_7() {
                $('#3post7').html("");
                $('#3experiential7').html("");
                $('#3infoLinks7').html("");
            }

            function cleanML3_8() {
                $('#3post8').html("");
                $('#3experiential8').html("");
                $('#3infoLinks8').html("");
            }

            function cleanML3_9() {
                $('#3post9').html("");
                $('#3experiential9').html("");
                $('#3infoLinks9').html("");
            }

            function cleanML3_10() {
                $('#3post10').html("");
                $('#3experiential10').html("");
                $('#3infoLinks10').html("");
            }

            function getResults3() {
                query = $('#query3').val();
                page = $('#query3').attr("class");
                try {
                    $.ajax({
                        type: "POST",
                        url: "Search3",
                        data: {"query": query, "page": page},
                        dataType: "json",
                        success: function(data) {
                            var url1 = data.url1;
                            var title1 = data.title1;
                            $('#3title1').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title1 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url1 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex1' name='experiential' value=''/>"
                                    + "<input id='1info1' name='infoLinks' value=''/>");

                            var url2 = data.url2;
                            var title2 = data.title2;
                            $('#3title2').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title2 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url2 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex2' name='experiential' value=''/>"
                                    + "<input id='1info2' name='infoLinks' value=''/>");

                            var url3 = data.url3;
                            var title3 = data.title3;
                            $('#3title3').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title3 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url3 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex3' name='experiential' value=''/>"
                                    + "<input id='1info3' name='infoLinks' value=''/>");


                            var url4 = data.url4;
                            var title4 = data.title4;
                            $('#3title4').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title4 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url4 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex4' name='experiential' value=''/>"
                                    + "<input id='1info14' name='infoLinks' value=''/>");

                            var url5 = data.url5;
                            var title5 = data.title5;
                            $('#3title5').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title5 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url5 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex5' name='experiential' value=''/>"
                                    + "<input id='1info5' name='infoLinks' value=''/>");

                            var url6 = data.url6;
                            var title6 = data.title6;
                            $('#3title6').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title6 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url6 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex6' name='experiential' value=''/>"
                                    + "<input id='1info6' name='infoLinks' value=''/>");

                            var url7 = data.url7;
                            var title7 = data.title7;
                            $('#3title7').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title7 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url7 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex7' name='experiential' value=''/>"
                                    + "<input id='1info7' name='infoLinks' value=''/>");

                            var url8 = data.url8;
                            var title8 = data.title8;
                            $('#3title8').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title8 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url8 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex8' name='experiential' value=''/>"
                                    + "<input id='1info8' name='infoLinks' value=''/>");

                            var url9 = data.url9;
                            var title9 = data.title9;
                            $('#3title9').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title9 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url9 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex9' name='experiential' value=''/>"
                                    + "<input id='1info9' name='infoLinks' value=''/>");

                            var url10 = data.url10;
                            var title10 = data.title10;
                            $('#3title10').html("<a oncontextmenu='return false;' href='NewServlet' target='_blank' onclick='return Go(this);'>"
                                    + title10 + "</a><form action= 'search-results' method='post' hidden='' target='_blank'>"
                                    + "<input name='url' value='" + url10 + "'/>"
                                    + "<input name='query' value='" + query + "'/>"
                                    + "<input name='treatment' value='hyperbaric'/>"
                                    + "<input id='1ex10' name='experiential' value=''/>"
                                    + "<input id='1info10' name='infoLinks' value=''/>");


                            getML3_1();
                            getML3_2();
                            getML3_3();
                            getML3_4();
                            getML3_5();
                            getML3_6();
                            getML3_7();
                            getML3_8();
                            getML3_9();
                            getML3_10();
                        }
                    });

                } catch (err) {

                }
            }

            function getML3_1() {
                query = $('#query3').val();
                urlNum = "0";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post1').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex1').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential1').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential1').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential1').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential1').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential1').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential1').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential1').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential1').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential1').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential1').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential1').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info1').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks1').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks1').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_2() {
                query = $('#query3').val();
                urlNum = "1";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post2').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex2').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential2').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential2').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential2').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential2').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential2').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential2').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential2').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential2').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential2').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential2').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential2').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info2').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks2').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks2').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_3() {
                query = $('#query3').val();
                urlNum = "2";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post3').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex3').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential3').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential3').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential3').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential3').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential3').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential3').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential3').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential3').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential3').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential3').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential3').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info3').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks3').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks3').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_4() {
                query = $('#query3').val();
                urlNum = "3";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post4').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex4').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential4').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential4').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential4').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential4').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential4').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential4').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential4').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential4').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential4').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential4').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential4').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info4').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks4').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks4').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_5() {
                query = $('#query3').val();
                urlNum = "4";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post5').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex5').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential5').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential5').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential5').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential5').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential5').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential5').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential5').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential5').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential5').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential5').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential5').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info5').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks5').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks5').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_6() {
                query = $('#query3').val();
                urlNum = "5";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post6').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex6').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential6').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential6').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential6').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential6').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential6').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential6').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential6').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential6').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential6').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential6').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential6').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info6').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks6').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks6').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_7() {
                query = $('#query3').val();
                urlNum = "6";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post7').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex7').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential7').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential7').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential7').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential7').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential7').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential7').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential7').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential7').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential7').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential7').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential7').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info7').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks7').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks7').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_8() {
                query = $('#query3').val();
                urlNum = "7";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post8').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex8').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential8').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential8').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential8').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential8').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential8').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential8').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential8').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential8').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential8').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential8').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential8').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info8').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks8').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks8').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_9() {
                query = $('#query3').val();
                urlNum = "8";
                try {
                    $.ajax({
                        type: "POST", url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post9').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex9').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential9').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential9').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential9').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential9').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential9').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential9').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential9').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential9').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential9').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential9').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential9').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info9').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks9').html("<img src='img/info_no.gif' height='20' width='20'>");
                            }
                            else {
                                $('#3infoLinks9').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

            function getML3_10() {
                query = $('#query3').val();
                urlNum = "9";
                try {
                    $.ajax({
                        type: "POST",
                        url: "Ml3",
                        data: {"urlNum": urlNum, "query": query},
                        dataType: "json",
                        success: function(data) {
                            $('#3post10').html("<font color='#8A0808'>" + data.numPost + " posts<font>");
                            var experiential = data.experiential;
                            $('#3ex10').val(experiential);
                            if (experiential === "0.0") {
                                $('#3experiential10').html("<img src='img/experience_000.gif' height='105' width='80'>");
                            }
                            else if (experiential > 0.0 && experiential < 0.15) {
                                $('#3experiential10').html("<img src='img/experience_010.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.15 && experiential < 0.25) {
                                $('#3experiential10').html("<img src='img/experience_020.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.25 && experiential < 0.35) {
                                $('#3experiential10').html("<img src='img/experience_030.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.35 && experiential < 0.45) {
                                $('#3experiential10').html("<img src='img/experience_040.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.45 && experiential < 0.55) {
                                $('#3experiential10').html("<img src='img/experience_050.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.55 && experiential < 0.65) {
                                $('#3experiential10').html("<img src='img/experience_060.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.65 && experiential < 0.75) {
                                $('#3experiential10').html("<img src='img/experience_070.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.75 && experiential < 0.85) {
                                $('#3experiential10').html("<img src='img/experience_080.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.85 && experiential < 0.95) {
                                $('#3experiential10').html("<img src='img/experience_090.gif' height='105' width='80'>");
                            }
                            else if (experiential >= 0.95 && experiential <= 1.00) {
                                $('#3experiential10').html("<img src='img/experience_100.gif' height='105' width='80'>");
                            }
                            var infoLinks = data.infoLinks;
                            $('#3info10').val(infoLinks);
                            if (infoLinks === "0.0") {
                                $('#3infoLinks10').html("<img src='img/info_no.gif' height='20' width='20'>");
                            } else {
                                $('#3infoLinks10').html("<img src='img/info_yes.gif' height='20' width='20'>");
                            }
                        }
                    });
                } catch (err) {
                }
            }

        </script>

    </head>
    <body onkeydown="KeyDown();" onload="noBack();">
        <%
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0
            response.setHeader("Cache-Control", "no-store"); // HTTP 1.1
            response.setDateHeader("Expires", 0);
        %> 
        <!-- Part 1: Wrap all page content here -->

        <div id="wrap">
            <!-- Begin page content -->
            <div id="0" class="container" style="margin-left: 2.5%; max-width:95%; display: block">
                <div class="page-header">
                    <h2>Your Friend</h2>
                </div>
                <h4>
                    Imagine you have a friend who has been complaining of a rash, headaches, and extreme fatigue.
                </h4><br>
                <h4>
                    You have noticed your friend seems out of breath after short walks (for example, when walking to the car after dinner).
                </h4><br>
                <h4>
                    After being diagnosed with Lyme disease and placed on oral antibiotics, this friend is considering supplementary treatments and would like your opinion on two of them: hyperbaric therapy and probiotics.
                </h4><br>
                <h4>
                    <!--                    You will search for each one in two places: on a well known lyme forum and on a well known lyme website.-->
                    You will search for them one at a time.
                </h4><br>
                <div id="00">
                    <input type="button" class="btn btn-large btn-primary" name="next1" value="Next &raquo;" onclick="
                hideContent('0');
                showContent(1);
                getResults3();
                           ">
                </div>
            </div>

            <div id ="1" class="option" style="display:none;">
                <div style="margin-left: 2.5%; max-width: 95%" class="page-header">
                    <p class="taskHeader">
                        At left are search results about hyperbaric oxygen therapy (sometimes abbreviated HBO or HBOT) during which the patient sits in a chamber filled with oxygen at higher than normal pressure.
                        <br><br>
                        Please click on the results that look helpful and then answer the questions on the right.
                    </p>
                    <table> 
                        <tr>
                            <td>
                                <img src='img/lyme_no.gif' height='20' width='21' title='gray info icon'> Poster links to supporting information&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <img src='img/experience_050.gif' height='105' width='80' title='five person icons, half black-half gray'> percent posts about personal experiences&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                        </tr>                          
                    </table>
                </div>

                <div id="11" class="container" style="margin-bottom: 20px; margin-left: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: left">
                    <div id="cse1" style="width: 100%;">
                        <div style="margin-left:3%;margin-top: 3%;margin-right: 3%;">
                            <div style="width:100%;">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="white-space:nowrap;">
                                            <input id="query1" class="0" type="text" value="hyperbaric" onkeydown="keyPress1();" style="width:70%;vertical-align:top">
                                            <img src="img/people_sphere.gif" height='40' width='40'>
                                            <input type="button"  class="btn btn-medium btn-primary" title="search" value="search" style="vertical-align:top" onclick="cleanML1();
                setPage1();
                getResults1();
                                                   ">
                                        </td>                                                                                            
                                    </tr>                                                       
                                </table>
                            </div>
                            <div>
                                <table>
                                    <tbody
                                        <tr>
                                            <td>
                                                <p><b style="color:#0088CC;">Note</b>: Feel free to run additional searches. Note that results will take 10-20 seconds to load.</p>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                            <div>
                                <table id="results1">
                                    <tbody>
                                        <tr style="height:40px;">
                                            <td id="1post1" width='55'></td>
                                            <td id="1infoLinks1"></td>
                                            <td id="1experiential1"></td>
                                            <td id="1title1"></td>

                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post2" width='55'></td>
                                            <td id="1infoLinks2"></td>
                                            <td id="1experiential2"></td>
                                            <td id="1title2"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post3" width='55'></td>
                                            <td id="1infoLinks3"></td>
                                            <td id="1experiential3"></td>
                                            <td id="1title3"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post4" width='55'></td>
                                            <td id="1infoLinks4"></td>
                                            <td id="1experiential4"></td>
                                            <td id="1title4"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post5" width='55'></td>
                                            <td id="1infoLinks5"></td>
                                            <td id="1experiential5"></td>
                                            <td id="1title5"></td>
                                        </tr>                                    
                                        <tr style="height:40px;">
                                            <td id="1post6" width='55'></td>
                                            <td id="1infoLinks6"></td>
                                            <td id="1experiential6"></td>
                                            <td id="1title6"></td>
                                        </tr>                                        
                                        <tr style="height:40px;">
                                            <td id="1post7" width='55'></td>
                                            <td id="1infoLinks7"></td>
                                            <td id="1experiential7"></td>
                                            <td id="1title7"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post8" width='55'></td>
                                            <td id="1infoLinks8"></td>
                                            <td id="1experiential8"></td>
                                            <td id="1title8"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post9" width='55'></td>
                                            <td id="1infoLinks9"></td>
                                            <td id="1experiential9"></td>
                                            <td id="1title9"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="1post10" width='55'></td>
                                            <td id="1infoLinks10"></td>
                                            <td id="1experiential10"></td>
                                            <td id="1title10"></td>
                                        </tr>                                           
                                    </tbody>
                                </table>
                                <table>
                                    <tr>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                setPage1();
                getResults1();">
                                                1 
                                            </a>                                            
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 1);
                getResults1();">
                                                2
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 2);
                getResults1();">
                                                3
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 3);
                getResults1();">
                                                4
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 4);
                getResults1();">
                                                5
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 5);
                getResults1();">
                                                6
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 6);
                getResults1();">
                                                7
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 7);
                getResults1();">
                                                8
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 8);
                getResults1();">
                                                9
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML1();
                $('#query1').attr('class', 9);
                getResults1();">
                                                10
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div id="12" class="container" style="margin-bottom: 20px; margin-right: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: right">
                    <div style="margin-left:2.5%;">                                      
                        <div id="121" style="max-width:95%">
                            <h4>How effective would you tell your friend hyperbaric oxygen therapy is?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_effective_O" value="0Very effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Very effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_effective_O" value="1Somewhat effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_effective_O" value="2Not very effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_effective_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="122"  style="max-width:95%">
                            <h4>How trustworthy would you tell your friend hyperbaric oxygen therapy is?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_trustworthiness_O" value="0Very trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Very trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_trustworthiness_O" value="1Somewhat trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_trustworthiness_O" value="2Not very trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_trustworthiness_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="123"  style="max-width:95%">
                            <h4>How much factual support would you tell your friend there is for hyperbaric oxygen therapy?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_factualSupport_O" value="0A lot of factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;A lot of factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_factualSupport_O" value="1Some factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;Some factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_factualSupport_O" value="2Not a lot of factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;Not a lot of factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_factualSupport_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="124"  style="max-width:95%">
                            <h4>How popular would you tell your friend hyperbaric oxygen therapy is?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_popularity_O" value="0Very popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Very popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_popularity_O" value="1Somewhat popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_popularity_O" value="2Not very popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="hbo_popularity_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="125" style="max-width:95%">
                            <h4>Would you recommend hyperbaric oxygen therapy to ur friend?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="0Strongly recommend"
                                    </td>
                                    <td>
                                        &nbsp;Strongly recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="1Recommend"
                                    </td>
                                    <td>
                                        &nbsp;Recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="2Not recommend"
                                    </td>
                                    <td>
                                        &nbsp;Not recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="3Cannot tell from results"
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>    
                                </tr>
                            </table>
                        </div><br><br>
                    </div>
                </div><br><br>
                <div id="1111" style="margin-left: 47.5%;">
                    <input type="button" class="btn btn-large btn-primary" name="next1" value="Next &raquo;" onclick="
                hideContent('1');
                hideContent('1111');
                showContent(3);
                           ">
                </div><br>
            </div> 


            <!--            <div id ="2" class="option" style="display:none;">
                            <div style="margin-left: 2.5%; max-width: 95%" class="page-header">
                                <p class="taskHeader">
                                    At left are search results about rife therapy (named after its inventor) during which low-voltage electricity is applied to the patient's body.
                                    <br><br>
                                    Please click on the results that look helpful and then answer the questions on the right.
                                </p>
                                <table> 
                                    <tr>
                                        <td>
                                            <img src='img/info_no.gif' height='20' width='21' title='gray info icon'> Poster links to supporting information&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                        <td>
                                            <img src='img/experience_050.gif' height='105' width='80' title='five person icons, half black-half gray'> percent posts about personal experiences&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
            
                                    </tr>                          
                                </table>
                            </div>
                            <div id="21" class="container" style="margin-bottom: 20px; margin-left: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: left">
                                <div id="cse2" style="width: 100%;">
                                    <div style="margin-left:3%;margin-top: 3%;margin-right: 3%;">
                                        <div>
                                            <table>
                                                <tr>
                                                    <td style="white-space:nowrap;">
                                                        <input id="query2" class="0" type="text" value="does rife work" onkeydown="keyPress2();" style="width:250%;vertical-align:top">&nbsp;&nbsp;
                                                        <input type="button"  class="btn btn-medium btn-primary" title="search" value="search" style="vertical-align:top" onclick="cleanML2();
                            setPage2();
                            getResults2();">
                                                    </td>                                                                                            
                                                </tr>                                                       
                                            </table>
                                        </div>
                                        <div>
                                            <table>
                                                <tbody
                                                    <tr>
                                                        <td>
                                                            <p><b style="color:#0088CC;">Note</b>: Feel free to run additional searches. Note that results will take 10-20 seconds to load.</p>
                                                        </td>
                                                    </tr>
                                            </table>
                                        </div>
                                        <div>
                                            <table id="results2">
                                                <tbody>
                                                    <tr style="height:40px;">
                                                        <td id="2post1" width='55'></td>
                                                        <td id="2infoLinks1"></td>
                                                        <td id="2experiential1"></td>
                                                        <td id="2title1"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post2" width='55'></td>
                                                        <td id="2infoLinks2"></td>
                                                        <td id="2experiential2"></td>
                                                        <td id="2title2"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post3" width='55'></td>
                                                        <td id="2infoLinks3"></td>
                                                        <td id="2experiential3"></td>
                                                        <td id="2title3"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post4" width='55'></td>
                                                        <td id="2infoLinks4"></td>
                                                        <td id="2experiential4"></td>
                                                        <td id="2title4"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post5" width='55'></td>
                                                        <td id="2infoLinks5"></td>
                                                        <td id="2experiential5"></td>
                                                        <td id="2title5"></td>
                                                    </tr>                                    
                                                    <tr style="height:40px;">
                                                        <td id="2post6" width='55'></td>
                                                        <td id="2infoLinks6"></td>
                                                        <td id="2experiential6"></td>
                                                        <td id="2title6"></td>
                                                    </tr>                                        
                                                    <tr style="height:40px;">
                                                        <td id="2post7" width='55'></td>
                                                        <td id="2infoLinks7"></td>
                                                        <td id="2experiential7"></td>
                                                        <td id="2title7"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post8" width='55'></td>
                                                        <td id="2infoLinks8"></td>
                                                        <td id="2experiential8"></td>
                                                        <td id="2title8"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post9" width='55'></td>
                                                        <td id="2infoLinks9"></td>
                                                        <td id="2experiential9"></td>
                                                        <td id="2title9"></td>
                                                    </tr>
                                                    <tr style="height:40px;">
                                                        <td id="2post10" width='55'></td>
                                                        <td id="2infoLinks10"></td>
                                                        <td id="2experiential10"></td>
                                                        <td id="2title10"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                                                            <table>
                                                <tr>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();
                            setPage2();
                            getResults2();">
                                                            1 
                                                        </a>                                            
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 1);getResults2();">
                                                           2
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 2);getResults2();">
                                                           3
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 3);getResults2();">
                                                           4
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 4);getResults2();">
                                                           5
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 5);getResults2();">
                                                           6
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 6);getResults2();">
                                                           7
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 7);getResults2();">
                                                           8
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 8);getResults2();">
                                                           9
                                                        </a>
                                                    </td>
                                                    <td width="15">
                                                        <a href="#" onclick="cleanML2();$('#query2').attr('class', 9);getResults2();">
                                                           10
                                                        </a>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>  
            
                            <div id="22" class="container" style="margin-bottom: 20px; margin-right: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: right">
                                <div style="margin-left:2.5%;">
                                    <div id="221"  style="max-width:95%">
                                        <h4>How effective would you tell your friend rife therapy is?</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_effective_O" value="0Very effective"/>
                                                </td>
                                                <td>
                                                    &nbsp;Very effective
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_effective_O" value="1Somewhat effective"/>
                                                </td>
                                                <td>
                                                    &nbsp;Somewhat effective
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_effective_O" value="2Not very effective"/>
                                                </td>
                                                <td>
                                                    &nbsp;Not very effective
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_effective_O" value="3Cannot tell from results"/>
                                                </td>
                                                <td>
                                                    &nbsp;Cannot tell from results
                                                </td>
                                            </tr>
                                        </table>
                                    </div><br><br>
            
                                    <div id="222"  style="max-width:95%">
                                        <h4>How trustworthy would you tell your friend rife therapy is?</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_trustworthiness_O" value="0Very trustworthy"/>
                                                </td>
                                                <td>
                                                    &nbsp;Very trustworthy
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_trustworthiness_O" value="1Somewhat trustworthy"/>
                                                </td>
                                                <td>
                                                    &nbsp;Somewhat trustworthy
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_trustworthiness_O" value="2Not very trustworthy"/>
                                                </td>
                                                <td>
                                                    &nbsp;Not very trustworthy
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_trustworthiness_O" value="3Cannot tell from results"/>
                                                </td>
                                                <td>
                                                    &nbsp;Cannot tell from results
                                                </td>
                                            </tr>
                                        </table>
                                    </div><br><br>
            
                                    <div id="223"  style="max-width:95%">
                                        <h4>How much factual support would you tell your friend there is for rife therapy?</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_factualSupport_O" value="0A lot of factual support"/>
                                                </td>
                                                <td>
                                                    &nbsp;A lot of factual support
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_factualSupport_O" value="1Some factual support"/>
                                                </td>
                                                <td>
                                                    &nbsp;Some factual support
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_factualSupport_O" value="2Not a lot of factual support"/>
                                                </td>
                                                <td>
                                                    &nbsp;Not a lot of factual support
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_factualSupport_O" value="3Cannot tell from results"/>
                                                </td>
                                                <td>
                                                    &nbsp;Cannot tell from results
                                                </td>
                                            </tr>
                                        </table>
                                    </div><br><br>
            
                                    <div id="224"  style="max-width:95%">
                                        <h4>How popular would you tell your friend rife therapy is?</h4>
                                        <table>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_popularity_O" value="0Very popular"/>
                                                </td>
                                                <td>
                                                    &nbsp;Very popular
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_popularity_O" value="1Somewhat popular"/>
                                                </td>
                                                <td>
                                                    &nbsp;Somewhat popular
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_popularity_O" value="2Not very popular"/>
                                                </td>
                                                <td>
                                                    &nbsp;Not very popular
                                                </td>
                                            </tr>
                                            <tr height="3px"></tr>
                                            <tr>
                                                <td>
                                                    <input type="radio" name="rife_popularity_O" value="3Cannot tell from results"/>
                                                </td>
                                                <td>
                                                    &nbsp;Cannot tell from results
                                                </td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="2222" style="margin-left: 47.5%;">
                                <input type="button" class="btn btn-large btn-primary" name="next1" value="Next &raquo;" onclick="
                            hideContent('2');
                            hideContent('2222');
                            showContent(3);">
                            </div><br>
                        </div>-->

            <div id ="3" class="option" style="display:none">
                <div style="margin-left: 2.5%; max-width: 95%" class="page-header">
                    <p class="taskHeader">
                        At left are search results about probiotics which are dietary supplements containing microorganisms.
                        <br><br>
                        Please click on the results that look helpful and then answer the questions on the right.                           
                    </p>
                    <table> 
                        <tr>
                            <td>
                                <img src='img/lyme_no.gif' height='20' width='21' title='gray info icon'> Poster links to supporting information&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                            <td>
                                <img src='img/experience_050.gif' height='105' width='80' title='five person icons, half black-half gray'> percent posts about personal experiences&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>

                        </tr>                          
                    </table>
                </div>
                <div id="31" class="container" style="margin-bottom: 20px; margin-left: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: left">
                    <div id="cse3" style="width: 100%;">
                        <div style="margin-left:3%;margin-top: 3%;margin-right: 3%;">
                            <div style="width:100%;">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="white-space:nowrap;">
                                            <input id="query3" class="0" type="text" value="probiotics for antibiotics" onkeydown="keyPress3();" style="width:70%;vertical-align:top">
                                            <img src="img/people_sphere.gif" height='40' width='40'>
                                            <input type="button"  class="btn btn-medium btn-primary" title="search" value="search" style="vertical-align:top" onclick="cleanML3();
                setPage3();
                getResults3();">
                                        </td>                                                                                            
                                    </tr>                                                       
                                </table>
                            </div>
                            <div>
                                <table>
                                    <tbody
                                        <tr>
                                            <td>
                                                <p><b style="color:#0088CC;">Note</b>: Feel free to run additional searches. Note that results will take 10-20 seconds to load.</p>
                                            </td>
                                        </tr>
                                </table>
                            </div>
                            <div>
                                <table id="results3">
                                    <tbody>
                                        <tr style="height:40px;">
                                            <td id="3post1" width='55'></td>
                                            <td id="3infoLinks1"></td>
                                            <td id="3experiential1"></td>
                                            <td id="3title1"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post2" width='55'></td>
                                            <td id="3infoLinks2"></td>
                                            <td id="3experiential2"></td>
                                            <td id="3title2"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post3" width='55'></td>
                                            <td id="3infoLinks3"></td>
                                            <td id="3experiential3"></td>
                                            <td id="3title3"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post4" width='55'></td>
                                            <td id="3infoLinks4"></td>
                                            <td id="3experiential4"></td>
                                            <td id="3title4"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post5" width='55'></td>
                                            <td id="3infoLinks5"></td>
                                            <td id="3experiential5"></td>
                                            <td id="3title5"></td>
                                        </tr>                                    
                                        <tr style="height:40px;">
                                            <td id="3post6" width='55'></td>
                                            <td id="3infoLinks6"></td>
                                            <td id="3experiential6"></td>
                                            <td id="3title6"></td>
                                        </tr>                                        
                                        <tr style="height:40px;">
                                            <td id="3post7" width='55'></td>
                                            <td id="3infoLinks7"></td>
                                            <td id="3experiential7"></td>
                                            <td id="3title7"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post8" width='55'></td>
                                            <td id="3infoLinks8"></td>
                                            <td id="3experiential8"></td>
                                            <td id="3title8"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post9" width='55'></td>
                                            <td id="3infoLinks9"></td>
                                            <td id="3experiential9"></td>
                                            <td id="3title9"></td>
                                        </tr>
                                        <tr style="height:40px;">
                                            <td id="3post10" width='55'></td>
                                            <td id="3infoLinks10"></td>
                                            <td id="3experiential10"></td>
                                            <td id="3title10"></td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table>
                                    <tr>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                setPage3();
                getResults3();">
                                                1 
                                            </a>                                            
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 1);
                getResults3();">
                                                2
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 2);
                getResults3();">
                                                3
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 3);
                getResults3();">
                                                4
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 4);
                getResults3();">
                                                5
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 5);
                getResults3();">
                                                6
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 6);
                getResults3();">
                                                7
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 7);
                getResults3();">
                                                8
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 8);
                getResults3();">
                                                9
                                            </a>
                                        </td>
                                        <td width="15">
                                            <a href="#" onclick="cleanML3();
                $('#query3').attr('class', 9);
                getResults3();">
                                                10
                                            </a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>  

                <div id="32" class="container" style="margin-bottom: 20px; margin-right: 1%;height:600px; width: 48.5%;display: block;overflow:scroll;border: 1px solid;border-color: #0088CC;float: right">
                    <div style="margin-left:2.5%;">
                        <div id="321"  style="max-width:95%">
                            <h4>How effective would you tell your friend probiotics are?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_effective_O" value="0Very effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Very effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_effective_O" value="1Somewhat effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_effective_O" value="2Not very effective"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very effective
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_effective_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="322"  style="max-width:95%">
                            <h4>How effective would you tell your friend probiotics are?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_trustworthiness_O" value="0Very trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Very trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_trustworthiness_O" value="1Somewhat trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_trustworthiness_O" value="2Not very trustworthy"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very trustworthy
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_trustworthiness_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="323"  style="max-width:95%">
                            <h4>How much factual support would you tell your friend there is for probiotics?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_factualSupport_O" value="0A lot of factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;A lot of factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_factualSupport_O" value="1Some factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;Some factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_factualSupport_O" value="2Not a lot of factual support"/>
                                    </td>
                                    <td>
                                        &nbsp;Not a lot of factual support
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_factualSupport_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="324"  style="max-width:95%">
                            <h4>How popular would you tell your friend probiotics are?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_popularity_O" value="0Very popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Very popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_popularity_O" value="1Somewhat popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Somewhat popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_popularity_O" value="2Not very popular"/>
                                    </td>
                                    <td>
                                        &nbsp;Not very popular
                                    </td>
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="probiotics_popularity_O" value="3Cannot tell from results"/>
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>
                                </tr>
                            </table>
                        </div><br><br>

                        <div id="325" style="max-width:95%">
                            <h4>Would you recommend this approach to your friend?</h4>
                            <table>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="0Strongly recommend"
                                    </td>
                                    <td>
                                        &nbsp;Strongly recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="1Recommend"
                                    </td>
                                    <td>
                                        &nbsp;Recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="2Not recommend"
                                    </td>
                                    <td>
                                        &nbsp;Not recommend
                                    </td>    
                                </tr>
                                <tr height="3px"></tr>
                                <tr>
                                    <td>
                                        <input type="radio" name="" value="3Cannot tell from results"
                                    </td>
                                    <td>
                                        &nbsp;Cannot tell from results
                                    </td>    
                                </tr>
                            </table>
                        </div><br><br>
                    </div>
                </div>
                <div id="Next3" style="margin-left: 47.5%;">
                    <input type="submit" class="btn btn-large btn-primary" name="next1" value="Next &raquo;" onclick="return getAnswers(this);">
                    <form action="task" hidden="">
                        <input name="hbo_effective" value="">
                        <input name="hbo_trustworthiness" value="">
                        <input name="hbo_factualSupport" value="">
                        <input name="hbo_popularity" value="">
                        <input name="rife_effective" value="">
                        <input name="rife_trustworthiness" value="">
                        <input name="rife_factualSupport" value="">
                        <input name="rife_popularity" value="">
                        <input name="probiotics_effective" value="">
                        <input name="probiotics_trustworthiness" value="">
                        <input name="probiotics_factualSupport" value="">
                        <input name="probiotics_popularity" value="">                            
                    </form> 
                </div><br>
            </div>   
        </div>


        <div id="footer">
            <div class="container" style="margin-left:2.5%; max-width:90%">
                <p class="muted credit">Human-Computer Interaction Institute | Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>
            </div>
        </div>

    </body>
</html>

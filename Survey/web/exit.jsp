<%-- 
    Document   : exit
    Created on : 2013-9-3, 16:49:01
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
        <script type='text/javascript'>
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
        </script>
        <style type="text/css">
            /* Sticky footer styles
            -------------------------------------------------- */
            html,
            body {
                height: 93.8%;
                /* The html and body elements cannot have any padding or margin. */
            }

            /* Wrapper for page content to push down footer */
            #wrap {
                min-height: 100%;
                height: auto !important;
                height: 100%;
                /* Negative indent footer by it's height */
                margin: 0 auto -60px;

                margin-bottom: 5px;               
            }

            #footer {             
                top: 110px;
                height: 60px;
                background-color: #f5f5f5;
            }

            .container .credit {
                margin: 20px 0;
            }

        </style>
    </head>
    <body onkeydown="KeyDown();" onload="noBack();">
        <div id="wrap">
            <div  id="0" class="container" style="margin-left: 2.5%;margin-top: 2.5%; max-width: 95%; display: block">
                <h3>
                    Your session has come to an end. Thank you.
                </h3>
            </div>   
        </div>

        <div id="footer">
            <div class="container" style="margin-left: 2.5%">
                <p class="muted credit">Human-Computer Interaction Institute | Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>
            </div>
        </div>
    </body>
</html>

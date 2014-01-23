<%-- 
    Document   : early_exit.jsp
    Created on : 2013-8-8, 13:59:14
    Author     : Cheng Guo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Early Exit</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <script src="http://code.jquery.com/jquery.js"></script>
        <script src="https://www.google.com/jsapi" type="text/javascript"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.icheck.js"></script>
        <link href="layout/bootstrap.min.css" rel="stylesheet" media="screen">
        <link href="flat/blue.css" rel="stylesheet" media="screen">
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
        </script>
    </head>
    <body onkeydown="KeyDown();" onload="noBack();">
          <%
              response.setHeader("Pragma", "no-cache"); // HTTP 1.0
              response.setHeader("Cache-Control", "no-store"); // HTTP 1.1
              response.setDateHeader("Expires", 0);
          %> 

          <!--early-exit page-->
          <div  id="0" class="container" style="margin-left: 2.5%;margin-top: 2.5%; max-width: 95%; display: block">
            <h3>
                Thank you for your interest in the study.
            </h3><br>
            <h3>
                Since you have declined to participate in the study or have exited the study, your session has come to an end.
            </h3>
            <br>
            <table>
                <tr>
                    <td>
                        <input type="button" class="btn btn-large btn-primary" value="Leave page" onclick="window.open('', '_self', '');
                window.close();">
                    </td>
                    <td>
                        <a href="index.jsp"><input type="button" class="btn btn-large btn-primary" value="Oops, I made a mistake. Please take me back to the study!" style="margin-left: 300px;"></a>
                    </td>
                </tr>              
            </table>
        </div>
    </body>
</html>

<%-- 
    Document   : postTask
    Created on : 2013-8-12, 2:44:42
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
                height: 95.7%;
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
                document.getElementById(id).style.display = "table";
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
        </script>
    </head>
    <body onkeydown="KeyDown();" onload="noBack();">
        <!-- Part 1: Wrap all page content here -->      
        <div id="wrap">
            <form action="postTask">
                <div id="1" class="container" style="margin-left: 2.5%; max-width: 95%; display: block;">
                    <div class="page-header">
                        <h2>Your Recommendations</h2>
                    </div>
<!--                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly<br>disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat<br>disagree</b></font></td>                            
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat<br>agree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly<br>agree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Not enough<br>information to<br>answer</b></font></td>
                        </tr>
                        
                        <div id="t1">
                            <tr>
                                <td style="height:35pt;">
                                    <h4>I would recommend hyperbaric oxygen therapy to my friend.</h4>
                                </td>
                                <td align="center">
                                    <input type="radio" name="hbo_recommendation" value="0Strongly disagree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="hbo_recommendation" value="1Somewhat disagree"/>
                                </td>                              
                                <td align="center">
                                    <input type="radio" name="hbo_recommendation" value="2Somewhat agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="hbo_recommendation" value="3Strongly agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="hbo_recommendation" value="4Not enough information to answer"/>
                                </td>
                            </tr>
                        </div>

                        <div id="t2">
                            <tr>
                                <td style="height:35pt;">
                                    <h4>I would recommend rife therapy to my friend.</h4>
                                </td>
                                <td align="center">
                                    <input type="radio" name="rife_recommendation" value="0Strongly disagree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="rife_recommendation" value="1Somewhat disagree"/>
                                </td>                               
                                <td align="center">
                                    <input type="radio" name="rife_recommendation" value="2Somewhat agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="rife_recommendation" value="3Strongly agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="rife_recommendation" value="4Not enough information to answer"/>
                                </td>
                            </tr>
                        </div>

                        <div id="t3">
                            <tr>
                                <td style="height:35pt;">
                                    <h4>I would recommend probiotics to my friend.</h4>
                                </td>
                                <td align="center">
                                    <input type="radio" name="probiotics_recommendation" value="0Strongly disagree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="probiotics_recommendation" value="1Somewhat disagree"/>
                                </td>                              
                                <td align="center">
                                    <input type="radio" name="probiotics_recommendation" value="2Somewhat agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="probiotics_recommendation" value="3Strongly agree"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="probiotics_recommendation" value="4Not enough information to answer"/>
                                </td>
                            </tr>
                        </div>
                    </table><br>-->
                    
<!--                    <h4>Please explain your recommendation for hyperbaric oxygen therapy:</h4>
                    <table>
                        <tr>
                            <td>
                                <textarea name="hbo_explanation" class="form-control" rows="4" style="min-width:600px"></textarea>
                            </td>
                        </tr>
                    </table><br><br>
                    
                    <h4>Please explain your recommendation for rife therapy:</h4>
                    <table>
                        <tr>
                            <td>
                                <textarea name="rife_explanation" class="form-control" rows="4" style="min-width:600px"></textarea>
                            </td>
                        </tr>
                    </table><br><br>
                    
                    <h4>Please explain your recommendation for probiotics:</h4>
                    <table>
                        <tr>
                            <td>
                                <textarea name="probiotics_explanation" class="form-control" rows="4" style="min-width:600px"></textarea>
                            </td>
                        </tr>
                    </table><br><br>-->
                    
                    <h4>When thinking about what to tell your friend, how important are the following?</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="160px"><font color="#0088CC"><b>Very important</b></font></td>
                            <td align="center" width="160px"><font color="#0088CC"><b>Somewhat important</b></font></td>
                            <td align="center" width="160px"><font color="#0088CC"><b>Not very important</b></font></td>
                        </tr>
                        
                        <div id="imp1">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Positive patient reports</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_patientReports" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_patientReports" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_patientReports" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                        
                        <div id="imp2">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Positive expert reports</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_expertReports" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_expertReports" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_expertReports" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                        
                        <div id="imp3">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Effectiveness</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_effectiveness" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_effectiveness" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_effectiveness" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                        
                        <div id="imp4">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Trustworthiness</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_trustworthiness" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_trustworthiness" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_trustworthiness" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                        
                        <div id="imp5">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Factual Support</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_factualSupport" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_factualSupport" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_factualSupport" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                        
                        <div id="imp6">
                            <tr>
                                <td style="height:35pt;">
                                    <font><b>Popularity</b></font>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_popularity" value="0Very important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_popularity" value="1Somewhat important"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="importance_popularity" value="2Not very important"/>
                                </td>
                            </tr>
                        </div>
                    </table><br><br>
                    
                    <h4>Is there anything else you would like to tell us?</h4>
                    <table>
                        <tr>
                            <td>
                                <textarea name="otherComments" class="form-control" rows="4" style="min-width:600px"></textarea>
                            </td>
                        </tr>
                    </table><br>
                        
                    <input type="submit" class="btn btn-large btn-primary" value="Next &raquo;"></a>
                </div>               
            </form>
        </div>   

        <div id="footer">
            <div class="container" style="margin-left: 2.5%">
                <p class="muted credit">Human-Computer Interaction Institute | Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>
            </div>
        </div>
    </body>
</html>

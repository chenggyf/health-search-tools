<%-- 
    Document   : preSurvey
    Created on : 2013-8-8, 15:51:22
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
                margin: 0 auto -55px;

                margin-bottom: 5px;               
            }

            #footer {             
                top: 110px;
                height: 55px;
                background-color: #f5f5f5;
            }

            .container .credit {
                margin: 15px 0;
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
            <form action="userAnswer">               
                <div id="3" class="container" style="margin-left:2.5%; max-width:95%; display:block;">
                    <div class="page-header">
                        <h2>Seeking Health Information Online</h2>
                    </div>
                    <h4>Do you ever search for health information online?</h4>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td>
                                <input type="radio" name="seekOnlineHealthInfo" value="0Often"/>
                            </td>
                            <td>
                                &nbsp;Often
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="seekOnlineHealthInfo" value="1Sometimes"/>
                            </td>
                            <td>
                                &nbsp;Sometimes
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="seekOnlineHealthInfo" value="2Rarely or never"/>
                            </td>
                            <td>
                                &nbsp;Rarely or never
                            </td>
                        </tr>
                    </table><br>

                    <h4>Do you ever visit health forums (sites where you can talk about health)?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthForums" value="0Often"/>
                            </td>
                            <td>
                                &nbsp;Often
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthForums" value="1Sometimes"/>
                            </td>
                            <td>
                                &nbsp;Sometimes
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthForums" value="2Rarely or never"/>
                            </td>
                            <td>
                                &nbsp;Rarely or never
                            </td>
                        </tr>
                    </table><br>

                    <!--                    <h4>How much do you agree with the following statements about health forums?</h4><br>
                                        <table style="height:100%;table-layout:fixed">
                                            <tr>
                                                <td></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Strongly agree</b></font></td>
                                            </tr>
                    
                                            <tr>
                                                <td style=" height:35pt;">
                                                    In general, most health forum members who answer questions are competent in their responses.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence1" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence1" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence1" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence1" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence1" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I am comfortable relying on online forum members to provide honest and complete descriptions of their experiences.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity1" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity1" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity1" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity1" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity1" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I always feel confident that I can rely on health forum members to stand behind the experiences they describe.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity2" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity2" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity2" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity2" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity2" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I feel good about the information I find on health forums.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general1" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general1" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general1" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general1" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general1" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    Most health forum members do a capable job at meeting other members’ needs.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence2" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence2" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence2" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence2" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence2" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    Most health forum members are interested in their fellow members' well-being, not just their own well-being.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence1" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence1" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence1" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence1" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence1" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                                                <td align="center" width="100px"><font color="#0088CC"><b>Strongly agree</b></font></td>
                                            </tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I feel that most health forum members are good at providing relevant, useful information.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence3" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence3" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence3" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence3" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_competence3" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    Health forum members generally write honestly about their experiences.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity3" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity3" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity3" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity3" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity3" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I feel that most health forum members would act in a fellow member’s best interest.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence2" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence2" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence2" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence2" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence2" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I am comfortable making health decisions based on information I find on health forums.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general2" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general2" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general2" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general2" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_general2" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    I always feel confident that I can rely on health forum members to do their part when I interact with them.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity4" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity4" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity4" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity4" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_integrity4" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                            <tr style="height:5px"></tr>
                                            <tr>
                                                <td style=" height:35pt;">
                                                    If a fellow member required help, most health forum members would do their best to help.
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence3" value="0Strongly disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence3" value="1Somewhat disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence3" value="2Neither agree nor disagree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence3" value="3Somewhat agree"/>
                                                </td>
                                                <td align="center">
                                                    <input type="radio" name="healthForum_benevolence3" value="4Strongly agree"/>
                                                </td>
                                            </tr>
                                        </table><br>-->
                    <h4>Think of a health forum. What is it?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="nameOfForum"
                                       class="input-xxlarge search-query"
                                       placeholder="Please Specify (leave blank if you do not use health forums).">
                            </td>
                        </tr>
                    </table><br>
                    <h4>If you named a forum, how much do you agree with the following statements about the forum?</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly<br>agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                        </tr>

                        <tr>
                            <td style=" height:35pt;">
                                Forum members who answer
                                questions provide competent information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members provide unbiased information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members stand behind the information they provide.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I feel good about the information I
                                find on that forum.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members do a capable job at meeting other members’ needs.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members are interested in their fellow members' well-being, not just their own well-being.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly<br>agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members provide useful information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_competence3" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members write accurately about what they know.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity3" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members would act in a fellow member’s best interest.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I am comfortable making health decisions based on information I find on that forum.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_general2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Forum members do their part when I interact with them.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_integrity4" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                If a fellow member required help, they could find it on the forum.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthForum_benevolence3" value="5N/A"/>
                            </td>
                        </tr>
                    </table><br>

                    <h4>Do you ever visit health websites (sites where you can read about health)?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthSites" value="0Often"/>
                            </td>
                            <td>
                                &nbsp;Often
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthSites" value="1Sometimes"/>
                            </td>
                            <td>
                                &nbsp;Sometimes
                            </td>
                        </tr>
                        <tr style="height:3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="visitHealthSites" value="2Rarely or never"/>
                            </td>
                            <td>
                                &nbsp;Rarely or never
                            </td>
                        </tr>
                    </table><br>
                    
                    <h4>Think of a health website. What is it?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="nameOfSite"
                    class="input-xxlarge search-query"
                    placeholder="Please Specify (leave blank if you do not use health websites).">
                            </td>
                        </tr>
                    </table><br>
                    
                    <h4>If you named a health website, how much do you agree
                    with the following statements about the website?</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly<br>agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                        </tr>

                        <tr>
                            <td style=" height:35pt;">
                                That website provides competent information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website provides unbiased information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website stands behind the information it provides.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I feel good about the information I
                            find on that website.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website does a capable job at meeting reader needs.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website is interested in readers' well-being, not just its own well-being.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Strongly<br>agree</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                        </tr>

                        <tr>
                            <td style=" height:35pt;">
                                That website provides useful information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website maintains the accuracy of
                            its information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website would act in its readers' best interests.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I am comfortable making health
                            decisions based on information I find on
                            that  website.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                That website does its part when I interact with it.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="5N/A"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                If a reader required help, they could find it on the website.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="4Strongly agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="5N/A"/>
                            </td>
                        </tr>
                    </table><br>

<!--                    <h4>How much do you agree with the following statements about health websites (as defined in the previous question)?</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly agree</b></font></td>
                        </tr>

                        <tr>
                            <td style=" height:35pt;">
                                In general, most health websites are competent in the information they provide.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence1" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I am comfortable relying on health websites to provide unbiased information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity1" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I always feel confident that I can rely on health websites to stand behind the information on their websites.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity2" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I feel good about the information I find on health websites.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general1" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Most health websites do a capable job at meeting user needs.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence2" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Most health websites are interested in their users' well-being, not just their own well-being.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence1" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Neither agree nor disagree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat agree</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Strongly agree</b></font></td>
                        </tr>

                        <tr>
                            <td style=" height:35pt;">
                                I feel that most health websites are good at providing relevant, useful information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_competence3" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                Health websites generally maintain the accuracy of their information.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity3" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I feel that most health websites would act in their users' best interest.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence2" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I am comfortable making health decisions based on information I find on health websites.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_general2" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                I always feel confident that I can rely on health websites to do their part when I interact with them.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_integrity4" value="4Strongly agree"/>
                            </td>
                        </tr>
                        <tr style="height:5px"></tr>
                        <tr>
                            <td style=" height:35pt;">
                                If a user required help, most health websites would do their best to help.
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="0Strongly disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="1Somewhat disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="2Neither agree nor disagree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="3Somewhat agree"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="healthWebsite_benevolence3" value="4Strongly agree"/>
                            </td>
                        </tr>
                    </table><br>-->
                    <input type="button" class="btn btn-large btn-primary" value="Next &raquo;" onclick="showContent('4');
                hideContent('3');
                scroll(0, 0);">
                </div>

                <div id="4" class="container" style="margin-left:2.5%; max-width:95%; display:none;">
                    <div class="page-header">
                        <h2>Seeking Health Information Online</h2>
                    </div>
                    <h4>Think of a time you looked for health information online.</h4><br>

                    <h4>When was this?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="when" value="0Recently"/>
                            </td>
                            <td>
                                &nbsp;Recently
                            </td>
                        </tr>
                        <tr style="height:3px;"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="when" value="1Not so recently"/>
                            </td>
                            <td>
                                &nbsp;Not so recently
                            </td>
                        </tr>
                    </table><br>

                    <h4>Who were you seeking information for?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="who" value="0Myself"/>
                            </td>
                            <td>
                                &nbsp;Myself
                            </td>
                        </tr>
                        <tr style="height:3px;"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="who" value="1Someone else"/>
                            </td>
                            <td>
                                &nbsp;Someone else
                            </td>
                        </tr>
                    </table><br>

                    <h4>What kind of information were you looking for?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="typeOfInfoSought" class="input-xxlarge search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br>

                    <h4>Where did you start looking (i.e., what website)?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="firstWebsite" class="input-xxlarge search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br>

                    <h4>If you started on a search engine (e.g., Google, Bing), what website did you first visit by clicking on the search results?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="firstNonSearchWebsite" class="input-xxlarge search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br>

                    <h4>How many websites did you visit, excluding search engines (e.g., Google, Bing)?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="howMany" value="0One"/>
                            </td>
                            <td>
                                &nbsp;One
                            </td>
                        </tr>
                        <tr style="height:3px;"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="howMany" value="1A few"/>
                            </td>
                            <td>
                                &nbsp;A few
                            </td>
                        </tr>
                        <tr style="height:3px;"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="howMany" value="2A lot"/>
                            </td>
                            <td>
                                &nbsp;A lot
                            </td>
                        </tr>
                    </table><br>

                    <h4>Did you find what you were looking for on the first website you visited that was not a search engine (e.g., Google, Bing)?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="foundInfoOnFirstSite" value="0Yes"/>
                            </td>
                            <td>
                                &nbsp;Yes
                            </td>
                        </tr>
                        <tr style="height:3px;"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="foundInfoOnFirstSite" value="1No"/>
                            </td>
                            <td>
                                &nbsp;No
                            </td>
                        </tr>
                    </table><br>

                    <h4>If no, where did you ultimately find the information you were looking for?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="whereInfoFound" class="input-xxlarge search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br><br>

                    <input type="button" class="btn btn-large btn-primary" value="Next &raquo;" onclick="showContent('5');
                hideContent('4');
                scroll(0, 0);">
                </div>

                <div id="5" class="container" style="margin-left:2.5%; max-width:95%; display:none;">                    
                    <div class="page-header">
                        <h2>Seeking Health Information Online</h2>
                    </div>
                    <h4>Still thinking of the time you looked for health information online, please answer the following questions.</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Mostly</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Some</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Not much</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>Not at all</b></font></td>
                            <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                        </tr>

                        <div id="q1">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for claims supported by research studies?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport1" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport1" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport1" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport1" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport1" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q2">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for agreement among experts?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity1" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity1" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity1" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity1" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity1" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q3">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for claims supported by statistics?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport2" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport2" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport2" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport2" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport2" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q4">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for claims supported by people’s stories?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport3" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport3" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport3" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport3" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport3" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q5">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for personal stories mentioned on trusted websites?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust1" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust1" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust1" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust1" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust1" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q6">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for what people said about side effects?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect1" value="0mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect1" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect1" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect1" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect1" value="4N/A"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Mostly</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Some</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Not much</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Not at all</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                            </tr>
                        </div>
                        <div id="q7">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for research studies mentioned on trusted websites?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust2" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust2" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust2" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust2" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust2" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q8">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for lists of known side effects?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect2" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect2" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect2" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect2" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect2" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q9">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for success rates?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect3" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect3" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect3" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect3" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect3" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q10">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for multiple research studies that had similar results?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity2" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity2" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity2" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity2" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity2" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q11">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for claims supported by blog articles?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport4" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport4" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport4" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport4" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_factualSupport4" value="4N/A"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Mostly</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Some</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Not much</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>Not at all</b></font></td>
                                <td align="center" width="12%"><font color="#0088CC"><b>N/A</b></font></td>
                            </tr>
                        </div>
                        <div id="q12">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for multiple stories that had similar outcomes?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity3" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity3" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity3" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity3" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity3" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q13">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for agreement in online discussion groups?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity4" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity4" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity4" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity4" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_popularity4" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q14">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for articles published in familiar medical journals?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust3" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust3" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust3" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust3" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust3" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q15">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for success stories?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect4" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect4" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect4" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect4" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_effect4" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q16">
                            <tr>
                                <td style=" height:35pt;">
                                    Did you look for experiences you could relate to?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust4" value="0Mostly"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust4" value="1Some"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust4" value="2Not much"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust4" value="3Not at all"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForLast_trust4" value="4N/A"/>
                                </td>
                            </tr>
                        </div>
                    </table><br>
                    <input type="button" class="btn btn-large btn-primary" value="Next &raquo;" onclick="showContent('6');
                hideContent('5');
                scroll(0, 0);">
                </div>

                <div id="6" class="container" style="margin-left:2.5%; max-width:95%; display:none;">                    
                    <div class="page-header">
                        <h2>Seeking Health Information Online</h2>
                    </div>
                    <h4>Thinking of all the times you looked for health information online, please answer the following questions.</h4><br>
                    <table style="height:100%;table-layout:fixed">
                        <tr>
                            <td></td>
                            <td align="center" width="80px"><font color="#0088CC"><b>Often</b></font></td>
                            <td align="center" width="80px"><font color="#0088CC"><b>Sometimes</b></font></td>
                            <td align="center" width="80px"><font color="#0088CC"><b>Rarely</b></font></td>
                            <td align="center" width="80px"><font color="#0088CC"><b>Never</b></font></td>
                        </tr>

                        <div id="q1">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you looked for claims supported by research studies?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport1" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport1" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport1" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport1" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q2">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for agreement among experts?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity1" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity1" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity1" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity1" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q3">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for claims supported by statistics?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport2" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport2" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport2" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport2" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q4">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for claims supported by people’s stories?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport3" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport3" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport3" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport3" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q5">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for personal stories mentioned on trusted websites?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust1" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust1" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust1" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust1" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q6">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for what people said about side effects?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect1" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect1" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect1" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect1" value="3Never"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Often</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Sometimes</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Rarely</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Never</b></font></td>
                            </tr>
                        </div>
                        <div id="q7">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for research studies mentioned on trusted websites?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust2" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust2" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust2" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust2" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q8">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for lists of known side effects?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect2" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect2" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect2" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect2" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q9">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for success rates?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect3" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect3" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect3" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect3" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q10">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for multiple research studies that had similar results?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity2" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity2" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity2" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity2" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q11">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for claims supported by blog articles?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport4" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport4" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport4" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_factualSupport4" value="3Never"/>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Often</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Sometimes</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Rarely</b></font></td>
                                <td align="center" width="75px"><font color="#0088CC"><b>Never</b></font></td>
                            </tr>
                        </div>
                        <div id="q12">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for multiple stories that had similar outcomes?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity3" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity3" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity3" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity3" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q13">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for agreement in online discussion groups?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity4" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity4" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity4" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_popularity4" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q14">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for articles published in familiar medical journals?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust3" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust3" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust3" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust3" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q15">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for success stories?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect4" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect4" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect4" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_effect4" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                        <div id="q16">
                            <tr>
                                <td style=" height:35pt;">
                                    Have you ever looked for experiences you could relate to?
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust4" value="0Often"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust4" value="1Sometimes"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust4" value="2Rarely"/>
                                </td>
                                <td align="center">
                                    <input type="radio" name="lookForEver_trust4" value="3Never"/>
                                </td>
                            </tr>
                        </div>
                    </table><br>
                    <input type="button" class="btn btn-large btn-primary" value="Next &raquo;" onclick="showContent('7');
                hideContent('6');
                scroll(0, 0);">
                </div>

                <div id="7" class="container" style="margin-left:2.5%; max-width:95%; display:none;">

                    <div class="page-header">
                        <h2>Your Health Experience</h2>
                    </div>

                    <h4>In general, how would you say your health is?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="generalHealth" value="0Excellent"/>
                            </td>
                            <td>
                                &nbsp;Excellent
                            </td>
                        </tr>
                        <tr style="height: 3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="generalHealth" value="1Very good"/>
                            </td>
                            <td>
                                &nbsp;Very good
                            </td>
                        </tr>
                        <tr style="height: 3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="generalHealth" value="2Good"/>
                            </td>
                            <td>
                                &nbsp;Good
                            </td>
                        </tr>
                        <tr style="height: 3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="generalHealth" value="3Fair"/>
                            </td>
                            <td>
                                &nbsp;Fair
                            </td>
                        </tr>
                        <tr style="height: 3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="generalHealth" value="4Poor"/>
                            </td>
                            <td>
                                &nbsp;Poor
                            </td>
                        </tr>
                    </table><br>

                    <h4>Do you or does someone you know well(relatives, friends, etc.) have any of the following health conditions?</h4>
                    <table>
                        <tr>
                            <td></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Myself</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Someone<br>close to me&nbsp;&nbsp;</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>No one<br>close to me</b></font></td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Cancer
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_cancer" value="0Myself"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_cancer" value="1Someone close"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_cancer" value="2No one"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Diabetes
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_diabetes" value="0Myself"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_diabetes" value="1Someone close"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_diabetes" value="2No one"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Heart Disease
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_heartDisease" value="0Myself"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_heartDisease" value="1Someone close"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_heartDisease" value="2No one"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Lyme Disease
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_lyme" value="0Myself"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_lyme" value="1Someone close"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_lyme" value="2No one"/>
                            </td>
                        </tr>
                        <tr>    
                            <td style=" height:35pt;">
                                Another condition
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_other" value="0Myself"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_other" value="1Someone close"/>
                            </td>
                            <td align="center">
                                <input type="checkbox" name="relationship_other" value="2No one"/>
                            </td>
                        </tr>
                        <tr>
                            <td>                               
                                <input type="text" name="relationship_otherName" class="input-large search-query">
                            </td>
                        </tr>    
                    </table><br>

                    <h4>Do you consider yourself to be knowledgeable about any health conditions?</h4>
                    <table>
                        <tr>
                            <td></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Very</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Somewhat</b></font></td>
                            <td align="center" width="100px"><font color="#0088CC"><b>Not very</b></font></td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Cancer
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_cancer" value="0Very"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_cancer" value="1Somewhat"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_cancer" value="2Not very"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Diabetes
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_diabetes" value="0Very"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_diabetes" value="1Somewhat"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_diabetes" value="2Not very"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Heart Disease
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_heartDisease" value="0Very"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_heartDisease" value="1Somewhat"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_heartDisease" value="2Not very"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Lyme Disease
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_lyme" value="0Very"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_lyme" value="1Somewhat"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_lyme" value="2Not very"/>
                            </td>
                        </tr>
                        <tr>
                            <td style=" height:35pt;">
                                Another condition                               
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_other" value="0Very"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_other" value="1Somewhat"/>
                            </td>
                            <td align="center">
                                <input type="radio" name="knowledge_other" value="2Not very"/>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <input type="text" name="knowledge_otherName" class="input-large search-query">
                            </td>
                        </tr>
                    </table><br>
                    <p><input type="submit" class="btn btn-large btn-primary" value="Next &raquo;"></p>                
                </div>               
            </form>
        </div>


        <div id="footer">
            <div class="container" style="margin-left:2.5%; max-width:95%;">
                <p class="muted credit">Human-Computer Interaction Institute | Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>
            </div>
        </div>

    </body>
</html>

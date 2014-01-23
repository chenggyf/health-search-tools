<%-- 
    Document   : introduction
    Created on : 2013-7-30, 17:49:50
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
            });</script>

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
            <div id="1" class="container" style="margin-left:2.5%; max-width:95%;">
                <div class="page-header">
                    <h1>Welcome!</h1>
                </div>

                <h3>Win<font color="#8A0808">&nbsp;$50</font>!</h3><br>

                <h3>If you are at least 18, enter a raffle by completing the following survey about how you use health information online.</h3><br>

                <input type="button" onclick="showContent('2');
                hideContent('1');" class="btn btn-large btn-primary" value="Next &raquo;">
            </div>

            <div id="2" class="container" style="margin-left:2.5%; max-width:95%; display:none;">
                <div class="page-header">
                    <h1>Your Consent</h1>
                </div>

                <h3>We hope this research will help us learn about how individuals find and use health information online.</h3>

                <h4>The purpose of this form is to explain what you can expect from the research study and to protect your privacy.</h4><br>

                <div id="consentform" style="height:300px; width:650px; display:block; overflow:scroll; border:1px solid; border-color:#0088CC; float:top">

                    <div style="margin:10px">
                        <p>The study includes a survey about your health and internet experiences, completion of online tasks (such as searching, reviewing search results, and navigation) and answering questions about these tasks, and a survey about you.</p>

                        <p>The study takes about 30 minutes to complete.</p>

                        <p>After you finish the study, you will have an opportunity to enter yourself in a raffle. When the entire study is complete, four prizes of $50 each will be awarded at random to individuals who completed the study and entered themselves in the raffle.</p>

                        <p>You must be at least 18 years old to participate.</p>

                        <p>You always have the option to quit at any time, for any reason (for example, if you are upset by recalling a sad moment due to past or present illness). Your participation will help us help others, but may not help you directly.</p> 

                        <p>We will not mention anything that could be used to identify you or anyone else in anything we publish. We will store all data in a secure location. We will keep your contact information separate from all other data.</p> 

                        <p>However, if Carnegie Mellon is required to in a legal case, we may have to disclose more information.</p>

                        <p>If you have any questions about this study, please <a href="mailto:lymestudyinfo@gmail.com">email us</a> before continuing.</p>

                        <p>If you have questions later, want additional information, or want to withdraw your consent please contact:</p>

                        <p>Primary Investigator<br />
                            Professor Jennifer Mankoff<br />
                            Email: <a href="mailto:jmankoff@cs.cmu.edu">jmankoff@cs.cmu.edu</a><br />
                            Phone: 412-268-1295</p>

                        <p>Other Investigator(s)<br />
                            Jamie Crawford<br />
                            Cheng Guo<br />
                            Jessie Schroeder</p>

                        <p>If you have questions about your rights as a research participant or wish to report objections to this study, you should contact:</p>

                        <p>Office of Research Integrity and Compliance (ORIC)<br />
                            Carnegie Mellon University<br />
                            5000 Forbes Avenue<br />
                            Pittsburgh, PA 15213<br />
                            Email: <a href="mailto:irb-review@andrew.cmu.edu">irb-review@andrew.cmu.edu</a><br />
                            412-268-1901 or 412-268-5460</p>
                    </div>
                </div><br>

                <a href="OnliineHealthInformationStudy_ConsentForm.pdf" target="_blank">Click here to download a copy of this consent form.</a><br><br>

                <h4>By continuing with the study, you agree that you understand the information above and that you are at least 18 years old.</h4><br>

                <form action="userAgreement">
                    <input type="submit" name="agreement" class="btn  btn-primary" value="I am above 18 and agree to participate in this research study."/>
                    <br><br>
                    <input type="submit" name="agreement" class="btn  btn-primary" value="I do not agree to participate in this research study."/> 
                </form>
            </div>
        </div>

        <div id="footer">
            <div class="container" style="margin-left:2.5%; max-width:90%">
                <p class="muted credit">Human-Computer Interaction Institute | Carnegie Mellon University | 5000 Forbes Ave | Pittsburgh, PA 15213</p>
            </div>
        </div>

    </body>
</html>

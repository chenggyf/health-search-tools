<%-- 
    Document   : conclusion
    Created on : 2013-8-19, 16:50:48
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


//            function getTime() {
//                var d = new Date();
//                $.ajax({
//                    type: "POST",
//                    url: "Conclusion",
//                    data: {"timer": d}
//                });
//            }

        </script>
    </head>
    <body onkeydown="KeyDown();" onload="noBack();">
        <!-- Part 1: Wrap all page content here -->      
        <div id="wrap">
            <form action="Conclusion">               
                <div id="1" class="container" style="margin-left: 2.5%; max-width:95%; display: block;">
                    <div class="page-header">
                        <h1>About You</h1>
                    </div>
                    <h4>What gender are you?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="gender" value="0Male"/>
                            </td>
                            <td>
                                &nbsp;Male
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="gender" value="1Female"/>
                            </td>
                            <td>
                                &nbsp;Female
                            </td>
                        </tr>
                    </table><br>
                    
                    <h4>What year were you born?</h4>
                    <table>
                        <tr>
                            <td>
                                <select name="yearBorn">
                                    <option></option>
                                    <script type="text/javascript">
                                        var selectobject = document.getElementById("yearBorn");
                                        for (var i = 2010; i > 1909; i--) {
                                            document.writeln("<option value=\"" + i + "\">" + i + "</option>");
                                        }
                                    </script>
                                </select>
                            </td>
                        </tr>
                    </table><br>
                    
                    <h4>What are your initials?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="initials" class="input-xxlarge search-query">
                            </td>
                        </tr>
                    </table><br>

                    <h4>What is your marital status?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="maritalStatus" value="0Single"/>
                            </td>
                            <td>
                                &nbsp;Single
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="maritalStatus" value="1Married"/>
                            </td>
                            <td>
                                &nbsp;Married or living with a domestic partner
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="maritalStatus" value="2Divorced"/>
                            </td>
                            <td>
                                &nbsp;Divorced or separated
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="maritalStatus" value="3Widowed"/>
                            </td>
                            <td>
                                &nbsp;Widowed
                            </td>
                        </tr>
                    </table><br>

                    <h4>How are you employed? Check all that apply.</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="0Undergraduate"/>
                            </td>
                            <td>
                                &nbsp;Undergraduate student
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="1Graduate"/>
                            </td>
                            <td>
                                &nbsp;Graduate student
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="2Employed full time"/>
                            </td>
                            <td>
                                &nbsp;Employed full time
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="3Employed part time"/>
                            </td>
                            <td>
                                &nbsp;Employed part time
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="4Homemaker"/>
                            </td>
                            <td>
                                &nbsp;Homemaker
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="5Retired"/>
                            </td>
                            <td>
                                &nbsp;Retired
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="checkbox" name="occupation" value="6Unemployed"/>
                            </td>
                            <td>
                                &nbsp;Unemployed
                            </td>
                        </tr>
                    </table><br>

                    <h4>What is the highest level of education you have achieved?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="0Some school"/>
                            </td>
                            <td>
                                &nbsp;Some school
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="1High school graduate"/>
                            </td>
                            <td>
                                &nbsp;High school graduate
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="2Some college"/>
                            </td>
                            <td>
                                &nbsp;Some college
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="3Associate's degree"/>
                            </td>
                            <td>
                                &nbsp;Associate's degree
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="4Bachelor's degree"/>
                            </td>
                            <td>
                                &nbsp;Bachelor's degree
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="5Master's degree"/>
                            </td>
                            <td>
                                &nbsp;Master's degree
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="education" value="6PhD degree"/>
                            </td>
                            <td>
                                &nbsp;PhD degree
                            </td>
                        </tr>
                    </table><br>

                    <h4>What is your ethnicity?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="0White"/>
                            </td>
                            <td>
                                &nbsp;Caucasian/white
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="1Black"/>
                            </td>
                            <td>
                                &nbsp;African American/African descent
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="2Asian"/>
                            </td>
                            <td>
                                &nbsp;Asian/Pacific Islander
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="3Native american"/>
                            </td>
                            <td>
                                &nbsp;Native American
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="4Hispanic"/>
                            </td>
                            <td>
                                &nbsp;Hispanic
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="ethnicity" value="5Other"/>
                            </td>                            
                            <td>
                                &nbsp;Other&nbsp;&nbsp;&nbsp;<input type="text" name="otherEthnicity" class="input-medium search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br>

                    <h4>What is your nationality?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="nationality" value="0Usa"/>
                            </td>
                            <td>
                                &nbsp;United States of America
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="nationality" value="1Other"/>                                
                            </td>      
                            <td>
                                &nbsp;Other&nbsp;&nbsp;&nbsp;<input type="text" name="otherNationality" class="input-medium search-query" placeholder="Please specify.">
                            </td>
                        </tr>
                    </table><br>

                    <div id="state">
                        <h4>What state do you live in?</h4>
                        <table>
                            <tr>
                                <td>
                                    <select name="us_state">
                                        <option value="N/A">Not applicable</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DE">Delaware</option>
                                        <option value="DC">District of Columbia</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="IA">Iowa</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="ME">Maine</option>
                                        <option value="MD">Maryland</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MT">Montana</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NY">New York</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VT">Vermont</option>
                                        <option value="VA">Virginia</option>
                                        <option value="WA">Washington</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WY">Wyoming</option>
                                    </select>
                                </td>
                            </tr>
                        </table><br>
                    </div>

                    <h4>What is your native language?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="radio" name="language" value="0English"/>
                            </td>
                            <td>
                                &nbsp;English
                            </td>
                        </tr>
                        <tr height="3px"></tr>
                        <tr>
                            <td>
                                <input type="radio" name="language" value="1Other"/>
                            </td>
                            <td>
                                &nbsp;Other                                
                            </td>
                            <td>
                                <input type="text" name="otherLanguage" class="input-medium search-query" placeholder="Please specify:">
                            </td>
                        </tr>
                    </table><br>
                    
                    <h4>How did you learn about this study?</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="whereSee" class="input-xxlarge search-query">
                            </td>
                        </tr>
                    </table><br>

                    <input type="button" name="next1" class="btn btn-large btn-primary"  value="Next &raquo;" onclick="showContent('2');
                                            hideContent('1');
                                            getTime();">
                </div>

                <div id="2" class="container" style="margin-left: 2.5%; max-width:90%; display: none;">
                    <div class="page-header">
                        <h2>Thank You!</h2>
                    </div>
                    <h4>If you are interested in learning more about this study, please contact Dr. Jennifer Mankoff:
                        <a href='mailto:jmankoff@cs.cmu.edu'>lymestudyinfo@gmail.com</a>.</h4><br>

                    <h4>Please use the textbox below if you have any additional comments about your experience or about the study.</h4>
                    <table>
                        <tr>
                            <td>
                                <textarea name="studyComments" class="form-control" rows="4" style="min-width:600px"></textarea>
                            </td>
                        </tr>
                    </table><br>
                    <h4>If you would like to enter the raffle, please provide your email address.</h4>
                    <table>
                        <tr>
                            <td>
                                <input type="text" name="emailAddress" class="input-xxlarge search-query">
                            </td>
                        </tr>
                    </table><br>

                    <table>
                        <tr>
                            <td>
                                <input type="checkbox" name="contactMe" value="yes"/>
                            </td>
                            <td>
                                <h4>&nbsp;Please check here if you are willing to be contacted for a follow up study.</h4>
                            </td>
                        </tr>
                    </table><br>

                    <h4>The raffle for four prizes of <font color="#8A0808">$50</font> each will be drawn after all study responses have been collected. The probability of being selected for one of these prizes is no worse than 1/100.</h4><br>

                    <p><input type="submit" name="decision" class="btn btn-large btn-primary" value="Submit &raquo;"></p>
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

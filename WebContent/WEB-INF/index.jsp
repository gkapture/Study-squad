<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.marque.MarqueeLink"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.marque.MarqueeDao"%>
<html lang="en">
<head>
    <%@ include file="header.jsp" %> 
    <style>
    .inoesis:link{
    color:green;
    }
     .inoesis:visited{
    color:green;
    }
     .inoesis:hover{
    color:red;
    }
     .inoesis:active{
    color:green;
    }
  
    </style> 
</head><!--/head-->

<body class="homepage">
     <div>
		 <marquee direction="left"   style="width:100%;height:30px" scrollamount="3"   onMouseOver="this.stop(setAttribute('scrollamount', 0, 0));" OnMouseOut="this.start(setAttribute('scrollamount', 6, 0));">
				<img src="https://www.jntufastupdates.com/wp-content/plugins/PostsByDate/new.gif">
				<%  List l=MarqueeDao.fetchMarquee();
					Iterator it=l.iterator();
					while(it.hasNext()){
					MarqueeLink mlink=(MarqueeLink)it.next();
				%>
					<a href="<%=mlink.getUrl()%>" target="_blank"><%=mlink.getTitle()%> || </a>
				<%
					}
				%>
		 </marquee>
      </div>
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
<!--             <ol class="carousel-indicators"> -->
<!--                 <li data-target="#main-slider" data-slide-to="0" class="active"></li> -->
<!--                 <li data-target="#main-slider" data-slide-to="1"></li> -->
<!--                 <li data-target="#main-slider" data-slide-to="2"></li> -->
<!--             </ol> -->
            <div class="carousel-inner">

                <div class="item active" style="background-image: url(images/slider/bg1.jpg);height:540px;">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 >Study-Squad</h1>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img1.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->                
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
    </section><!--/#main-slider-->

    

    <section id="recent-works">
        <div class="container">
            <div class="center wow fadeInDown">
                <h2>Top Colleges</h2>
                <p class="lead">Study-Squad brings Top Engineering Colleges in India 2016 Rating based on quality of students  <br> and a combination of factors including engineering colleges’ research output, industry interface, referred publications and academic productivity.</p>
            </div>

            <div class="row">
              <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c7.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">PESIT </a></h3>
                                <p>PES University is a private university in Bengaluru, India</p>
                                 <a class="preview" href="#"  data-toggle="modal" data-target="#basicModal7"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                            <div class="modal fade" id="basicModal7" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">PESIT</h4>
            </div>
            <div class="modal-body">
                <h3>PES was established in 1972 at Bangalore, the Silicon Valley of India. PES is focused on four main educational areas: Engineering, Medicine, Management and Life Sciences.
                 The institutions offer both foundation courses in these areas, as well as specialization with a Bachelors/ Master/ PhD Degree.Combine years of experience in education with a unique curriculum world-class infrastructure, with a committed responsive faculty, 
                 unwavering commitment to the quality of education, today PES has more than 18,000 students, spread across four different campuses, Three state of art campuses in Bangalore and a Medical College with 750 bed hospital in Kuppam, Andra Pradesh.To provide students with a sense of history, 
                 an understanding of values and ethics, a commitment to law and morality, an appreciation of human creativity and an analytical inquiring mind.
                <br>
                For more details click here: <a href="http://www.pesit.pes.edu" target="_blank">www.pesit.pes.edu</a>
                </h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>
                    </div>
                </div> 
                
				     <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c8.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">MSRUAS</a></h3>
                                <p>M.S.Ramaiah University of Applied Sciences a top Research and Innovation oriented Academic institution in the Silicon Valley of India.</p>
                                <a class="preview" href="#"  data-toggle="modal" data-target="#basicModal8"><i class="fa fa-eye"></i> View</a>
                            </div> 
                        </div>
                            <div class="modal fade" id="basicModal8" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="">MSRUAS</h4>
            </div>
            <div class="modal-body">
                <h3>M.S.Ramaiah University is an Innovation University that focuses on UG and PG Education,Research,Consultancy,Trainingand Skill.The educational institutions under each trust are managed by a group of professionals, each group is headed by a Chief Executive. The Institutions are very popular all over India and around 14000 students study in these institutions.The University events involving collaborations, functions, prestigious lectures, awards, visits of important guests and their interactions are reported.<br>
Mission of the trust is: “To Deliver Education and Health Care for the Betterment of Mankind”<br>
For more details click here: <a href="http://www.msruas.ac.in" target="_blank">www.msruas.ac.in</a>


</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>
                    </div>
                </div> 
                  
				
				   <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c2.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">EAST WEST GROUP OF INSTITUTION </a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal1"><i class="fa fa-eye"></i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal1" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">EAST WEST GROUP OF INSTITUTION </h4>
            </div>
            <div class="modal-body">
                <h3>“THE EVER KNOWN FACE OF MILLIONS BEHIND THE GREAT WALLS OF “EAST WEST FAMILY”

EAST WEST GROUP OF INSTITUTION established in 1968.
 A well known and a prestigious educational institution, crowns a supreme place among the top colleges in Bangalore.
  The institution was founded by Founder and Former BBMP Mayor Late Sri. C. N Nagaraj as it was one of his great dream project,
   a visionary and an acknowledged educationist, a philanthropist and a social worker.
   His prime motto is to provide a matchless educational assistance to every student child of all respective classes. 
   He devoted his precious time, efforts, and life to interpret his ambition into a reality.
<br>
For more details click here: <a href="http://www.ewitedu.in" target="_blank">www.ewitedu.in</a>


</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>

                    </div>
                </div>
  <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c5.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">R.R Group of institutions</a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal5"> <i class="fa fa-eye"> </i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal5" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">R.R Group of institutions</h4>
            </div>
            <div class="modal-body">
                P.K.M Educational Trust is setup with a mission of imparting education to all sections of society. The Trust was established in the year of 1993 to render services to mankind in the field of education by establishing schools and colleges, along with other facilities, highly qualified faculties and well equipped with sophisticated labs. We are proud to say that, many of our students after completion of their course, have been placed across the country and abroad in prestigious organizations.

The R. R. Group of Institutions, under PKM Educational Trust, has so many technical and Non-technical institutions to cater to the varied ambitions of asprising student's community.
<br>
For more details click here: <a href="http://www.rrinstitutions.com" target="_blank">www.rrinstitutions.com</a>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>        
  </div>
     </div>
 
                
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c3.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">RajaRajeshwari Group of Institutions</a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal3"><i class="fa fa-eye"></i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal3" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">RajaRajeshwari Group of Institutions</h4>
            </div>
            <div class="modal-body">
                <h3>Education is presently undergoing a welcome seismic change. In tune with the changing times, RajaRajeshwari Group of Institutions,
aim to help students excel in the various fields of study of their choice.
In the field of education, RajaRajeshwari Group of Institutions is looking at engaging the students in overall development processes.
We have designed co- curricular and extra curricular activities for the students to be involved in, actively.
We are dedicated to meet the challenges of the new millennium, in the field of medical and technical higher education 
so as to make our country a highly industrialized and healthy modern nation.<br>
For more details click here: <a href="http://www.rrgroupinsts.org" target="_blank">www.rrgroupinsts.org</a>

</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>        
  </div>
     </div>
   
               
                <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c4.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">S.B Group of institutions</a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal4"> <i class="fa fa-eye"> </i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal4" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">S.B Group of institutions</h4>
            </div>
            <div class="modal-body">
                S.B Group of institutions was conceived by a group of eminent business leaders and academicians with a vision to nurture leaders with a global mindset who could grasp the nuances of the transitional economies. The institutions are managed by Ideal Education Society, a registered trust established in the year 1984, Over the years,
Ideal Education Society has undertaken a number of education initiatives, which make a difference in the lives of deserving and needy students.
IEA offers a complete range of graduate and postgraduate courses in subjects such as Finance, Management, Information Technology, Business and both UG/PG Programs in Nursing leading to both nationally and internationally recognized qualifications.
The college provides curriculum that are up-to-date and relevant to the modern employment environment, offering a quality, student-centered education at an affordable fee.<br>
       For more details click here: <a href="http://www.sbinstitutions.com" target="_blank">www.sbinstitutions.com</a>    
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>        
  </div>
     </div>
	 
	 
	 
	           
  <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c6.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Mother Teresa College of Nursing </a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal6"> <i class="fa fa-eye"> </i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal6" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">Mother Teresa College of Nursing </h4>
            </div>
            <div class="modal-body">
                The Jalahalli Education Society is dedicated to high quality of education since 1981. 
The Mother Teresa College of Nursing and School of Nursing was started in 2003. It is located in a convenient location with access to facilities 
like city buses, train and all kinds of transportation. It is surrounded by many multi-specialty hospitals and lots of greenery.
 The institution has all modern facilities for training like lab, own building, vehicles, qualified and experienced teaching staff with professional senior advisors for guidance.
We are an institution that is committed to creating the Nightingales of the future, to care for the suffering millions in this world of ours.
Inspired by the generosity of Mother Teresa, the Angel of Mercy, we have built an institution of nursing that sensitizes the young to the needs of the people around to serve them in a selfless manner.
          
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>        
  </div>
     </div>
      <div class="col-xs-12 col-sm-4 col-md-3">
                    <div class="recent-work-wrap">
                        <img class="img-responsive" src="images/portfolio/recent/c1.png" alt="">
                        <div class="overlay">
                            <div class="recent-work-inner">
                                <h3><a href="#">Al-Ameen Educational Society</a> </h3>
                                <p></p>
								<a class="preview" href="#" data-toggle="modal" data-target="#basicModal"><i class="fa fa-eye"></i> View</a>
			      </div> 

							
                        </div>
    <div class="modal fade" id="basicModal" tabindex="-1" role="dialog" aria-labelledby="basicModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">x</button>
            <h4 class="modal-title" id="myModalLabel">Al-Ameen Educational Society</h4>
            </div>
            <div class="modal-body">
                <h3>Al-Ameen Educational Society was established in 1966 in the city of Bangalore to provide educational facilities for minorities especially members of Muslim Community as there was no other learning centre for higher education for Muslims. Being the first of its kind in Karnataka its founder,
                 Dr. Mumtaz Ahmed Khan laid the foundation of a big enlarged movement called "Al-Ameen Movement" under whose patronage attention was focused on education, banking and health sectors for the benefit of down trodden sections especially members of the Muslim Community. 
He was supported by bunch of dedicated and devoted workers whose sincere efforts have resulted in establishing around 20 branches of Al-Ameen Educational 
Society and 135 institutions throughout the State of Karnataka and India serving the cause of education to nearly 45 thousand students.<br>
For more details click here: <a href="http://www.alameen66-edu.org" target="_blank">www.alameen66-edu.org</a>
</h3>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
                
        </div>
    </div>
  </div>
</div>

                    </div>
                </div>
 
  

      </div>
      </div>         
            
    </section><!--/#recent-works-->

    

     <section id="middle">
        <div class="container">
            <div class="row">
                    <div class="col-xs-12 col-sm-8 wow fadeInDown">
                    <h2>Bangalore's Best JAVA Development Training Company:<i ><a  href="http://inoesissolutions.com/" class="inoesis" target="_blank">i-Noesis Solutions</a></i></h2> 
                   <div class="tab-wrap">
                   
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class="active"><a href="#tab1" data-toggle="tab" class="analistic-01">Training</a></li>
                                    <li class=""><a href="#tab2" data-toggle="tab" class="analistic-02">Development</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">IEEE Project Development</a></li>
                                    <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">Outsourcing</a></li>
                                  
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                              

                               

                                     <div class="tab-pane fade active in" id="tab1">
                                          <div class="media">
                                      <div class="">
                                                <img class="img-responsive" src="images\service\inoesis_java_j2ee_embedded_training.jpg">
                                            </div>
                                      <div class="media-body">
                                        <p>i-Noesis is a leading Talent Development Institution, building a skilled manpower pool for industry requirements. We impart a unique experience that will inspire you and shape your career. We are a technology driven company providing world class IT and Electronics Training 
                      <a target="_blank" href="http://inoesissolutions.com/index.php/training">&nbsp;&nbsp;More Details</a></p>
                                        </div>
                                        </div>
                                     </div>
                                     
                                     <div class="tab-pane fade" id="tab2">
                                     <div class="media">
                                      <div class="">
                                                <img class="img-responsive" src="images\service\inoesislogo.jpg">
                                            </div>
                                      <div class="media-body">
                                        <p> 

The software that suits your specific business needs simply isn’t available on the market. When available software aren’t sufficient for your enterprise, i-Noesis can develop software based on your specifications – efficiently and deliver on time.<a target="_blank" href="http://inoesissolutions.com/index.php/it-services/application-development">&nbsp;&nbsp;More Details</a></p>
                                        </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab3">
                                       <div class="media">
                                      <div class="">
                                                <img class="img-responsive" src="images\service\inoesis_solutions_ieee_finalyear_project.jpg">
                                            </div>
                                     <div class="media-body">
                                        <p>i-Noesis Solutions’s research & development team helps students to implement/develop <b>IEEE Projects and Research Papers.</b><a target="_blank" href="http://inoesissolutions.com/index.php/it-services/academic-projects-development">&nbsp;&nbsp; More Details</a>
</p>
                                        </div>
                                        </div>
                                     </div>
                                        <div class="tab-pane fade" id="tab4">
                                        <p>i-Noesis's formidable workforce offers a wide range of resource skills across technologies and platforms. A snapshot of our Skills Portfolio is given below 

                                        <ul>
                                   

                                         <li> Microsoft Technologies</li>
                                          <li> Java</li>
                                          <li> C, C++, AD C</li>
                                           <li> VC, VC++, C#</li>
                                           <li>  XML</li>
                                           <li>  PHP</li>
                                           <li>  Perl</li>
                                           <li>  Python</li>
                                             </ul>
                                        </p>
                                     </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->
                <div class=" col-xs-12 col-sm-4 wow fadeInDown">
                    <div class="accordion">
                        <h2>Model Question Paper</h2>
                        <div class="panel-group" id="accordion1">
                          <div class="panel panel-default">
                            <div class="panel-heading active">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseOne1">
                                  Engineer
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>

                            <div id="collapseOne1" class="panel-collapse collapse in">
                              <div class="panel-body">
                                  <div class="media accordion-inner">
                                      <div class="media-body">
                                             <table class="table table-hover">

                                                 <tr>
                                                   <td><a href="QuestionBank?filename=engineer/22.pdf">2016 paper</a></td>
                                                   <td><a href="QuestionBank?filename=engineer/11.pdf">2015 paper</a></td>
                                                 </tr>
                                                 <tr>
                                                   <td><a href="QuestionBank?filename=engineer/33.pdf">2014 paper</a></td>
                                                   <td><a href="QuestionBank?filename=engineer/44.pdf">2013 paper</a></td>
                                                 </tr>

                                             </table>
                                        </div>
                                  </div>
                              </div>
                            </div>
                          </div>

                          <div class="panel panel-default">
                            <div class="panel-heading">
                              <h3 class="panel-title">
                                <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion1" href="#collapseTwo1">
                                  Medical
                                  <i class="fa fa-angle-right pull-right"></i>
                                </a>
                              </h3>
                            </div>
                            <div id="collapseTwo1" class="panel-collapse collapse">
                              <div class="panel-body">
                                <table class="table table-hover">

                                    <tr>
                                      <td><a href="QuestionBank?filename=medical/MHT-CET-2016 (22).pdf">2016 paper</a></td>
                                      <td><a href="QuestionBank?filename=medical/MHT-CET-2016 (33).pdf">2015 paper</a></td>
                                    </tr>
                                    <tr>
                                      <td><a href="QuestionBank?filename=medical/MHT-CET-2016 (44).pdf">2014 paper</a></td>
                                      <td><a href="QuestionBank?filename=medical/MHT-CET-2016 .pdf">2013 paper</a></td>
                                    </tr>

                                </table>
                              </div>
                            </div>
                          </div>
                         </div>
                         </div>
                         </div>
            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#middle-->

    

   

   

    <%@ include file="footer.jsp" %> 
</body>
</html>
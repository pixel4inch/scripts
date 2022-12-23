<!doctype html>
<html lang="en">
<head>
    <!---====== SEO NEEDS /======--->
    <meta charset="utf-8" />
    <link rel="canonical" href="GIA Portal.com" />
    <title>GIA BUSINESS ECOSYSTEMS</title>
    <meta name="description" content="GIA Portal" />
    <meta name="keywords" content="GIA Portal" />
    <meta name="p:domain_verify" content="e373fc05e5338589a9a20fa7eb8cbeea" />
    <meta name="robots" content="index, follow" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="author" content="GIA Portal" />
    <meta name="identifier-url" content="GIA Portal" />
    <meta name="distribution" content="Global" />
    <meta name="coverage" content="Worldwide" />
    <meta name="rating" content="General" />
    <meta name="language" content="English" />
    <meta name="p:domain_verify" content="2d36e07dec67d2a8d0bea712d690fe78" />
    <meta property="og:site_name" content="GIA Portal" />
    <meta property="og:type" content="company" />
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
    <!---====== Favicons ========-->
    <link rel="apple-touch-icon" sizes="57x57" href="img/favicon/apple-touch-icon-57x57.png " />
    <link rel="apple-touch-icon" sizes="60x60" href="img/favicon/apple-touch-icon-60x60.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/favicon/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="img/favicon/apple-touch-icon-76x76.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/favicon/apple-touch-icon-114x114.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="img/favicon/apple-touch-icon-120x120.png" />
    <link rel="apple-touch-icon" sizes="144x144" href="img/favicon/apple-touch-icon-144x144.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="img/favicon/apple-touch-icon-152x152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="img/favicon/apple-touch-icon-180x180.png" />
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
    <meta name="apple-mobile-web-app-title" content="aviationnews.today Template">
    <link rel="icon" type="image/png" sizes="32x32" href="img/favicon/favicon-32x32%20.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="img/favicon/favicon-16x16.png" />
    <link rel="shortcut icon" href="img/favicon/favicon.ico" />
    <!---====== Css Links =======--->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/custom_style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!---=======GOOGLE FONTS=====--->
    <link href="https://fonts.googleapis.com/css?family=Playfair+Display+SC:400,400i,700,700i,900|Playfair+Display:400,400i,500,500i,600,600i,700,700i|Poppins:200,200i,300,300i,400,400i,500,500i,600,600i,700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
    <script src="js/bootstrap.js"></script>

	<!--#include file="ADOVBS.asp"-->
    <!--#include file="ASPIncludes/DBopen.asp"-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

	<script>

	  function addToDatabaseNew(rno) {
	  
	  var res = rno.split("##");
	  var code = res[0];
	  var domain = res[1];
	  var Industry = res[2];
	  // alert(code);
	  // alert(domain);

	   if((code != "") && (domain!=""))
		 {
		  $.ajax({
			url: "Ajax_Domain_CategoriesAdd.asp",
			type: "POST",
			data:'vcode='+encodeURIComponent(code)+'&vdomain='+encodeURIComponent(domain)+'&vIndustry='+encodeURIComponent(Industry)+'',
			success: function(data){
			// alert('Saved');	 	  
					 
			},
			error: function (xhr, ajaxOptions, thrownError) {
			alert(xhr.status);
			alert(thrownError);
			alert(xhr.responseText);
			}
		  });   
		  } 
		}
	</script>

	<script>
		function addToDatabaseNewPortal() {
		  var vDomainName = $("#txtDomain_Name").val();
		  var vDomainIP = $("#txtDomain_IP").val(); 
		  var vDomain = $("#txtDomain").val();	
		   

		   if((vDomainName != "") && (vDomainIP !=""))
			 {
			 //alert(vDomainName);
			// alert(vDomainIP);
			  $.ajax({
						url: "Ajax_AddWebportal.asp",
						type: "POST",
						data:'vDomainName='+encodeURIComponent(vDomainName)+'&vDomainIP='+encodeURIComponent(vDomainIP)+'&vDomain='+encodeURIComponent(vDomain)+'',
						success: function(data){
						alert('WebPortal data Added Successfully!');
						
						 // $('#divajax').append(data);
							 
						},
						error: function (xhr, ajaxOptions, thrownError) {
						alert(xhr.status);
						alert(thrownError);
						alert(xhr.responseText);
						}
					});
				modal.style.display = "none";
				parent.location.reload();
			  } 
			}

	</script>

	<style>
		/* The Modal (background) */
		.modal {
		  display: none; /* Hidden by default */
		  position: fixed; /* Stay in place */
		  z-index: 1; /* Sit on top */
		  left: 0;
		  top: 0;
		  width: 100%; /* Full width */
		  height: 100%; /* Full height */
		  overflow: auto; /* Enable scroll if needed */
		  background-color: rgb(0,0,0); /* Fallback color */
		  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}

		/* Modal Content/Box */
		.modal-content {
		  background-color: #fefefe;
		  margin: 15% auto; /* 15% from the top and centered */
		  padding: 20px;
		  border: 1px solid #888;
		  width: 30%; /* Could be more or less, depending on screen size */
		}

		/* The Close Button */
		.close {
		  color: #aaa;
		  float: right;
		  font-size: 28px;
		  font-weight: bold;
		}

		.close:hover,
		.close:focus {
		  color: black;
		  text-decoration: none;
		  cursor: pointer;
		}
		
		
		#revinue-table{
			width:100%;
		}
		
		#revinue-table tr td{
			font-size:14px !important
			padding:3px 5px !important;
		}
		
		#revinue-table tr th{
			font-size:14px !important;
			text-align:center !important;
			font-weight:bold
		}
		
		
		
		
		
		
	</style>

	<script>
	
	function DownloadCompaniesList(McpCode)
{ 

	window.open('ViewCompaniesList.asp?code='+McpCode+'','new','resizable=yes,scrollbars=yes,width=700,heigth=600,left=0,top=0');
}

function AssignCompaniesVerificationPendingList(McpCode)
{
  window.open('ViewAssignCompaniesVerificationPendingList.asp?code='+McpCode+'','new','resizable=yes,scrollbars=yes,width=700,heigth=600,left=0,top=0');

}
	</script>
  
</head>
<%

	if trim(Request.ServerVariables("http_referer"))="" then
		Response.Redirect "default.asp?login=sesout"
	end if
	'' if session expired
	if trim(session("AdmFirstName"))="" then
		Response.Redirect "default.asp?login=sesout"
	end If
	
'' for paging
	dim k,rec_per_page
	rec_per_page=25
	Dim Cp,rowcount,i
		cp=Request.QueryString("Cp")
		EforEdit=Request.QueryString("E")
	if cp="" then
		cp=1
		EforEdit=cint(rec_per_page)
	end if 
	cpForEdit=cp
  '''''''''''''''''
%>
<!---====== Bootstrap core CSS =======--->
<body class="template_01" id="template_01">
<!--form-->
    <!---BEGIN:HEADER--->
    <header class="header py-3 fixed-top shadow" id="header">
        <div class="container ">
            <div class="brand_title">
                <img src="img/logo/Brand_logo.svg" />
            </div>
        </div>
    </header>
    <!---END:HEADER--->
    <!---BEGIN:Main Content--->
    <main>
        <div class="container bg_white shadow-sm border">
            
           
             <!-----TOP START----->
			<!--#include file="TopMenu.asp"-->
		     
            
            <!---BEGIN:SEARCH--->
            
            <section class="wow fadeIn">
                <div class="row px-md-5 px-2 bg_light">
                    <div class="col-12 col-md-9  mx-auto py-4   search_section ">
                        <form class="card card-sm">
                            <div class="card-body row no-gutters align-items-center shadow-lg">
                                <div class="col-10 col-sm-11 ">
                                    <input class="form-control form-control-lg form-control-borderless rounded-0" type="text" placeholder="Search topics or keywords" id="TxtSearch" name="TxtSearch">
                                </div>
                                <!--end of col-->
                                <div class="col-2 col-sm-1 order-md-2">
                                    <button class="btn btn-lg btn_blue-dark rounded-0 text-white w-100 hvr-fade" type="submit"><i class="fa fa-search"></i></button>
                                </div>
                               


                                <!--end of col-->
                            </div>
                        </form>
                    </div>
                </div>
            </section>
            
            <!---END :SEARCH--->
            
          
            
            <!---- BEGIN :REPORT SECTION ---->
            <section class="py-2">
                <div class="row">
                    <div class="container-fluid bg-gray" id="accordion-style-1">
                        <div class="row">
                            <div class="col-12 mx-auto">
                                <div class="table-responsive border">
								

				 <table id="revinue-table" class="table table-striped table-bordered">
					<thead>
						
						
						<tr>
							<th nowrap class="text-center">SNO</th>
							<th style="width:150px">Filename</th>
							<th  >Company Name</th>
							<th >Country</th>
							<th >Website</th>
							<th >Employees Count</th>
							<th >Revenue Source</th>
							<th >Revenue year</th>
							<th >Original Revenue</th>
							<th >Converted Revenue</th>						
							<!--th>Status</th>
							<th>updated Date</th>
							<th>Email</th>
							<th>Original Status</th--> 
						</tr>
						
					</thead>
					<tbody>
					
						<%
							Set rsuser = Server.CreateObject("ADODB.Recordset")
							
							If Trim(request("TxtSearch")) <> "" Then
							
							''sql1="SELECT top 10 Filename,company,country,website,(SELECT Revenue from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue,(SELECT Revenue_year from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue_year,(SELECT Revenue_Source from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue_Source,(SELECT Employee_Count from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Employee_Count,(SELECT updated_date from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as updatedDate,(SELECT email from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as email,(SELECT item_status from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as item_status ,(SELECT Acquired_Status from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Acquired_Status,(SELECT Convert_Revenue from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Convert_Revenue from InfluencersCompanies  where (Filename LIKE '%"&Trim(request("TxtSearch"))&"%' or company LIKE '%"&Trim(request("TxtSearch"))&"%')"
							  sql1="SELECT top 10 Filename,company,country,website, Revenue, Revenue_year, Revenue_Source,Employee_Count,updated_Date, email, item_status , Acquired_Status, Convert_Revenue from vw_InfluencersCompanies_Sub  where (Filename LIKE '%"&Trim(request("TxtSearch"))&"%' or company LIKE '%"&Trim(request("TxtSearch"))&"%')"
							else
							''sql1="SELECT top 10 Filename,company,country,website,(SELECT Revenue from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue,(SELECT Revenue_year from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue_year,(SELECT Revenue_Source from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Revenue_Source,(SELECT Employee_Count from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Employee_Count,(SELECT updated_date from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as updatedDate,(SELECT email from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as email,(SELECT item_status from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as item_status ,(SELECT Acquired_Status from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Acquired_Status,(SELECT Convert_Revenue from InfluencersCompanies_sub where filename=dbo.InfluencersCompanies.filename) as Convert_Revenue from InfluencersCompanies "
							  sql1="SELECT top 10 Filename,company,country,website, Revenue, Revenue_year, Revenue_Source,Employee_Count,updated_Date, email, item_status , Acquired_Status, Convert_Revenue from vw_InfluencersCompanies_Sub "
							End if
							'response.write sql1
							''response.end
							rsuser.Open sql1,DataSource4
							''rsDomain.Open SqlDomain,DataSource4
							Dim sno
							sno = 1
							if not rsuser.eof then
								while not rsuser.eof%>
								<tr>
								    <td class="text-center"><%=sno%></td>
									<td width="2%" class="border-right" align="center">
									<%=rsuser("Filename")%>
									</td>								
									
									<td >
									<div class="d-flex">
										<p><%=rsuser("Company")%></p>
										
										<div class="d-flex" style="width:100px">
												<button class="btn mx-2" style="width:35px; height:35px" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
		   <i class="fa fa-pencil-square-o color-danger" aria-hidden="true"></i>
		  </button>
												
												<button class="btn mx-2" style="width:35px; height:35px" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
			<i class="fa fa-floppy-o color-primary" aria-hidden="true"></i>
		  </button>
  
										
										</div>
										
									
									
									</div>
									<div class="w-100">
											<div class="collapse show" id="collapseExample">
											 	<input type="text" name="company" id="companyedit"/>
											</div>
										</div>
									
									
									</td>
									<td ><%=rsuser("Country")%></td>
									<td ><%=rsuser("Website")%></td>
									<td ><%=rsuser("Employee_Count")%></td>
									<td ><%=rsuser("Revenue_Source")%></td>
									<td ><%=rsuser("Revenue_year")%></td>
									<td ><%=rsuser("Revenue")%></td>									
									<td ><%=rsuser("Convert_Revenue")%>	</td>						
									<!--td ><%
									
									if trim(rsuser("item_status")) = "D" then
									      Response.write("DONE")
									else
									      Response.write("WIP")
									end if
									
									
									
									%></td>
									<!--td><%=rsuser("updated_Date")%></td>
									<td><%=rsuser("email")%></td>
									<td>
									
									<%
									
									if (trim(rsuser("Acquired_Status")) = "S") or (trim(rsuser("Acquired_Status")) = "Y") then									
									      Response.write("Not Found")
									end if
									
									%></td-->
								</tr>			
							<%	 sno = sno + 1
							rsuser.movenext
								wend
							else%>
								<tr>
									<td colspan=14 align=center> No Records Exists </td>
								</tr>
							<%end if
							Set rsuser = nothing
							%>
						
					</tbody>
					<!--tfoot>
						<tr>
							<th align="center" class="text-center" colspan="12"><input type="submit" Onclick="javascript:window.close();" value="Close" class="btn mt-3 shadow btn-primary" id="btnClose" name="btnClose"></th>
						</tr>
					</tfoot-->
				</table>
									
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!---- BEGIN :REPORT SECTION ----><br><br><br><br>
        </div>
    </main>   
	
    
    <!---End:Main Content--->
    <footer class="fixed-bottom py-2 bg_black">
        <div class="container text-center">
            <p class="f_white">© Global Industry Analysts, Inc., USA. All Rights Reserved.</p>
        </div>
    </footer>
    
    <!---======BEGIN: BACK TO TOP BUTTON =======--->
    <a id="back-to-top" href="#" class="btn  btn-lg back-to-top" role="button" title="Back To Top"><i class=" fa fa-arrow-circle-up"></i></a>
    <!--/form-->
</body>
<script>
     
    // Search box filter list
    $(document).ready(function(){
  $("#TxtSearch").on("keyup", function() {
    var value = $(this).val().toLowerCase();	
    $("#divSearch div").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
    
    //SCROLL TO TOP

$(window).scroll(function () {
    if ($(this).scrollTop() > 50) {
        $('#back-to-top').fadeIn();
    } else {
        $('#back-to-top').fadeOut();
    }
});

// scroll body to 0px on click
$('#back-to-top').click(function () {
    $('body,html').animate({
        scrollTop: 0
    }, 400);
    return false;
});
    
</script>  

<script>
		// Get the modal
		var modal = document.getElementById("myModal");

		// Get the button that opens the modal
		var btn = document.getElementById("myBtn");

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on the button, open the modal
		btn.onclick = function() {
		  modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		  modal.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		  if (event.target == modal) {
			modal.style.display = "none";
		  }
		}
</script>
</html>
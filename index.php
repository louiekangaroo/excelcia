<?PHP 
   session_start();
   include_once("./udf/udf.php");
   if(strlen(trim($_SESSION['usertype']))<1 ){
       siteRedirectWithAlert("You Must Login first!","login.php");
   }
   $usertype = strtolower($_SESSION['usertype']);
   $fname  = strtoupper($_SESSION['fname']);
   
   $displaymenu = "<li><a href='#'>Profile</a></li> ";
   if($usertype=='admin') {
       $displaymenu .= "                   
                   <li>
                       <a href='#' class='dropdown-toggle'>CIA Management</a>
                       <ul class='d-menu' data-role='dropdown'>
                           <li><a href='usermanagement.php'>User Accounts</a></li>
                           <li class='divider'></li>
                           <li><a href='#'>Question Bank</a></li>
                       </ul>
                   </li>
                   <li>
                       <a href='#' class='dropdown-toggle'>Report Management</a>
                       <ul class='d-menu' data-role='dropdown'>
                           <li><a href='#'>User Activity Logs</a></li>
                           <li class='divider'></li>
                           <li><a href='#'>Exam Results</a></li>
                       </ul>
                   </li>";
   }
   if($usertype=='teacher') {
       $displaymenu .= "
                   <li><a href='#'>Manage Study Materials</a></li>    
                   <li><a href='#'>View Students Performance Report</a></li>";    
   }
   if($usertype=='student') {
       $displaymenu .= "
                   <li><a href='#'>Review/Download Materials</a></li>    
                   <li><a href='#'>Take Exam / Quiz</a></li>";    
   }
   $displaymenu .= "<li><a href='#'>Help, Info and Support</a></li>";
   ?>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
      <meta name="description" content="">
      <meta name="keywords" content="">
      <meta name="author" content="Team PELA">
      <link rel='shortcut icon' type='image/x-icon' href='../favicon.ico' />
      <title>CIA</title>
      
      <!--CSS------------------------------------------>
      <link href="build/css/metro.css" rel="stylesheet">
      <link href="build/css/metro-icons.css" rel="stylesheet">
      <link href="build/css/metro-responsive.css" rel="stylesheet">
      <link href="styles/index.css" rel="stylesheet">

      <!--JAVASCRIPTS------------------------------------------>
      <script src="build/js/jquery-1.12.3.js"></script>
      <script src="build/js/metro.js"></script>
      <style>
         html, body {
         height: 100%;
         }
         body {
         }
         .page-content {
         padding-top: 3.125rem;
         min-height: 100%;
         height: 100%;
         }
         .table .input-control.checkbox {
         line-height: 1;
         min-height: 0;
         height: auto;
         }
         @media screen and (max-width: 800px){
         #cell-sidebar {
         flex-basis: 52px;
         }
         #cell-content {
         flex-basis: calc(100% - 52px);
         }
         }
      </style>
   </head>
   <body class="bg-white">
      <div class="app-bar fixed-top darcula" data-role="appbar">
         <a class="app-bar-element branding">CIA</a>
         <span class="app-bar-divider"></span>
         <ul class="app-bar-menu">
            <li><a href="index.php">Home</a></li>
            <!-- start of dynamic menu -->
            <?PHP echo $displaymenu; ?>
            <!-- end of dynamic menu -->
         </ul>
         <div class="app-bar-element place-right">
            <span class="dropdown-toggle"><span class="mif-cog"></span> Hi, <?PHP echo $usertype . ' ' . $fname ?></span>
            <div class="app-bar-drop-container padding10 place-right no-margin-top block-shadow fg-dark" data-role="dropdown" data-no-close="true" style="width: 220px">
               <h2 class="text-light">Quick settings</h2>
               <ul class="unstyled-list fg-dark">
                  <li><a href="" class="fg-white1 fg-hover-yellow">Profile</a></li>
                  <li><a href="logout.php" class="fg-white3 fg-hover-yellow">Logout</a></li>
               </ul>
            </div>
         </div>
      </div>
      <div class="container-fluid">
      <div class="main-content clear-float">
          <div class="tile-area no-padding">
          <h1 class="welcome-to-title">Welcome to <b>CIA</b></h1>
            <div class="tile-group no-margin no-padding" style="width: 100%">
                 <div class="tile-large ol-transparent" data-role="tile">
                        <div class="tile-content">
                            <div class="carousel" data-role="carousel" data-height="100%" data-width="100%" data-controls="false">
                                <div class="slide">
                                    <img src="images/1.jpg" data-role="fitImage" data-format="fill">
                                </div>
                                <div class="slide">
                                    <img src="images/2.jpg"  data-role="fitImage" data-format="fill">
                                </div>
                                <div class="slide">
                                    <img src="images/3.jpg"  data-role="fitImage" data-format="fill">
                                </div>
                            </div>
                        </div>
                    </div>
                     <div class="tile-big tile-wide-y bg-white" data-role="tile">
                        <div class="tile-content">
                            <div class="panel" style="height: 100%">
                                <div class="heading bg-lightBlue fg-white"><span class="title text-light">news</span></div>
                                <div class="content fg-dark clear-float" style="height: 100%">
                                    <img src="images/4.jpg" class="place-left margin10" style="height: 130px">
                                    <h2 class="text-light">CIA - Internal Auditing Youth Summit</h2>
                                    <p style="padding:10px;">May is considered as the International Internal Audit Awareness Month. The Institute of Internal Auditors FEU Student Chapter and the National Federation of Junior Philippine Institute of Accountants - National Capital Region joins this celebration through the Internal Auditing Youth Summit!
                                    <br>
                                    <br>
                                    Happy International Internal Audit Awareness Month!!
                                    <br>
                                    ‪#‎IIAAwarenessMonth‬ 
                                    ‪#‎DiscoverInternalAuditing‬
                                    ‪#‎IAYS2016‬</p>
                                </div>
                            </div>
                        </div>
                    </div>
      </div>
            </div>

          </div>

      </div>
   </body>
</html>
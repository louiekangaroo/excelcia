<?PHP 
session_start();
include_once("./udf/udf.php");
if(strlen(trim($_SESSION['usertype']))<1 ){
    siteRedirectWithAlert("You Much Login first!","login.php");
}
$usertype = $_SESSION['usertype'];
$fname  = $_SESSION['fname'];
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

    <link href="build/css/metro.css" rel="stylesheet">
    <link href="build/css/metro-icons.css" rel="stylesheet">
    <link href="build/css/metro-responsive.css" rel="stylesheet">

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
            <li><a href="">Home</a></li>
            <li>
                <a href="" class="dropdown-toggle">Create a session</a>
                <ul class="d-menu" data-role="dropdown">
                    <li><a href="">Test Session</a></li>
                    <li class="divider"></li>
                    <li><a href="">Study Session</a></li>
                </ul>
            </li>
            <li><a href="">Performance</a></li>
            <li><a href="">Test Prep Tools</a></li>
            <li><a href="">Help, Info and Support</a></li>
        </ul>

        <div class="app-bar-element place-right">
            <span class="dropdown-toggle"><span class="mif-cog"></span> Hi, <?PHP echo $usertype . ' ' . $fname ?></span>
            <div class="app-bar-drop-container padding10 place-right no-margin-top block-shadow fg-dark" data-role="dropdown" data-no-close="true" style="width: 220px">
                <h2 class="text-light">Quick settings</h2>
                <ul class="unstyled-list fg-dark">
                    <li><a href="" class="fg-white1 fg-hover-yellow">Profile</a></li>
                    <li><a href="" class="fg-white3 fg-hover-yellow">Logout</a></li>
                </ul>
            </div>
        </div>
    </div>

</body>
</html>
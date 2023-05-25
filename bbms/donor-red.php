<?php
include('connection.php');
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Donor Registration</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?v=1">
    <style>
        #full{
            margin: 0;
            padding: 0;
            background:url("blood.jpg");
            -webkit-background-size:cover;
            background-size: cover;
            position:absolute;
        }
        *{
    padding: 0;
    margin: 0;
}

#header{
        border-radius:4px;
        margin:10px;
       }

       #footer{
        border-radius:10px;
     } 
    </style>
</head>
<body>
    <div id="full">
     <div id="inner_full">
        <div id="header"><h2><a href="admin-home.php" style="text-decoration:none;color:white;">Blood Donation Management System</a></h2></div>
        <div id="body">
            <br>
            <?php
             $un=$_SESSION['un'];
            if(!$un){
                header("Location:index.php");
            }
            ?>
            <h1>Donor Registration</h1>
            <center>
            <div id="form">
                <form action="" method="post">
            <table>
                 <tr>
                    <td width="200px" height="50px">Enter Name</td>
                    <td width="200px" height="50px"><input type="text" name="dname" placeholder="Enter Name"></td>
                    <td width="200px" height="50px">Enter Father's Name</td>
                    <td width="200px" height="50px"><input type="text" name="dfname" placeholder="Enter Father's Name"></td>
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter Address</td>
                    <td width="200px" height="50px"><textarea name="daddress"></textarea></td>
                    <td width="200px" height="50px">Enter City</td>
                    <td width="200px" height="50px"><input type="text" name="dcity" placeholder="Enter City"></td>
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter Age</td>
                    <td width="200px" height="50px"><input type="text" name="dage" placeholder="Enter Age"></textarea></td>
                    <td width="200px" height="50px">Select  Blood Group</td>
                    <td width="200px" height="50px">
                        <select name="dbgroup" >
                            <option >A+</option>
                            <option >A-</option>
                            <option >B+</option>
                            <option >B-</option>
                            <option >AB+</option>
                            <option >AB-</option>
                            <option >O+</option>
                            <option >O-</option>
                        </select>
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter E-mail</td>
                    <td width="200px" height="50px"><input type="text" name="demail" placeholder="Enter E-mail"></td>
                    <td width="200px" height="50px">Enter Mobile Number</td>
                    <td width="200px" height="50px"><input type="text" name="dmno" placeholder="Enter Mobile Number"></td>
                 </tr>
                 <tr>
                    <td><input type="submit" name="sub" value="Save"></td>
                 </tr>

            </table>
            </form>
            <?php
            if(isset($_POST['sub'])){

                $dname=$_POST['dname'];
                $dfname=$_POST['dfname'];
                $daddress=$_POST['daddress'];
                $dcity=$_POST['dcity'];
                $dage=$_POST['dage'];
                $dbgroup=$_POST['dbgroup'];
                $dmno=$_POST['dmno'];
                $demail=$_POST['demail'];

                $q=$db->prepare("INSERT INTO donor_registration(dname,dfname,daddress,dcity,dage,dbgroup,dmno,demail) VALUES(:dname,:dfname,:daddress,:dcity,:dage,:dbgroup,:dmno,:demail)");
                $q->bindValue('dname',$dname);
                $q->bindValue('dfname',$dfname);
                $q->bindValue('daddress',$daddress);
                $q->bindValue('dcity',$dcity);
                $q->bindValue('dage',$dage);
                $q->bindValue('dbgroup',$dbgroup);
                $q->bindValue('dmno',$dmno);
                $q->bindValue('demail',$demail);
                if($q->execute()){
                    echo "<script>alert('Donor Registration Successfull')</script>";
                }
                else{
                    echo "<script>alert('Donor Registration Failed')</script>";
                }
            }
            else{
                
            }
            
            ?>    


            </div></center>
            
            
        </div>
        <div id="footer"><h4 align="center">Copyright@DBMS</h4>
      <p align="center"><a href="logout.php"><font color="white">Logout</a>
      </p>
    </div>
    </div>
    </div>
</body>
</html>
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
    <title>Exchange Blood Registration</title>
    <link rel="stylesheet" type="text/css" href="css/style.css?v=1">
    <style>
        #form1{
            width:80%;
            height:320px;
            background-color:red;
            color:white;
            border-radius:10px;
        }
        #full{
            margin: 0;
            padding: 0;
            background:url("blood.jpg");
            position:absolute;
        }
    </style>
</head>
<body>
    <div id="full">
     <div id="inner_full">
        <div id="header"><h2><a href="admin-home.php" style="text-decoration:none;color:white;"> Blood Bank Management System</a></h2></div>
        <div id="body">
            <?php
             $un=$_SESSION['un'];
            if(!$un){
                header("Location:index.php");
            }
            ?>
            <h3>Exchange Blood Donor Registration</h3>
            <center>
            <div id="form1">
                <form action="" method="post">
            <table>
                 <tr>
                    <td width="200px" height="50px">Enter Name</td>
                    <td width="200px" height="50px"><input type="text" name="ename" placeholder="Enter Name"></td>
                    <td width="200px" height="50px">Enter Father's Name</td>
                    <td width="200px" height="50px"><input type="text" name="efname" placeholder="Enter Father's Name"></td>
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter Address</td>
                    <td width="200px" height="50px"><textarea name="eaddress"></textarea></td>
                    <td width="200px" height="50px">Enter City</td>
                    <td width="200px" height="50px"><input type="text" name="ecity" placeholder="Enter City"></td>
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter Age</td>
                    <td width="200px" height="50px"><input type="text" name="eage" placeholder="Enter Age"></textarea></td>
                    <td width="200px" height="50px">Enter E-Mail</td>
                    <td width="200px" height="50px"><input type="text" name="eemail" placeholder="Enter E-Mail">
                 </tr>
                 <tr>
                    <td width="200px" height="50px">Enter Mobile Number</td>
                    <td width="200px" height="50px"><input type="text" name="emno" placeholder="Enter Mobile Number"></td>
                 </tr>
                  <tr>
                    <td width="200px" height="50px">Select Blood Group</td>
                    <td width="200px" height="50px">
                          <select name="ebgroup" >
                        <option >A+</option>
                        <option >A-</option>
                        <option >B+</option>
                        <option >B-</option>
                        <option >AB+</option>
                        <option >AB-</option>
                        <option >O+</option>
                        <option >O-</option>
                    </select>
                  </td>
                  <td width="200px" height="50px">Exchange Blood Group</td>
                    <td width="200px" height="50px">
                        <select name="exbgroup" >
                        <option >A+</option>
                        <option >A-</option>
                        <option >B+</option>
                        <option >B-</option>
                        <option >AB+</option>
                        <option >AB-</option>
                        <option >O+</option>
                        <option >O-</option>
                    </select>
                  </td>
                </tr>
                <tr>
                    <td><input type="submit" name="sub" value="Save"></td>
                 </tr>

            </table>
            </form>
            <?php
            if(isset($_POST['sub'])){

                //front end data input 
                $ename=$_POST['ename'];
                $efname=$_POST['efname'];
                $eaddress=$_POST['eaddress'];
                $ecity=$_POST['ecity'];
                $eage=$_POST['eage'];
                $ebgroup=$_POST['ebgroup'];   
                $emno=$_POST['emno'];
                $eemail=$_POST['eemail'];
                $exbgroup=$_POST['exbgroup'];
                //front end data input end 

                //select and insert 
                $q="select * from donor_registration where dbgroup='$ebgroup'";
                $st=$db->query($q);
                $num_row=$st->fetch();
                $id=$num_row['did'];
                $name=$num_row['dname'];
                $b1=$num_row['dbgroup'];
                $mno=$num_row['dmno'];
                $q1="INSERT INTO out_stock_b (obname,oname,omno) values(?,?,?)";
                $st1=$db->prepare($q1);
                $st1->execute([$b1,$name,$mno]); 
                //select and insert end 

                //delete code
                $q2="delete from  donor_registration where did='$id' ";
                $st1=$db->prepare($q2);
                $st1->execute();
                //delete

                //exchange ingo insert
                $q=$db->prepare("INSERT INTO exchange_b(ename,efname,eaddress,ecity,eage,ebgroup,emno,eemail,exbgroup) VALUES(:ename,:efname,:eaddress,:ecity,:eage,:ebgroup,:emno,:eemail,:exbgroup)");
                $q->bindValue('ename',$ename);
                $q->bindValue('efname',$efname);
                $q->bindValue('eaddress',$eaddress);
                $q->bindValue('ecity',$ecity);
                $q->bindValue('eage',$eage);
                $q->bindValue('ebgroup',$ebgroup);
                $q->bindValue('emno',$emno);
                $q->bindValue('eemail',$eemail);
                $q->bindValue('exbgroup',$exbgroup);
                if($q->execute()){
                    echo "<script>alert('Donor Registration Successfull')</script>";
                }
                else{
                    echo "<script>alert('Donor Registration Failed')</script>";
                }
                //exchange info insert end 
            }
            ?>    
            </div></center>
            </div>
        <div id="footer"><h4 align="center">Copyright@DBMS</h4>
      <p align="center"><a href="logout.php"><font color="white">Logout</font></a>
      </p>
    </div>
    </div>
    </div>
</body>
</html>
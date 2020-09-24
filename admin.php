<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Intern Assignment - Home</title>
    <script src="https://kit.fontawesome.com/f6a963a990.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./style/style_home.css?v=<?php echo time(); ?>">
</head>
<body>
    <div class="header">
        <h4 class="title">INNOVATUS INTERNSHIP ASSIGNMENT  <p class="back-btn" onclick="location.href='./index.php';"><i class="fas fa-arrow-left" aria-hidden="true"></i>Back</p></h4>
    </div>
    <div class="container">
        <h1 class="title1">Users</h1>
        <table>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>eMail</th>
                <th>Phone</th>
                <th>DOB</th>
            </tr>
            <?php 
                include("./classes/DB.php");
                $users=DB::query("SELECT * FROM user ORDER BY id DESC");
                $c=1;
                foreach($users as $user){
                    echo "<tr>";
                    echo "<td>".$c."</td>";
                    echo "<td>".$user['name']."</td>";
                    echo "<td>".$user['email']."</td>";
                    echo "<td>".$user['phone']."</td>";
                    echo "<td>".$user['dob']."</td>";
                    echo "</tr>";
                    $c+=1;
                }
            ?>
        </table>
    </div>
</body>
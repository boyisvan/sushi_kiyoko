<?php

include('config.php');
$favicon = file_get_contents('../sushi/main/photos/logo.png');
$logo_light = file_get_contents('../sushi/main/photos/logo.png');
$logo_dark = file_get_contents('../sushi/main/photos/logo.png');
$menu_pdf = file_get_contents('../sushi/main/photos/menu.pdf');

$sql = "INSERT INTO website_config (title, favicon, logo_light, logo_dark, menu_pdf, iframe_link) 
        VALUES (?, ?, ?, ?, ?, ?)";

// Sử dụng prepared statements để bảo mật
$stmt = $conn->prepare($sql);
$title = "Kiyoko - The Best Sushi";
$iframe_link = "https://app.resmio.com/kiyoko-restaurant/widget?backgroundColor=%23ffffff&borderRadius=10&color=%23555555";
$stmt->bind_param('ssssss', $title, $favicon, $logo_light, $logo_dark, $menu_pdf, $iframe_link);

// Thực thi câu lệnh
$stmt->execute();
$stmt->close();

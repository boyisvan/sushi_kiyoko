CREATE TABLE restaurant_info (
    id INT AUTO_INCREMENT PRIMARY KEY,
    restaurant_name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    monday_thursday_hours VARCHAR(50) NOT NULL,
    friday_saturday_hours VARCHAR(50) NOT NULL,
    sunday_holiday_hours VARCHAR(50) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE website_config (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    favicon LONGBLOB NOT NULL, 
    logo_light LONGBLOB NOT NULL,
    logo_dark LONGBLOB NOT NULL, 
    menu_pdf LONGBLOB NOT NULL, 
    iframe_link TEXT NOT NULL, 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
INSERT INTO website_config (title, iframe_link)
VALUES (
    'Kiyoko - The Best Sushi',
    'https://app.resmio.com/kiyoko-restaurant/widget?backgroundColor=%23ffffff&borderRadius=10&color=%23555555&commentsDisabled=false&disableBranding=false&facebookLogin=true&fontSize=14px&height=460&id=kiyoko-restaurant&linkBackgroundColor=%2307a7c4&newsletterSignup=true&showLogo=false&style&width=330'
);

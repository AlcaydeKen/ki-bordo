# 🎹 Ki-Bordo - Keyboard Ordering System

Ki-Bordo is a full-stack web-based keyboard ordering system built with **PHP, MySQL, HTML, CSS, and JavaScript**. It allows users to browse keyboard products, add items to their cart, place orders, and manage their profile. It also includes an **admin panel** for managing products and monitoring customer orders.

## 🎯 Purpose

This project was developed as a keyboard ordering system to practice and demonstrate full-stack web development using PHP and MySQL. It showcases authentication, role-based access control, CRUD operations, cart functionality, and order management.

## 🧠 What I Learned
- How to implement user authentication and role-based access (admin vs user)  
- CRUD operations in PHP with MySQL  
- Integrating dynamic content using PHP and JavaScript  
- Structuring a full-stack web project for scalability  
- Managing database relationships for products, users, and orders  
- Using XAMPP for local development and database testing

## ✨ Features

### 👤 User Side
- 📝 User registration and login
- 🔍 Browse keyboard products by category
- 🔎 Search products
- 📄 View product details
- ➕ Add to cart
- 💳 Checkout system
- 📦 Order history tracking
- 👤 Profile management
- 🏠 Update address and account information

### 🛠️ Admin Side
- 🔐 Admin authentication
- 🖥️ Product management
- 📊 Order monitoring
- 🖼️ Manage uploaded product images

## 🛠️ Tech Stack

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Local Server:** XAMPP

## 📂 Project Structure

```bash
ki-bordo/
├── admin/               # Admin panel files
├── api/                 # API/backend-related scripts
├── components/          # Reusable PHP components
├── css/                 # Stylesheets
├── images/              # Static images
├── js/                  # JavaScript files
├── uploaded_img/        # Uploaded product images
├── about.php
├── cart.php
├── category.php
├── checkout.php
├── contact.php
├── home.php
├── kibordo_db.sql       # Database file
├── login.php
├── orders.php
├── profile.php
├── quick_view.php
├── register.php
├── search.php
├── update_address.php
├── update_profile.php
└── vercel.json
```

## 🚀 Installation Guide

### 1️⃣ Clone the repository
```bash
git clone https://github.com/AlcaydeKen/ki-bordo.git
cd ki-bordo
```

### 2️⃣ Move the project to your XAMPP htdocs folder

Example:
```bash
C:\xampp\htdocs\ki-bordo
```

### 3️⃣ Start Apache and MySQL

Open XAMPP Control Panel and start:
- Apache ⚡
- MySQL 🗄️

### 4️⃣ Import the database
- Open phpMyAdmin
- Create a new database
- Import the ```kibordo_db.sql``` file 📄

### 5️⃣ Configure the database connection

Open your database connection file and update the credentials if needed:
```bash
$host = "localhost";
$user = "root";
$password = "";
$dbname = "kibordo_db";
```

### 6️⃣ Run the project

Open your browser and go to:
```bash
http://localhost/ki-bordo/
```

## 🖥️ Screens / Main Pages
- home.php – 🏠 Homepage
- category.php – 📂 Product categories
- quick_view.php – 🔍 Product details
- cart.php – 🛒 Shopping cart
- checkout.php – 💳 Checkout page
- orders.php – 📦 User orders
- profile.php – 👤 User profile
- admin/ – 🛠️ Admin dashboard

## 🗄️ Database

The database file is included in the project:
```bash
kibordo_db.sql
```

Import this file into MySQL using phpMyAdmin before running the project.

## 🔮 Future Improvements
- 💳 Online payment integration
- 📊 Better admin analytics dashboard
- 📦 Product stock management
- ✅ Order status updates
- 📱 Responsive UI improvements
- 📧 Email notifications for orders
  

## 👨‍💻 Author

Ken Jared Alcayde

GitHub: [@AlcaydeKen](https://github.com/AlcaydeKen)


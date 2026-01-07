# 🛡️ MySekuriti

<div align="center">

**Advanced Website Security Protection System**

[![PHP](https://img.shields.io/badge/PHP-%3E%3D7.0-blue.svg)](https://www.php.net/)
[![MySQL](https://img.shields.io/badge/MySQL-%3E%3D5.6-orange.svg)](https://www.mysql.com/)
[![License](https://img.shields.io/badge/License-Proprietary-red.svg)]()
[![Status](https://img.shields.io/badge/Status-Active-success.svg)]()

*Protect your website from hackers, attacks, and threats with intelligent algorithms and real-time monitoring*

[Features](#-key-features) • [Installation](#-installation) • [Integration](#-quick-integration) • [Documentation](#-documentation) • [Support](#-support)

</div>

---

## 📖 Table of Contents

- [Overview](#-overview)
- [Key Features](#-key-features)
- [System Requirements](#-system-requirements)
- [Installation](#-installation)
- [Quick Integration](#-quick-integration)
- [Update Instructions](#-update-instructions)
- [Credits](#-sources-and-credits)

---

## 🌟 Overview

**MySekuriti** is a comprehensive website security solution designed to protect your web applications from various cyber threats. Using industrial-strength algorithms similar to those employed by major tech companies, it detects and prevents:

- 🔒 **SQL Injection (SQLi)** attacks
- 🛡️ **Cross-Site Scripting (XSS)** vulnerabilities
- 🎭 **Proxy/VPN/TOR** visitors
- 📧 **Spam bots** and malicious traffic
- 🤖 **Bad bots** and fake crawlers
- 🌍 **Geographic threats** and more

### Why Choose MySekuriti?

✅ **Intelligent Pattern Recognition** - Detects unknown and zero-day attacks  
✅ **Minimal Performance Impact** - Lightweight and optimized code  
✅ **Comprehensive Dashboard** - Monitor all threats in real-time  
✅ **Easy Integration** - Just 2 lines of code to protect your entire website  
✅ **Advanced Ban System** - Block by IP, country, ISP, browser, OS, and more  

---

## 🚀 Key Features

### 🔐 Core Protection Modules

| Feature | Description |
|---------|-------------|
| **SQLi Protection** | Advanced protection against SQL Injection and XSS vulnerabilities |
| **Proxy Protection** | Blocks VPN, Proxy, and TOR network visitors |
| **Spam Protection** | Prevents spam bots and malicious form submissions |
| **Input Sanitization** | Automatically sanitizes all incoming and outgoing data |
| **Bad Words Filtering** | Real-time filtering of profanity and inappropriate content |
| **DNSBL Integration** | Integration with leading spam databases for threat detection |

### 🤖 Bot & Crawler Management

- ✅ **Bad Bots Protection** - Blocks malicious bots and bandwidth-wasting crawlers
- ✅ **Fake Bots Detection** - Verifies search engine bots (Google, Bing, etc.)
- ✅ **Headers Check** - Analyzes visitor headers for suspicious patterns
- ✅ **Auto Ban** - Automatically blocks detected threats

### 📊 Monitoring & Analytics

- 📈 **Dashboard with Statistics** - Real-time security metrics
- 📝 **Threat Logs** - Comprehensive attack logs with zero duplicates
- 🗺️ **Detailed Reports** - Browser, OS, country, city, location mapping
- 👁️ **Live Traffic** - Real-time visitor monitoring
- 📉 **Visit Analytics** - Track and analyze user behavior
- 📧 **Email Notifications** - Instant alerts for detected threats

### 🛠️ Administrative Tools

- 🚫 **Advanced Ban System** - Block by:
  - IP addresses (single or ranges)
  - Countries
  - Operating systems
  - Browsers
  - ISPs (Internet Service Providers)
  - Referrers
- 🔍 **IP Lookup Tool** - Investigate and check IP blacklist status
- 📄 **.htaccess Editor** - Edit directly from admin panel
- ✅ **IP & File Whitelist** - Exclude trusted IPs and files
- 🔐 **Hash Generator** - Create secure password hashes
- ⚠️ **Error Monitoring** - Track all website errors
- 🔧 **PHP Config Checker** - Identify security vulnerabilities
- 💻 **System Information** - Detailed server statistics

### 💡 Additional Benefits

- ⚡ **Highly Optimized** - Minimal impact on page load speed
- 📱 **Fully Responsive** - Works on all devices and screen sizes
- 🎯 **Easy Setup** - Installation wizard guides you through setup
- 🔄 **Real-Time Scanning** - Monitors GET, POST, and all request types
- 🌐 **Multi-Language Support** - Ready for internationalization

---

## 💻 System Requirements

Before installing MySekuriti, ensure your server meets these requirements:

| Component | Minimum Version | Recommended |
|-----------|----------------|-------------|
| **PHP** | 7.0+ | 7.4+ or 8.0+ |
| **MySQL** | 5.6+ | 8.0+ |
| **Web Server** | Apache/Nginx | Apache with mod_rewrite |
| **Disk Space** | 10 MB | 50 MB |

### Required PHP Extensions
- MySQLi or PDO
- JSON
- cURL (for IP lookup features)
- Session support

---

## 📦 Installation

Follow these steps to install MySekuriti on your website:

### Step 1: Prepare Directory Structure

Create a subfolder named `security` in your website's root directory:

```
www/
├── public_html/
│   ├── security/          ← Create this folder
│   ├── index.php
│   └── ...
```

**Access Methods:**
- FTP Client (FileZilla, WinSCP)
- cPanel File Manager
- Direct server access

### Step 2: Upload Files

Upload all files from the `Source` folder to the newly created `security` directory.

### Step 3: Set Permissions

Set **CHMOD 777** permissions to:
- The `security` folder
- All subfolders
- All files within

> ⚠️ **Security Note**: After installation, you may reduce permissions to 755 for enhanced security.

### Step 4: Create Database

1. Log into your hosting control panel (cPanel/Plesk)
2. Navigate to MySQL Databases
3. Create a new database (e.g., `your_db_security`)
4. Create a database user with full privileges
5. Note down the database name, username, and password

### Step 5: Run Installation Wizard

1. Open your browser and navigate to:
   ```
   https://yourwebsite.com/security/
   ```

2. The Installation Wizard will launch automatically

3. Follow the on-screen instructions:
   - Enter database credentials
   - Configure admin account
   - Set security preferences

4. Complete the installation process

---

## 🔗 Quick Integration

After installation, integrate MySekuriti into your website with just **2 lines of code**:

### Integration Code

Add the following code to one of your main PHP files:

```php
<?php
include "security/config.php";
include "security/project-security.php";
?>
```

### Where to Place the Code

Choose **ONE** of these locations (preferably at the top of the file):

| File Type | Example | Purpose |
|-----------|---------|---------|
| **Main Index** | `index.php` | Entry point of your website |
| **Database Config** | `config.php` / `db.php` | Database connection file |
| **Core Include** | `functions.php` / `core.php` | File included on all pages |
| **Header File** | `header.php` | Template header file |

### Example Integration

```php
<?php
// Include MySekuriti - MUST BE AT THE TOP
include "security/config.php";
include "security/project-security.php";

// Your existing code below
require_once 'config/database.php';
// ... rest of your code
?>
```

> ✅ **That's it!** Your website is now protected by MySekuriti.

---

## 🔄 Update Instructions

### General Update Procedure

When updating MySekuriti to a newer version:

1. **Backup Your Data**
   - Export all `psec_*` database tables via phpMyAdmin
   - Download a copy of `config_settings.php`

2. **Replace Files**
   - Upload all new files from the updated package
   - **⚠️ KEEP** your existing `config_settings.php` file

3. **Run Database Updates** (if required - see version-specific instructions below)

4. **Clear Cache** (if applicable)

---

### Version-Specific Updates

#### 📌 Update to v4.8

Run these SQL queries in phpMyAdmin to support IPv6 addresses:

```sql
ALTER TABLE `psec_bans` 
CHANGE `ip` `ip` CHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `psec_bans-ranges` 
CHANGE `ip_range` `ip_range` CHAR(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `psec_ip-whitelist` 
CHANGE `ip` `ip` CHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `psec_live-traffic` 
CHANGE `ip` `ip` CHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `psec_logs` 
CHANGE `ip` `ip` CHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;

ALTER TABLE `psec_logins` 
CHANGE `ip` `ip` CHAR(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL;
```

#### 📌 Update to v5.0.6

**Important DNSBL Change:**

If you're using **SpamHaus DNSBLs** in the Spam Protection Module:

1. Navigate to **Settings → Spam Protection**
2. Replace SpamHaus DNSBL with an active alternative:
   - Recommended: `bl.spamcop.net`
   - Alternative: `dnsbl.sorbs.net`

> ℹ️ **Reason**: SpamHaus has modified their access policies.

---

### Troubleshooting Updates

If you encounter issues after updating:

1. **Option 1: Reinstall**
   - Delete `config.php` from the security folder
   - Visit `yourwebsite.com/security/install/`
   - Follow the installation wizard again

2. **Option 2: Restore Backup**
   - Import your backed-up database tables
   - Restore your previous `config_settings.php`
   - Contact support if issues persist

---

## 📚 Documentation

### Admin Panel Access

After installation, access your admin panel at:
```
https://yourwebsite.com/security/
```

Default login credentials are set during installation.

### Key Configuration Files

| File | Purpose |
|------|---------|
| `config.php` | Main configuration (auto-generated) |
| `config_settings.php` | Security settings and preferences |
| `core.php` | Core functionality |
| `project-security.php` | Main protection engine |

### Database Tables

All MySekuriti tables use the `psec_` prefix:

- `psec_bans` - Banned IP addresses
- `psec_bans-ranges` - Banned IP ranges
- `psec_bans-countries` - Banned countries
- `psec_bans-other` - Other ban types (OS, Browser, ISP, Referrer)
- `psec_logs` - Threat and attack logs
- `psec_live-traffic` - Real-time visitor data
- `psec_logins` - Admin login history
- `psec_ip-whitelist` - Whitelisted IP addresses
- `psec_file-whitelist` - Whitelisted files/paths
- `psec_bad-words` - Bad words dictionary
- And more...

---

## 🎨 Sources and Credits

This project uses the following open-source libraries and services:

### Frontend Libraries
- [Font Awesome Icons](https://fontawesome.com/) - Icon toolkit
- [Bootstrap Framework](https://getbootstrap.com/) - CSS framework
- [AdminLTE](https://github.com/almasaeed2010/AdminLTE) - Admin dashboard template
- [DataTables](https://datatables.net/) - Table plugin for jQuery
- [jQuery](https://jquery.com/) - JavaScript library
- [Select2](https://select2.github.io/) - Select box replacement
- [Chart.js](https://www.chartjs.org/) - JavaScript charting library
- [OpenLayers](https://github.com/openlayers/openlayers) - High-performance mapping library
- [Switchery](https://abpetkov.github.io/switchery/) - iOS 7 style switches
- [Popper.JS](https://popper.js.org/) - Tooltip & popover positioning
- [OverlayScrollbars](https://github.com/KingSora/OverlayScrollbars) - Custom scrollbars

### Design Resources
- [Flag Sprites](https://flag-sprites.com/) - Country flag icons

### API Services
- [ipapi.co](https://ipapi.co/) - IP geolocation API
- [IPHub](https://iphub.info/) - Proxy/VPN detection
- [proxycheck.io](https://proxycheck.io/) - Proxy detection service
- [IPHunter](https://iphunter.info/) - IP threat intelligence

---

## 📞 Support

For support, bug reports, or feature requests:

- 📧 Email: [jonathan.zefanya16@gmail.com](mailto:jonathan.zefanya16@gmail.com)
- 🌐 Website: [xead.my.id](https://xead.my.id)
- 💬 Community: [Discord](https://discord.gg/2MMdcFqU)

---

## 📄 License

This software is proprietary and protected by copyright law. Unauthorized copying, distribution, or modification is strictly prohibited.

---

## 🔐 Security Notice

While MySekuriti provides robust protection, no security solution is 100% foolproof. We recommend:

- Keeping your software up to date
- Using strong passwords
- Regular backups
- Monitoring security logs
- Following security best practices

---

<div align="center">

**Made with ❤️ for a safer web**

⭐ If you find this project useful, please consider giving it a star!

</div>

<%@ Page Language="C#" AutoEventWireup="true" Async="true" CodeBehind="Settings.aspx.cs" Inherits="Proiect_MTP.Settings" %>
<!DOCTYPE html>
<html>
<head>
    <title>Settings Page</title>
    <style>
        
        .section {
            margin-top: 20px;
        }
        label, select, button {
            display: block;
            margin-top: 10px;
        }
        button {
            margin-top: 20px;
            padding: 10px;
            font-size: 16px;
            color: black;
            background-color: #808080;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        body {
            background: url(Imagini/Fun1.jpg) no-repeat center center fixed;
            background-size: cover;
        }
        .logo {
            position: absolute;
            top: 10px;
            left: 15px; /* modifica pozitia logo-ului la stanga sus */
            width: 130px; /* ajusteaza dimensiunile logo-ului dupa nevoie */
            height: auto; /* asigura mentinerea proporțiilor */
        }
        .auto-style1 {
            border-radius: 8px;
            padding: 20px;
            margin: auto;
            width: 75%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            transition: background-color 0.3s; /* Smooth transition for theme change */
        }
    </style>
</head>
<body>
    <div class="auto-style1">
        <header>
            <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
        </header>
        <h1>Settings</h1>
        <div class="section">
            <h2>Notification Settings</h2>
            <label for="notifications">Enable Notifications:</label>
            <input type="checkbox" id="notifications" name="notifications">
        </div>
        <div class="section">
             <h2>Release Notifications</h2>
             <label for="newReleases">Notify me about new releases:</label>
             <input type="checkbox" id="newReleases" name="newReleases">
        </div>

        <div class="section">
            <h2>Video Quality Settings</h2>
            <label for="videoQuality">Default Video Quality:</label>
        <select id="videoQuality" name="videoQuality">
             <option value="low">Low (480p)</option>
             <option value="medium">Medium (720p)</option>
             <option value="high">High (1080p)</option>
             </select>
        </div>
        <div class="section">
            <h2>Account Management</h2>
            <button onclick="confirmClearHistory()">Clear History</button>  
            <button onclick="confirmDeleteAccount()">Delete Account</button>
        </div>
    </div>

    <script>
       
        function confirmDeleteAccount() {
            if (confirm('Are you sure you want to delete your account? This action cannot be undone.')) {
                alert('Account deleted successfully.');
            }
        }

        function confirmClearHistory() {
            if (confirm('Are you sure you want to clear your history? This will remove all your past reviews and searches.')) {
                alert('History cleared successfully.');
            }
        }
    </script>
</body>
</html>

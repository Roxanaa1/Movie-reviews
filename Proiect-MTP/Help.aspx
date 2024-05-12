<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Help Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        .container {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            margin: auto;
            width: 80%;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1, h2 {
            color: #333;
        }
        .section {
            margin-top: 20px;
        }
        .section h2 {
            color: #666;
        }
        .section p, .faq-item {
            color: #999;
            line-height: 1.6;
        }
        .faq-item strong {
            color: #333;
        }
        .contact-info {
            margin-top: 20px;
            font-size: 16px;
        }
        .contact-info div {
            margin-bottom: 10px;
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <header>
              <img src="Imagini/Logo1.jpg" alt="Logo" class="logo">
         </header>
        <div class="container">
            <h1>Help </h1>
            <div class="section">
                <h2>FAQs</h2>
                <div class="faq-item">
                    <strong>How can I create a new account?</strong>
                    <p>You can create a new account by accessing the 'Login/Sign Up' section from the main menu.</p>
                </div>
                <div class="faq-item">
                    <strong>How can I add a review?</strong>
                    <p>After watching a movie or series, go to its page and use the 'Add Review' button to share your thoughts.</p>
                </div>
                <div class="faq-item">
                    <strong>How can I search for specific movies or series?</strong>
                    <p>Acces the 'Search' section from the main menu to find movies or series by title, genre, actors, or directors.</p>
                </div>
                <div class="faq-item">
                    <strong>How can I change my account settings?</strong>
                    <p>Access the 'EditAccount' section from 'MyProfile' to modify information such as your email address or password.</p>
                </div>
            </div>
            <div class="section">
                <h2>Contact Information</h2>
                <div class="contact-info">
                    <div>📞 +40 237 780 400</div>
                    <div>📧 office@reelRecenzii.ro</div>
                    <div>📍 Ioan Slavici, Nr. 41, Timișoara</div>
                    <div>⏰ Monday - Friday, from 10:00 AM to 14:00 PM</div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demo Project</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            text-align: center;
        }
        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        h1 {
            color: #333333;
            animation: fadeInDown 1s ease-in-out;
        }
        p {
            color: #666666;
            margin-bottom: 20px;
            animation: fadeInUp 1s ease-in-out;
        }
        @keyframes fadeInDown {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .highlight {
            color: #0056b3;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to the Demo Project</h1>
        <p>This is a demo project to run a <span class="highlight">Maven web application</span> pipeline in Jenkins.</p>
        <p>In this setup:</p>
        <ul>
            <li>Tomcat is running on port <span class="highlight">8080</span>.</li>
            <li>Jenkins is running on port <span class="highlight">8081</span>.</li>
            <li>Both are hosted on the same VM (server).</li>
        </ul>
        <p>Enjoy the smooth animations and enhanced visual appearance!</p>
    </div>
</body>
</html>

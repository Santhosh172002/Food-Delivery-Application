<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
    	*{
    		padding:0;
    		margin:0;
    		box-sizing: border-box;
    	}
        /* Style for the video background */
        .video-background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100vh;
            object-fit: cover;
            z-index: -1;
        }
        body 
        {
        	width : 100%;
        	height : 100vh;
        	overflow : hidden;
        	
        }

        /* Centered content container */
        .content {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            color: #ffffff;
            text-align: center;
            background: rgba(0, 0, 0, 0.5); /* Dark overlay for better text visibility */
            padding: 0px;
            width:100%;
        }

        /* Button styling */
        .button {
            background-color: #ff523b;
            color: #ffffff;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            font-size: 1em;
            cursor: pointer;
            margin: 10px;
            transition: background-color 0.3s ease;
            text-decoration: none; /* Remove underline */
        }

        /* Hover effect for buttons */
        .button:hover {
            background-color: #e04b33;
        }
    </style>
</head>
<body>

    <!-- Video background -->
    <video autoplay loop muted playsinline class="video-background">
        <source src="https://media.istockphoto.com/id/509175877/video/chinese-food-video-montage.mp4?s=mp4-640x640-is&k=20&c=n25a-4YQLaeSiBeG6Gs_-xwd4U_NfhP44XdJ5Dw5AVk=">
        Your browser does not support the video tag.
    </video>

    <!-- Main content with login and signup buttons -->
    <div class="content">
        <h1 style="font-size: 50px;" >Lets Make Your Dining Experience Unforgettable!</h1>
        <h2>Where Every Bite Tells a Delicious Story!</h2>
        <a href="login.html" class="button">Register for Delicious</a>
        
    </div>
  </body>
  </html>

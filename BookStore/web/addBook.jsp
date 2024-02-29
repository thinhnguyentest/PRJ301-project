<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add book</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f4;
                margin: 0;
                padding: 20px;
            }

            form {
                max-width: 600px;
                margin: 0 auto;
                background-color: #fff;
                padding: 20px;
                border-radius: 8px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            fieldset {
                margin-bottom: 20px;
                border: 1px solid #ddd;
                padding: 10px;
                border-radius: 5px;
            }

            legend {
                font-weight: bold;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input,
            textarea {
                width: 100%;
                padding: 8px;
                margin-bottom: 10px;
                box-sizing: border-box;
                border: 1px solid #ccc;
                border-radius: 4px;
            }

            button {
                background-color: #4caf50;
                color: #fff;
                padding: 10px 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }

            button:hover {
                background-color: #45a049;
            }

            /* Additional Styles for Image Form */
            div.align-center {
                text-align: center;
            }

            div.align-center form {
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <form action="/addbook" method="post" enctype="multipart/form-data">
            <!-- Author Information -->
            <fieldset>
                <legend>Author Information</legend>
                <label for="authorName">Name:</label>
                <input type="text" id="authorName" name="authorName" required><br>

                <label for="birthday">Birth Date:</label>
                <input type="date" id="birthDate" name="birthDate" required><br>

                <label for="bio">Bio:</label>
                <textarea id="bio" name="bio" rows="4" cols="50" required></textarea><br>
            </fieldset>

            <!-- Publisher Information -->
            <fieldset>
                <legend>Publisher Information</legend>
                <label for="publisherName">Name:</label>
                <input type="text" id="publisherName" name="publisherName" required><br>

                <label for="establishedDate">Date Established:</label>
                <input type="date" id="establishedDate" name="establishedDate" required><br>
            </fieldset>

            <!-- Book Information -->
            <fieldset>
                <legend>Book Information</legend>
                <label for="bookTitle">Title:</label>
                <input type="text" id="bookTitle" name="bookTitle" required><br>

                <label for="genre">Genre:</label>
                <input type="text" id="genre" name="genre" required><br>

                <label for="description">Description:</label>
                <textarea id="description" name="description" rows="4" cols="50" required></textarea><br>

                <label for="quantity">Quantity:</label>
                <input type="number" id="quantity" name="quantity" required><br>

                <label for="price">Price:</label>
                <input type="number" id="price" name="price" step="0.01" required><br>
                
                <label for="image">Select Image :</label>
                <input type="file" name="image" id="image" required>
            </fieldset>
            <button type="submit">Submit</button>
        </form>
    </body>
</html>
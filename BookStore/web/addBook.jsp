<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add book</title>
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
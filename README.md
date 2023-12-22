# ToDoAppFlask

This a simple Flask app that takes input and prints on the screen. 
To fire this app up. Run the following commands in the terminal

python app.py

Points to note in Dockerfile
Explanation:

The COPY templates /app/templates instruction copies the templates directory from your local project directory into the /app/templates directory within the container.
This ensures that the Flask application can access and render the templates as expected.


Key points:

Order of COPY instructions: The order of COPY instructions matters. Place the specific COPY templates instruction before the general COPY . . to avoid overwriting templates if there are files with the same name in other directories.
Working directory: Ensure the templates directory is located within your project directory for the copy to work correctly.
Template path: If you've configured a different template path in your Flask app, adjust the COPY destination accordingly.
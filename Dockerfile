#Using the Base image
FROM python:3.9.18-slim-bullseye

#defining the working directory
WORKDIR /app

#copying requriements.txt
COPY requirements.txt .

#Installing the app dependencies
RUN pip install --upgrade Werkzeug==2.2.2
RUN pip install -r requirements.txt


# Copy templates directory
COPY templates /app/templates

# Copy remaining files and directories
COPY . .  


EXPOSE 5000

CMD [ "python", "app.py" ]

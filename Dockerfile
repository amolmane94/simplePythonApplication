#base image
FROM python:3.8

#select the working Directory inside the container
WORKDIR /app

#Copy the requirement file
COPY requirement.txt .

#install the project dependencies
RUN pip install -r requirement.txt

#Copy the application code into the container
COPY . .

#Expose the port the flask application will listening on
EXPOSE 5000

#Set Env variables, if necessary
#ENV my_ENV_var=value

#Run the flask application
CMD ["python","app.py"]

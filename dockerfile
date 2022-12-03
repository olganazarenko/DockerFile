#building an image starts with the Python 3.10
FROM python:3.10

#the directory within the package to the bot itself
WORKDIR /app/amigos_project


#copies files from a local source location to a destination in the Docker container created by "app"
COPY . /app

#copy requirements.txt and install the Python dependencies as well as upgrades pip
RUN pip install --upgrade pip
RUN pip install -r requirements.txt


#CMD instruction should be used to run the software contained by your image, along with any arguments.
CMD ["python", "main.py"]

# ENTRYPOINT ["python ./amigos_project/main.py"]
# ENTRYPOINT [ "python", "main.py" ]

# BookStore App *
 
##  Automate Project Build Every amount of Time
If you want to automate the continuous build for a Dockerized app in a local environment, you can use a tool like Docker Compose to define and run your development environment.

Here's a general overview of the steps involved in automating the continuous build for a Dockerized app using Docker Compose:

1. Define your Docker Compose file: Define the services you need for your application, such as your web server, database, and any other services you need to run your application.

2. Define your build configuration: Define the build configuration for each service that needs to be built, including the Dockerfile location and any build arguments you need to pass.

3. Run your Docker Compose build: Use the docker-compose build command to build your Docker images.

4. Run your Docker Compose up: Use the docker-compose up command to start your containers.

5. Monitor your containers: Monitor your containers to ensure that they are running correctly and fix any errors that arise.

To automate the continuous build process using Docker Compose, you can create a script that performs the above steps automatically. You can then run the script manually or set up a cron job to run the script at regular intervals.

In addition, you can also set up a continuous integration tool like Jenkins or GitLab CI/CD in your local environment to automate the build process. This would involve defining a pipeline that includes the above steps, triggering the pipeline automatically when changes are made to your source code, and monitoring the pipeline to ensure that it is running correctly.

Here's an example of a shell script that automates the continuous build process using Docker Compose:

<code>
#!/bin/bash
</code>

### Navigate to the directory where your Docker Compose file is located
<code>
cd /path/to/your/docker/compose/file
</code>

### Build your Docker images

<code>
docker-compose build
</code>


### Start your containers
```docker-compose up -d```

### Monitor your containers
```docker-compose ps```



You can save this script as a file with a .sh extension (e.g., build.sh) and make it executable using the following command:
<code> 

chmod +x build.sh
</code>

You can then run the script manually by executing the following command:

<code > ./build.sh </code>

To run the script at regular intervals, you can set up a cron job. To do this, you can use the following command:

<code> crontab -e </code>

This will open the cron file for editing. You can then add a new line to the file with the following syntax:

<code>* * * * * /path/to/your/script.sh</code>

This line will run your script every minute. You can adjust the timing as needed using the syntax described in the cron documentation. Once you've added the line, save the file and exit the editor.

* Additional gig 

    To verify that the script is running after every 3 minutes, you can check the log file generated by the script or check the system logs.


    Assuming that the script is running successfully and generating some output, you can redirect the output of the script to a log file by modifying the cron job line to include the following:

    <code> */3 * * * * /path/to/your/script.sh >> /path/to/log/file.log 2>&1  </code>

## Running Tests
To run test in te container  make sure you have the latest build and runt the command:
* <code> docker-compose exec web python manage.py test </code>

# TODO: TestStep3Task1 - Specify the base image for our Java application using the slim JDK version of OpenJDK 17. Then, set the working directory to /app.


# TODO: TestStep3Task2 - Copy the project source code into the working directory. Then, add a command to compile the Java source file located at src/main/java/com/example/SimpleWebServer.java.


# TODO: TestStep3Task3 - Expose port 8080 to allow traffic to the web server. Then, specify the default command to run the application when the container starts. The main class is com.example.SimpleWebServer and the classpath is src/main/java.

# TODO: TestStep5Task1 - Update the existing FROM instruction to name this stage 'build' using the AS keyword.

# TODO: TestStep5Task2 - Start a new build stage using the runtime image 'eclipse-temurin:21-jre-noble'. Then, set the working directory to /app.

# TODO: TestStep5Task3 - Copy the compiled classes from the 'build' stage directory '/app/classes' to the current directory. Then, set the final CMD to run the application.

# Guided: Task Manager Application in JavaScript and TypeScript
Here you'll find the checks for the objectives you find in the lab instructions. Wait until the lab instructions tell you to run the check before proceeding.
{% steps %}
## Objective Checks
{% step title="TestStep3Task1" %}
{% task %}

{% check type="command" query="bash runTest.sh TestStep3Task1" %}

{% feedback pattern=".*" type="success" %}
Excellent! The foundation of the Dockerfile is now set.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Not quite. Make sure your Dockerfile includes both a `FROM` instruction for `eclipse-temurin:21-jdk-noble` and a `WORKDIR` instruction set to `/app`.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}

{% step title="TestStep3Task2" %}
{% task %}
{% check type="command" query="bash runTest.sh TestStep3Task2" %}

{% feedback pattern=".*" type="success" %}
Great job! The application code is now copied and compiled within the image.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Almost there. Ensure you have a `COPY . .` instruction to copy the files and a `RUN` instruction that correctly compiles the `SimpleWebServer.java` file.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}

{% step title="TestStep3Task3" %}
{% task %}

{% check type="command" query="bash runTest.sh TestStep3Task3" %}

{% feedback pattern=".*" type="success" %}
Perfect! Your first Dockerfile is complete and ready to be built.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Check your instructions carefully. You need to `EXPOSE` port 8080 and provide the correct `CMD` to execute the compiled Java class.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}
{% step title="Task 5.1: Name the Build Stage" %}
{% task %}

{% check type="command" query="bash runTest.sh TestStep5Task1" %}

{% feedback pattern=".*" type="success" %}
Excellent! You've officially created the 'build' stage.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Not quite. You just need to modify the first `FROM` line by adding `AS build` at the end.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}

{% step title="Task 5.2: Define the Final Runtime Stage" %}
{% task %}

{% check type="command" query="bash runTest.sh TestStep5Task2" %}

{% feedback pattern=".*" type="success" %}
Perfect! The lightweight final stage is now defined.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Almost. Make sure you add a new `FROM eclipse-temurin:21-jre-noble` instruction and also set the `WORKDIR` for this new stage.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}

{% step title="Task 5.3: Copy Artifact and Set Final Command" %}
{% task %}

{% check type="command" query="bash runTest.sh TestStep5Task3" %}

{% feedback pattern=".*" type="success" %}
Perfect! Your first Dockerfile is complete and ready to be built.
{% /feedback %}

{% feedback pattern="AssertionFailedError:" type="error" %}
Congratulations! You have successfully created an optimized, multi-stage Dockerfile for a Java application.
{% /feedback %}
{% /check %}
{% /task %}
{% /step %}
{% /steps %}
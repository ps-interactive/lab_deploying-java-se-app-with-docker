
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
Now we'll begin refactoring our `Dockerfile` to use a multi-stage build. The first step is to officially name our existing set of instructions as the 'build' stage.

By adding `AS build` to the first `FROM` instruction, you create a named stage. This allows later stages to refer back to this stage and copy artifacts from it. This is the foundation of a multi-stage build, clearly separating the environment used for compiling from the one used for running.
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
The goal of a multi-stage build is to have a small final image. To achieve this, we'll create a new, second stage that is based on a much smaller image. Instead of the full JDK, we only need the Java Runtime Environment (JRE) to run our compiled code.\n\nYour task is to define this new final stage.
*   Add a new `FROM` instruction using the `eclipse-temurin:21-jre-noble` image. This image is significantly smaller because it doesn't include the compiler and other development tools.
*   Set the `WORKDIR` for this new stage to `/app`.
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
The new stage is empty. We need to copy the compiled application from the `build` stage into our new, final stage. We also need to tell this stage how to run the application.
*   **`COPY --from`**: Use a special version of the `COPY` instruction to copy files *from another stage*. You need to copy the compiled `SimpleWebServer.class` file from the `build` stage into the current stage.
*   **Final `CMD`**: Redefine the `CMD` for this final stage. The command is similar to before, but the classpath might be different depending on where you copy the class file.

Complete the `Dockerfile` by adding these final instructions.
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
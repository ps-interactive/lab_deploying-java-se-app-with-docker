
# Guided: Task Manager Application in JavaScript and TypeScript
Here you'll find the checks for the objectives you find in the lab instructions. Wait until the lab instructions tell you to run the check before proceeding.
{% steps %}
## Objective 3 Checks
{% step title="Task 3.1: Define Base Image and Working Directory" %}
{% task %}
The first step in creating a Docker image is defining its foundation. In the `Dockerfile`, you need to specify a base image and set up the container's filesystem.

*   **Base Image (`FROM`):** Every `Dockerfile` must start with a `FROM` instruction. This specifies the parent image from which you are building. For a Java application, a base image containing a Java Development Kit (JDK) is required for compilation. We'll use `openjdk:17-jdk-slim`, which is a good starting point.
*   **Working Directory (`WORKDIR`):** The `WORKDIR` instruction sets the working directory for any subsequent `RUN`, `CMD`, `ENTRYPOINT`, `COPY`, and `ADD` instructions. This helps keep your `Dockerfile` clean and organized.

Your task is to add these two instructions to the `Dockerfile`.
{% task type="command" query="sudo bash /home/ubuntu/Desktop/workspace/runTest.sh /home/ubuntu/Desktop/workspace/tests/TestStep3Task1.sh" %}

{% feedback pattern=".*" type="success" %}
✅ Excellent! The foundation of the Dockerfile is now set.
{% /feedback %}

{% feedback pattern="error|Error|ERROR" type="error" %}
❌ Not quite. Make sure your Dockerfile includes both a `FROM` instruction for `openjdk:17-jdk-slim` and a `WORKDIR` instruction set to `/app`.
{% /feedback %}
{% /task %}
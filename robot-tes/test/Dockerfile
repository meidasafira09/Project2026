FROM selenium/standalone-chrome:latest

USER root

RUN apt-get update && apt-get install -y python3-pip
RUN pip3 install robotframework robotframework-seleniumlibrary

WORKDIR /app
COPY . .

CMD ["sh", "-c", "rm -rf result_report/* && robot --outputdir result_report ."]
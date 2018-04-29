FROM maven
EXPOSE 8080
RUN mvn --version
RUN mkdir ~/workdir
RUN git clone https://github.com/sree196/Test-app-.git
RUN mv Test-app- /opt
WORKDIR /opt/Test-app-/gannettApp
RUN pwd
RUN ls
RUN mvn install
RUN echo "java -jar target/gannettApp-1.0-SNAPSHOT.jar" > /opt/hello
RUN chmod +x /opt/hello

FROM maven
WORKDIR /opt
RUN git clone https://github.com/generalpurposecomputer/PretendYoureXyzzy.git
WORKDIR PretendYoureXyzzy
RUN cp build.properties.example build.properties
COPY ./pyx.sqlite ./pyx.sqlite
RUN mvn clean package war:exploded
EXPOSE 8080
CMD mvn jetty:run

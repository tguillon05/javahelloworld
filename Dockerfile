FROM java:8

WORKDIR /home/root/javahelloworld/src

COPY src /home/root/javahelloworld/src

RUN javac HelloWorld.java

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]

RUN mkdir bin && javac -d bin HelloWorld.java

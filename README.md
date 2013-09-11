# Apache Sling BrowserMap Demo #

This project provides a demo bundle that shows how to build multichannel mobile-optimised websites using Apache Sling.

### Setup ###

* Clone Apache Sling

        git clone https://github.com/apache/sling.git

* Switch to the `trunk` branch

        cd sling/
        git checkout trunk

* Build Sling

        mvn clean package -DskipTests

* Launch Sling

        cd launchpad/builder/target/
        java -jar org.apache.sling.launchpad-7-SNAPSHOT-standalone.jar

* Clone this project and install the bundle in your running Sling instance

        git clone https://github.com/savs/multichannel-demo.git
        cd multichannel-demo/
        mvn -PautoInstallBundle clean install

* Go to http://localhost:8080/content/multichannel/index.html with various devices

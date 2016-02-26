FROM tomee:8-jre-1.7.3-jaxrs

RUN rm -rf /usr/local/tomee/webapps/ROOT /usr/local/tomee/webapps/docs /usr/local/tomee/webapps/host-manager /usr/local/tomee/webapps/manager

COPY kagura.war /usr/local/tomee/webapps/kagura.war
COPY reports /reports

RUN wget http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.36.tar.gz && \
tar -zxvf mysql-connector-java-5.1.36.tar.gz && \
mv mysql-connector-java-5.1.36/mysql-connector-java-5.1.36-bin.jar /usr/local/tomee/lib/mysql-connector-java-5.1.36-bin.jar && \
rm mysql-connector-java-5.1.36.tar.gz

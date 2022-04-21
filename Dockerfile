From fraunhoferiosb/frost-server-http:develop-2.0-2.0.0-SNAPSHOT

COPY data ${CATALINA_HOME}/webapps/FROST-Server/WEB-INF/data

ENV plugins_modelLoader_enable=true
ENV plugins_modelLoader_modelPath=webapps/FROST-Server/WEB-INF/data/model
ENV plugins_modelLoader_modelFiles=Datastream.json,SoilBody.json,SoilHorizon.json,SoilLayer.json,SoilPlot.json,SoilProfile.json,SoilSite.json
ENV plugins_modelLoader_liquibasePath=../data/liquibase
ENV plugins_modelLoader_liquibaseFiles=tablesSoilThings.xml

USER tomcat


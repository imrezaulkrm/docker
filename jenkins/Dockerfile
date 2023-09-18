# Use an official Jenkins LTS (Long Term Support) base image
FROM jenkins/jenkins:lts

# Skip the initial Jenkins setup wizard by disabling the setup wizard's security
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Install Jenkins plugins using the Plugin Installation Manager Tool (PIM)
#RUN workflow-aggregator:2.6 \
 #   git:4.6.0 \
   

# Expose Jenkins on port 9090 instead of the default 8080
EXPOSE 9090
EXPOSE 50000

# Specify a volume for Jenkins data to persist configuration and job data
VOLUME /var/jenkins_home

# Start Jenkins
CMD ["java", "-jar", "/usr/share/jenkins/jenkins.war", "--httpPort=9090"]


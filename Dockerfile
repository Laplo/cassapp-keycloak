FROM jboss/keycloak:latest

COPY docker-entrypoint.sh /opt/jboss/tools

ENTRYPOINT [ "/opt/jboss/tools/docker-entrypoint.sh" ]
CMD ["-b", "-Dkeycloak.profile.feature.upload_scripts=enabled", "0.0.0.0"]


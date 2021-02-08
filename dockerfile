FROM docker:stable
COPY docker_run.sh /docker_run.sh
RUN chmod +x /docker_run.sh
ENTRYPOINT ["/docker_run.sh"]

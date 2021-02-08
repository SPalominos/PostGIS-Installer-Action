FROM docker:stable
COPY run_docker.sh /run_docker.sh
RUN chmod +x /run_docker.sh
ENTRYPOINT ["/run_docker.sh"]

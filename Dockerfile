FROM rocker/rstudio:latest

EXPOSE 8787
WORKDIR /home/rstudio

ENV USER=rstudio
ENV PASSWORD=rstudio

# Copy the entrypoint script into the container
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Ensure the script is executable
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

CMD ["/init"]
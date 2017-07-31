
FROM orax/alpine-armhf:latest

# Set environment variables.
ENV \
  TERM=xterm-color

# Install packages.
RUN \
  apk --update add bash coreutils curl figlet nano tar wget && \
  rm -rf /var/cache/apk/*

# Set the default command.
CMD ["/bin/bash"]

# Set environment variables.
ENV \
  TERM=xterm-color

# Install packages.
RUN \
  apk --update add nodejs && \
  rm -rf /var/cache/apk/*

# Install node packages.
RUN npm install -g redis-commander
RUN echo '{}' > /root/.redis-commander

# Define the entrypoint script.
ENTRYPOINT ["redis-commander"]

# Expose ports.
EXPOSE 8081

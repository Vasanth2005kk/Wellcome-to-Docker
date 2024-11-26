# Use the latest Alpine Linux image
FROM alpine:latest

# Install bash since Alpine doesn't include it by default
RUN apk add --no-cache bash

# Copy your script into the container
COPY script.sh /script.sh

# Ensure the script has execution permissions
RUN chmod +x /script.sh

# Set the default command to execute the script
CMD ["/script.sh"]

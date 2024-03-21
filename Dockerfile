# Use an official AFLplusplus base image
FROM aflplusplus/aflplusplus:latest

# Set the working directory
WORKDIR /afl

# Copy the entrypoint script into the container
COPY entrypoint.sh /afl/entrypoint.sh

# Make the script executable
RUN chmod +x /afl/entrypoint.sh

# Set the entrypoint for the container
ENTRYPOINT ["/afl/entrypoint.sh"]

# Define a volume for the binary path
VOLUME /github/workspace
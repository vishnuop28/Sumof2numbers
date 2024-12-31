FROM ubuntu:latest

# Install build-essential package for compiling C code
RUN apt-get update && apt-get install -y build-essential

# Copy the C source code to the container
COPY sum.c .

# Compile the C code
RUN gcc sum.c -o sum

# Expose port (optional, if your program uses a specific port)
# EXPOSE 8080 

# Run the compiled executable
CMD ["./sum"]

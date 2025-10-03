# Start from a trusted Red Hat Universal Base Image
FROM registry.access.redhat.com/ubi9/ubi:latest

# Install the clamav package which includes the 'freshclam' tool
RUN dnf install -y clamav && dnf clean all

# Standard practice for security
USER 1001

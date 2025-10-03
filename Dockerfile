# Start from the standard trusted Red Hat Universal Base Image
FROM registry.access.redhat.com/ubi9/ubi:latest

# First, enable the EPEL repository.
# Then, install the clamav package which includes the 'freshclam' tool.
RUN dnf install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm && \
    dnf install -y clamav && \
    dnf clean all

# Standard practice for security
USER 1001

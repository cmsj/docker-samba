FROM jammy

# Install Samba
RUN apt-get update ; apt-get install -y samba samba-vfs-modules

# Make a place for share volume mounts to live
RUN mkdir -p /opt/samba/

# Make the config directory a volume
VOLUME ["/etc/samba"]

# Make the persistent data directory a volume
VOLUME ["/var/lib/samba"]


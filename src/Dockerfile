FROM ubuntu:devel
MAINTAINER Chris Jones <cmsj@tenshu.net>

# Install Samba
RUN apt-get update && apt-get install -y samba samba-vfs-modules smbclient tini ; apt-get clean

# Make a place for share volume mounts to live
RUN mkdir -p /opt/samba/

# Copy init script
COPY samba.sh /usr/local/bin/
COPY samba.service /

EXPOSE 137/udp 138/udp 139 445

HEALTHCHECK --interval=60s --timeout=15s \
    CMD /usr/bin/smbclient -L \\localhost -U % -m SMB3

# Make the config and data directories volumes
VOLUME ["/etc/samba", "/var/lib/samba", "/etc/avahi/services/"]

ENTRYPOINT ["/usr/bin/tini", "--", "/usr/local/bin/samba.sh"]


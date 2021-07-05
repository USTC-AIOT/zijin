bash <(curl -Ss https://my-netdata.io/kickstart.sh) --disable-telemetry



# Memory de-duplication instructions

# You have kernel memory de-duper (called Kernel Same-page Merging,
# or KSM) available, but it is not currently enabled.

# To enable it run:

    echo 1 >/sys/kernel/mm/ksm/run
    echo 1000 >/sys/kernel/mm/ksm/sleep_millisecs

# If you enable it, you will save 40-60% of netdata memory.

# To stop netdata run:

  systemctl stop netdata

# To start netdata run:

  systemctl start netdata

# Uninstall script copied to: /usr/libexec/netdata/netdata-uninstaller.sh

sudo netdata-claim.sh -token=f7AFdDrK21cTobYcI4xkqGSAdVunP94CeSs-nNVAc1_0IufDbGX7ZIG0bmXPorlZ75d4KyT5b-zVIJK1On3aCEHhRA67JKWPNnxWtBVT_io8W3fMh8kNFfReHk1QORjB1yrQlKs -rooms=442e3dac-b2e2-43b4-a83b-149e324a55a2,364199f5-70fe-412d-ae54-c893516bf65e -url=https://app.netdata.cloud






# [Install Netdata on offline systems | Learn Netdata](https://learn.netdata.cloud/docs/agent/packaging/installer/methods/offline)
cd /tmp

curl -s https://my-netdata.io/kickstart-static64.sh > kickstart-static64.sh

# Netdata static64 tarball
curl -s https://api.github.com/repos/netdata/netdata/releases/latest | grep "browser_download_url.*gz.run" | cut -d '"' -f 4 | wget -qi -

# Netdata checksums
curl -s https://api.github.com/repos/netdata/netdata/releases/latest | grep "browser_download_url.*txt" | cut -d '"' -f 4 | wget -qi -
tracker_list=$(curl -Ns https://ngosang.github.io/trackerslist/trackers_all_http.txt | awk '$0' | tr '\n\n' ',')
aria2c --enable-rpc=true \
       --daemon=true \
       --allow-overwrite=true \
       --auto-file-renaming=true \
       --bt-enable-lpd=true \
       --enable-dht=true \
       --enable-peer-exchange=true \
       --disable-ipv6=true \
       --bt-detach-seed-only=true \
       --bt-remove-unselected-file=true \
       --bt-tracker="[$tracker_list]" \
       --check-certificate=false \
       --check-integrity=true \
       --continue=true \
       --content-disposition-default-utf8=true \
       --disk-cache=64M \
       --follow-torrent=mem \
       --force-save=true \
       --http-accept-gzip=true \
       --max-connection-per-server=8 \
       --max-concurrent-downloads=5 \
       --max-file-not-found=0 \
       --max-tries=20 \
       --split=8 \
       --min-split-size=20M \
       --optimize-concurrent-downloads=true \
       --peer-id-prefix=-qB4390- \
       --reuse-uri=true \
       --peer-agent=qBittorrent/4.3.9 \
       --quiet=true \
       --rpc-max-request-size=1024M \
       --seed-ratio=0 \
       --summary-interval=0 \
       --bt-max-peers=100 \
       --bt-request-peer-speed-limit=5M \
       --user-agent=Wget/1.12

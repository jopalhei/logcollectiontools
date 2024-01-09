python3 /var/lib/waagent/WALinuxAgent-2.9.1.1/bin/WALinuxAgent-2.9.1.1-py3.8.egg --collect-logs -full
cd /usr/local/bin
curl -L https://aka.ms/downloadazcopy-v10-linux
tar --strip-components=1 --exclude=*.txt -xzvf -
chmod +x azcopy
azcopy copy /var/lib/waagent/logcollector/logs.zip "https://logsjopalhei.blob.core.windows.net/exchangefiles?sp=racw&st=2024-01-09T18:22:21Z&se=2024-01-12T02:22:21Z&spr=https&sv=2022-11-02&sr=c&sig=NweWlxwEDI6R%2BRN%2BfURpJQhD3Vvz99SeSN7O5vh0ol4%3D" --from-to LocalBlob
azcopy copy /var/lib/waagent/logcollector/results.txt "https://logsjopalhei.blob.core.windows.net/exchangefiles?sp=racw&st=2024-01-09T18:22:21Z&se=2024-01-12T02:22:21Z&spr=https&sv=2022-11-02&sr=c&sig=NweWlxwEDI6R%2BRN%2BfURpJQhD3Vvz99SeSN7O5vh0ol4%3D" --from-to LocalBlob

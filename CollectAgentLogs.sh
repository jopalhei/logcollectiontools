# launch log guest agent collection
sudo python3 /var/lib/waagent/WALinuxAgent-2.9.1.1/bin/WALinuxAgent-2.9.1.1-py3.8.egg --collect-logs -full
sudo wget https://aka.ms/downloadazcopy-v10-linux -O /tmp/downloadazcopy-v10-linux
cd /tmp/
sudo tar -xvf /tmp/downloadazcopy-v10-linux
# Move AzCopy
sudo cp ./azcopy_linux_amd64_*/azcopy /tmp
#sudo chmod 755 /usr/bin/azcopy
# Clean the kitchen
#rm -f downloadazcopy-v10-linux
#rm -rf ./azcopy_linux_amd64_*/
# copy resuls to azure storage
sudo /tmp/azcopy copy /var/lib/waagent/logcollector/logs.zip "https://logsjopalhei.blob.core.windows.net/exchangefiles?sp=racw&st=2024-01-09T18:22:21Z&se=2024-01-12T02:22:21Z&spr=https&sv=2022-11-02&sr=c&sig=NweWlxwEDI6R%2BRN%2BfURpJQhD3Vvz99SeSN7O5vh0ol4%3D" --from-to LocalBlob
sudo /tmp/azcopy copy /var/lib/waagent/logcollector/results.txt "https://logsjopalhei.blob.core.windows.net/exchangefiles?sp=racw&st=2024-01-09T18:22:21Z&se=2024-01-12T02:22:21Z&spr=https&sv=2022-11-02&sr=c&sig=NweWlxwEDI6R%2BRN%2BfURpJQhD3Vvz99SeSN7O5vh0ol4%3D" --from-to LocalBlob

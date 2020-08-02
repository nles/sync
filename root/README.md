# encrypt .grive
gpg --cipher-algo aes256 --output secret --yes --symmetric .grive

# decrypt .grive
gpg --pinentry-mode=loopback --output .grive --decrypt secret

# steps to get started
```
sudo mkdir /app
sudo chown $USER:$(id -g -n) /app
git clone https://github.com/nles/sync.git .
cp *grive-secret-file-location* .grive
/app/root/install-grive.sh

/app/root/gsync.sh

cd /app/root/base
./toggle.sh

cd /app/root/secrets
./toggle.sh
cp opened/personal/* ../base/opened/keys

cd /app/root/base/opened
./inits/001_base.sh
# etc.
```

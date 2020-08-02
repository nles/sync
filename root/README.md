# encrypt .grive
gpg --cipher-algo aes256 --output secret --yes --symmetric .grive

# decrypt .grive
gpg --output .grive --decrypt secret

# steps to get started
```
git clone https://github.com/nles/sync.git
mkdir /app
chown $USER:$GROUP /app
mv sync/root /app/root
rm -r sync
cp *grive-secret-file-location* .grive
/app/root/install-grive.sh

/app/root/gsync.sh

cd /app/root/base
./toggle.sh

cd /app/root/secrets
./toggle.sh
cp opened/personal/* base/opened/keys

cd /app/root/base
./inits/001_base.sh
# etc.
```

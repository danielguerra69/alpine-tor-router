Use

docker-compose build
docker-compose up -d
docker-compose exec sshd adduser myuser
ssh -D 127.0.0.1:9050 -p 2522 myuser@<dockerhost>

Ports

sshd    2522
socks5  9050
privoxy 8118
i2p     4444

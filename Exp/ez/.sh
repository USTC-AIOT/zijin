export release=3.0.0
curl -C- -fLO --retry 3 https://pd.zwc365.com/seturl/https://github.com/easzlab/kubeasz/releases/download/$release/ezdown
chmod +x ./ezdown

git clone https://gitclone.com/github.com/easzlab/kubeasz.git

ezctl new k8s-01


sudo mkdir -p /etc/systemd/system/docker.service.d
echo '''
[Service]
Environment="HTTP_PROXY=http://localhost:7890"
Environment="HTTPS_PROXY=http://localhost:7890"
''' | sudo tee -a /etc/systemd/system/docker.service.d/http-proxy.conf



  "registry-mirrors": [
    "https://hub-mirror.c.163.com",
    "https://mirror.baidubce.com"
  ]

mkdir -p ~/.proxychains
echo '''[ProxyList]
http    127.0.0.1    7890
socks5    127.0.0.1    7890''' | sudo tee -a ~/.proxychains/proxychains.conf
port: 7890
socks-port: 7891
allow-lan: true
mode: Rule
log-level: info
external-controller: :9090
dns:
  enabled: true
  nameserver:
    - 119.29.29.29
    - 223.5.5.5
  fallback:
    - 8.8.8.8
    - 8.8.4.4
    - tls://1.0.0.1:853
    - tls://dns.google:853
proxies:
  - {name: 2052, server: whatismyipaddress.com, port: 2052, client-fingerprint: random, type: vless, uuid: 6e7be4fd-d7e2-4f4e-8eb0-797dcd1713b0,  tls: false, tfo: false, skip-cert-verify: false, servername: aly-cm.vlx99770.workers.dev, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: aly-cm.vlx99770.workers.dev}}}
  - {name: 2082, server: whatismyipaddress.com, port: 2082, client-fingerprint: random, type: vless, uuid: 6e7be4fd-d7e2-4f4e-8eb0-797dcd1713b0,  tls: false, tfo: false, skip-cert-verify: false, servername: aly-cm.vlx99770.workers.dev, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: aly-cm.vlx99770.workers.dev}}}
  - {name: 2086, server: whatismyipaddress.com, port: 2086, client-fingerprint: random, type: vless, uuid: 6e7be4fd-d7e2-4f4e-8eb0-797dcd1713b0,  tls: false, tfo: false, skip-cert-verify: false, servername: aly-cm.vlx99770.workers.dev, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: aly-cm.vlx99770.workers.dev}}}
  - {name: 2095, server: whatismyipaddress.com, port: 2095, client-fingerprint: random, type: vless, uuid: 6e7be4fd-d7e2-4f4e-8eb0-797dcd1713b0,  tls: false, tfo: false, skip-cert-verify: false, servername: aly-cm.vlx99770.workers.dev, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: aly-cm.vlx99770.workers.dev}}}
proxy-groups:
  - name: 代理
    type: select
    proxies:
      - 2052
      - 2082
      - 2086
      - 2095
  - name: 规则外路由选择
    type: select
    proxies:
      - 代理
      - DIRECT
rules:
  - DOMAIN-SUFFIX,local,DIRECT
  - IP-CIDR,192.168.0.0/16,DIRECT,no-resolve
  - IP-CIDR,10.0.0.0/8,DIRECT,no-resolve
  - IP-CIDR,172.16.0.0/12,DIRECT,no-resolve
  - IP-CIDR,127.0.0.0/8,DIRECT,no-resolve
  - IP-CIDR,100.64.0.0/10,DIRECT,no-resolve
  - IP-CIDR6,::1/128,DIRECT,no-resolve
  - IP-CIDR6,fc00::/7,DIRECT,no-resolve
  - IP-CIDR6,fe80::/10,DIRECT,no-resolve
  - IP-CIDR6,fd00::/8,DIRECT,no-resolve
  - PROCESS-NAME,aria2c,DIRECT
  - PROCESS-NAME,fdm,DIRECT
  - PROCESS-NAME,Folx,DIRECT
  - PROCESS-NAME,NetTransport,DIRECT
  - PROCESS-NAME,Thunder,DIRECT
  - PROCESS-NAME,Transmission,DIRECT
  - PROCESS-NAME,uTorrent,DIRECT
  - PROCESS-NAME,WebTorrent,DIRECT
  - PROCESS-NAME,WebTorrent Helper,DIRECT
  - PROCESS-NAME,DownloadService,DIRECT
  - PROCESS-NAME,Weiyun,DIRECT
  - DOMAIN-KEYWORD,aria2,DIRECT
  - DOMAIN-KEYWORD,xunlei,DIRECT
  - DOMAIN-KEYWORD,yunpan,DIRECT
  - DOMAIN-KEYWORD,Thunder,DIRECT
  - DOMAIN-KEYWORD,XLLiveUD,DIRECT
  - GEOIP,CN,DIRECT
  - MATCH,规则外路由选择
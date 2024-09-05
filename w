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
  - {name: 443-IPV4-tls, server: www.visakorea.com, port: 443, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
  - {name: 8443-IPV4-tls, server: www.visakorea.com, port: 8443, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
  - {name: 2053-IPV4-tls, server: www.visakorea.com, port: 2053, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
  - {name: 2083-IPV4-tls, server: www.visakorea.com, port: 2083, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
  - {name: 2087-IPV4-tls, server: www.visakorea.com, port: 2087, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
  - {name: 2096-IPV4-tls, server: www.visakorea.com, port: 2096, client-fingerprint: chrome, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.kg, network: ws, ws-opts: {path: "/?ed=2560", headers: {Host: us.kg}}}
proxy-groups:
  - name: 代理
    type: select
    proxies:
      - 443-IPV4-tls
      - 8443-IPV4-tls
      - 2053-IPV4-tls
      - 2083-IPV4-tls
      - 2087-IPV4-tls
      - 2096-IPV4-tls
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

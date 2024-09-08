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
  - {name: 🇭🇰 香港443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇭🇰 香港8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇭🇰 香港2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇭🇰 香港2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇭🇰 香港2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇭🇰 香港2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: hk.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: hk.us.kg}}}
  - {name: 🇸🇬 新加坡443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇸🇬 新加坡8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇸🇬 新加坡2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇸🇬 新加坡2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇸🇬 新加坡2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇸🇬 新加坡2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: sg.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: sg.us.kg}}}
  - {name: 🇯🇵 日本443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇯🇵 日本8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇯🇵 日本2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇯🇵 日本2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇯🇵 日本2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇯🇵 日本2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jp.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jp.us.kg}}}
  - {name: 🇺🇸 美国443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 🇺🇸 美国8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 🇺🇸 美国2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 🇺🇸 美国2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 🇺🇸 美国2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 🇺🇸 美国2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: us.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: us.us.kg}}}
  - {name: 阿里云443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 阿里云8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 阿里云2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 阿里云2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 阿里云2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 阿里云2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: aly.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: aly.us.kg}}}
  - {name: 甲骨文443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 甲骨文8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 甲骨文2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 甲骨文2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 甲骨文2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 甲骨文2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: jgw.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: jgw.us.kg}}}
  - {name: 数码海443, server: whatismyipaddress.com, port: 443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
  - {name: 数码海8443, server: whatismyipaddress.com, port: 8443, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
  - {name: 数码海2053, server: whatismyipaddress.com, port: 2053, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
  - {name: 数码海2083, server: whatismyipaddress.com, port: 2083, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
  - {name: 数码海2087, server: whatismyipaddress.com, port: 2087, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
  - {name: 数码海2096, server: whatismyipaddress.com, port: 2096, client-fingerprint: randomized, type: vless, uuid: 99280094-e683-476b-a3cd-0d37c3892c6f, tls: true, tfo: false, skip-cert-verify: false, servername: smh.us.kg, network: ws, ws-opts: {path: "/?ed=2048", headers: {Host: smh.us.kg}}}
proxy-groups:
  - name: 代理
    type: select
    proxies:
      - 🇭🇰 香港443
      - 🇭🇰 香港8443
      - 🇭🇰 香港2053
      - 🇭🇰 香港2083
      - 🇭🇰 香港2087
      - 🇭🇰 香港2096
      - 🇸🇬 新加坡443
      - 🇸🇬 新加坡8443
      - 🇸🇬 新加坡2053
      - 🇸🇬 新加坡2083
      - 🇸🇬 新加坡2087
      - 🇸🇬 新加坡2096
      - 🇯🇵 日本443
      - 🇯🇵 日本8443
      - 🇯🇵 日本2053
      - 🇯🇵 日本2083
      - 🇯🇵 日本2087
      - 🇯🇵 日本2096
      - 🇺🇸 美国443
      - 🇺🇸 美国8443
      - 🇺🇸 美国2053
      - 🇺🇸 美国2083
      - 🇺🇸 美国2087
      - 🇺🇸 美国2096
      - 阿里云443
      - 阿里云8443
      - 阿里云2053
      - 阿里云2083
      - 阿里云2087
      - 阿里云2096
      - 甲骨文443
      - 甲骨文8443
      - 甲骨文2053
      - 甲骨文2083
      - 甲骨文2087
      - 甲骨文2096
      - 数码海443
      - 数码海8443
      - 数码海2053
      - 数码海2083
      - 数码海2087
      - 数码海2096
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
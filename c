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
  - {name: 🇸🇬 sg, server: sg-detour-03.grabgo.pro, port: 15303, client-fingerprint: chrome, type: vmess, uuid: 0b9232cd-d901-4f16-9b51-05bfa3b59bd7, alterId: 0, cipher: auto, tls: false, tfo: false, skip-cert-verify: false}
proxy-groups:
  - name: 🧭Final
    type: select
    proxies:
      - 🌑Proxy
      - 🌐Direct
  - name: 🌑Proxy
    type: select
    proxies:
      - 🧯Fallback
      - 🕹AutoTest
      - 🇸🇬 sg
  - name: 🎞Streaming
    type: select
    proxies:
      - 🌑Proxy
      - 🕹AutoTest
      - 🇸🇬 sg
  - name: 🎞StreamingSE
    type: select
    proxies:
      - 🌐Direct
      - 🇸🇬 sg
  - name: 🛡Guard
    type: select
    proxies:
      - ⛔️Reject
      - 🌐Direct
  - name: 🧯Fallback
    type: fallback
    url: http://www.gstatic.com/generate_204
    interval: 300
    proxies:
      - 🇸🇬 sg
  - name: 🕹AutoTest
    type: url-test
    url: http://www.gstatic.com/generate_204
    interval: 300
    proxies:
      - 🇸🇬 sg
  - name: ⛔️Reject
    type: select
    proxies:
      - REJECT
  - name: 🌐Direct
    type: select
    proxies:
      - DIRECT
rules:
  - PROCESS-NAME,v2ray,DIRECT,DIRECT
  - PROCESS-NAME,ss-local,DIRECT,DIRECT
  - PROCESS-NAME,aria2c,DIRECT,DIRECT
  - PROCESS-NAME,fdm,DIRECT,DIRECT
  - PROCESS-NAME,Folx,DIRECT,DIRECT
  - PROCESS-NAME,NetTransport,DIRECT,DIRECT
  - PROCESS-NAME,Thunder,DIRECT,DIRECT
  - PROCESS-NAME,Transmission,DIRECT,DIRECT
  - PROCESS-NAME,uTorrent,DIRECT,DIRECT
  - PROCESS-NAME,WebTorrent,DIRECT,DIRECT
  - PROCESS-NAME,WebTorrent Helper,DIRECT,DIRECT
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
  - MATCH,,🧭Final,dns-failed

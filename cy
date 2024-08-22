{
  "log": {
    "level": "info",
    "timestamp": true
  },
  "dns": {
    "servers": [
      {
        "tag": "dns_proxy",
        "address": "tls://1.1.1.1",
        "address_resolver": "dns_resolver"
      },
      {
        "tag": "dns_direct",
        "address": "h3://dns.alidns.com/dns-query",
        "address_resolver": "dns_resolver",
        "detour": "DIRECT"
      },
      {
        "tag": "dns_fakeip",
        "address": "fakeip"
      },
      {
        "tag": "dns_resolver",
        "address": "223.5.5.5",
        "detour": "DIRECT"
      },
      {
        "tag": "block",
        "address": "rcode://success"
      }
    ],
    "rules": [
      {
        "outbound": "any",
        "server": "dns_resolver"
      },
      {
        "geosite": "category-ads-all",
        "server": "dns_block",
        "disable_cache": true
      },
      {
        "query_type": [
          "A",
          "AAAA"
        ],
        "geosite": "geolocation-!cn",
        "server": "dns_fakeip"
      },
      {
        "geosite": "geolocation-!cn",
        "server": "dns_proxy"
      }
    ],
    "final": "dns_direct",
    "fakeip": {
      "enabled": true,
      "inet4_range": "198.18.0.0/15"
    },
    "independent_cache": true
  },
  "ntp": {
    "enabled": true,
    "interval": "30m0s",
    "server": "time.apple.com",
    "server_port": 123,
    "detour": "DIRECT"
  },
  "inbounds": [
    {
      "type": "mixed",
      "tag": "mixed-in",
      "listen": "0.0.0.0",
      "listen_port": 2080
    },
    {
      "type": "tun",
      "tag": "tun-in",
      "inet4_address": "172.19.0.1/30",
      "auto_route": true,
      "strict_route": true,
      "stack": "mixed",
      "sniff": true
    }
  ],
  "outbounds": [
    {
      "type": "direct",
      "tag": "DIRECT"
    },
    {
      "type": "block",
      "tag": "REJECT"
    },
    {
      "type": "dns",
      "tag": "dns-out"
    },
    {
      "type": "vless",
      "tag": "admin",
      "server": "104.19.140.43",
      "server_port": 2053,
      "uuid": "6e7be4fd-d7e2-4f4e-8eb0-797dcd1713b0",
      "network": "tcp",
      "tls": {
        "enabled": true,
        "server_name": "hk-cm.jdh.us.kg"
      },
      "transport": {
        "type": "ws",
        "path": "/?ed=2048",
        "headers": {
          "Host": "hk-cm.jdh.us.kg"
        }
      }
    },
    {
      "type": "selector",
      "tag": "代理",
      "outbounds": [
        "admin"
      ]
    },
    {
      "type": "selector",
      "tag": "规则外路由选择",
      "outbounds": [
        "代理",
        "DIRECT"
      ]
    },
    {
      "type": "selector",
      "tag": "GLOBAL",
      "outbounds": [
        "DIRECT",
        "admin"
      ]
    }
  ],
  "route": {
    "rules": [
      {
        "clash_mode": "Global",
        "outbound": "GLOBAL"
      },
      {
        "clash_mode": "Direct",
        "outbound": "DIRECT"
      },
      {
        "protocol": "dns",
        "outbound": "dns-out"
      },
      {
        "domain_suffix": "local",
        "ip_cidr": [
          "192.168.0.0/16",
          "10.0.0.0/8",
          "172.16.0.0/12",
          "127.0.0.0/8",
          "100.64.0.0/10"
        ],
        "outbound": "DIRECT"
      },
      {
        "domain_keyword": [
          "aria2",
          "xunlei",
          "yunpan",
          "thunder",
          "xlliveud"
        ],
        "process_name": [
          "aria2c",
          "fdm",
          "folx",
          "nettransport",
          "thunder",
          "transmission",
          "utorrent",
          "webtorrent",
          "webtorrent helper",
          "downloadservice",
          "weiyun"
        ],
        "outbound": "DIRECT"
      },
      {
        "geoip": "cn",
        "outbound": "DIRECT"
      }
    ],
    "final": "规则外路由选择",
    "auto_detect_interface": true
  },
  "experimental": {
    "cache_file": {
      "enabled": true,
      "store_fakeip": true
    },
    "clash_api": {
      "external_controller": "127.0.0.1:9090",
      "external_ui": "dashboard"
    }
  }
}

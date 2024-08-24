{"log":{"disabled":false,"level":"info","timestamp":true},"dns":{"servers":[{"tag":"dns_proxy","address":"tls://1.1.1.1","address_resolver":"dns_resolver"},{"tag":"dns_direct","address":"h3://dns.alidns.com/dns-query","address_resolver":"dns_resolver","detour":"DIRECT"},{"tag":"dns_fakeip","address":"fakeip"},{"tag":"dns_resolver","address":"223.5.5.5","detour":"DIRECT"},{"tag":"block","address":"rcode://success"}],"rules":[{"outbound":["any"],"server":"dns_resolver"},{"geosite":["category-ads-all"],"server":"dns_block","disable_cache":true},{"geosite":["geolocation-!cn"],"query_type":["A","AAAA"],"server":"dns_fakeip"},{"geosite":["geolocation-!cn"],"server":"dns_proxy"}],"final":"dns_direct","independent_cache":true,"fakeip":{"enabled":true,"inet4_range":"198.18.0.0/15"}},"ntp":{"enabled":true,"server":"time.apple.com","server_port":123,"interval":"30m","detour":"DIRECT"},"inbounds":[{"type":"mixed","tag":"mixed-in","listen":"0.0.0.0","listen_port":2080},{"type":"tun","tag":"tun-in","inet4_address":"172.19.0.1/30","auto_route":true,"strict_route":true,"stack":"mixed","sniff":true}],"outbounds":[{"type":"direct","tag":"DIRECT"},{"type":"block","tag":"REJECT"},{"type":"dns","tag":"dns-out"},{"type":"vmess","tag":"🇸🇬 sg","server":"sg-detour-03.grabgo.pro","server_port":15303,"uuid":"0b9232cd-d901-4f16-9b51-05bfa3b59bd7","alter_id":0,"security":"auto","network":"tcp","tcp_fast_open":false},{"type":"selector","tag":"代理","outbounds":["🇸🇬 sg"]},{"type":"selector","tag":"规则外路由选择","outbounds":["代理","DIRECT"]},{"type":"selector","tag":"GLOBAL","outbounds":["DIRECT","🇸🇬 sg"]}],"route":{"rules":[{"clash_mode":"Global","outbound":"GLOBAL"},{"clash_mode":"Direct","outbound":"DIRECT"},{"protocol":"dns","outbound":"dns-out"},{"domain_suffix":["local"],"ip_cidr":["192.168.0.0/16","10.0.0.0/8","172.16.0.0/12","127.0.0.0/8","100.64.0.0/10"],"outbound":"DIRECT"},{"process_name":["aria2c","fdm","folx","nettransport","thunder","transmission","utorrent","webtorrent","webtorrent helper","downloadservice","weiyun"],"domain_keyword":["aria2","xunlei","yunpan","thunder","xlliveud"],"outbound":"DIRECT"},{"geoip":"cn","outbound":"DIRECT"}],"auto_detect_interface":true,"final":"规则外路由选择"},"experimental":{"cache_file":{"enabled":true,"store_fakeip":true},"clash_api":{"external_controller":"127.0.0.1:9090","external_ui":"dashboard"}}}
$networkusername = "你的学号%40运营商"
$networkpassword = "web转义后的密码"
$response = Invoke-WebRequest -Uri "http://microsoftconnecttest.com" -MaximumRedirection 0 -ErrorAction SilentlyContinue
$url = $response.Headers.Location | ForEach-Object { 
    if ($_ -match "UserIP=([0-9]+\.[0-9]+\.[0-9]+\.[0-9]+)") {
        "http://10.1.253.2:801/eportal/portal/login?callback=dr1008&login_method=1&user_account=$networkusername&user_password=$networkpassword&wlan_user_ip=$($matches[1])&wlan_user_ipv6=&wlan_user_mac=000000000000&wlan_ac_ip=&wlan_ac_name=&jsVersion=4.2.1&terminal_type=1&lang=zh-cn&v=10340&lang=zh"
    }
}
Invoke-WebRequest -Uri $url | Select-Object -ExpandProperty Content

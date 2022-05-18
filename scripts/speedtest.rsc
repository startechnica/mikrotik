{
  :if ([:len [/file find name=speedtest-list.rsc]] > 0) do={
    /file remove speedtest-list.rsc
  };
  /tool fetch url="https://raw.githubusercontent.com/startechnica/mikrotik/main/address-lists/speedtest.rsc" dst-path=speedtest-list.rsc;
  /ip firewall address-list remove [/ip firewall address-list find list=speedtest];
  /import speedtest-list.rsc;
}

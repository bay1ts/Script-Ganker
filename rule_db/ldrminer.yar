// LDRMiner脚本通配规则
rule linux_miner_ldrminer_script_gen
{
   meta:
      description = "ldrminer script general"
      author = "G4rb3n"
      date = "2021-1-7"
      md5_2101 = "236D7925CFAFC1F643BABDB8E48966BF"

   strings:
      $s1 = "cc="
      $s2 = "xmr="
      $s3 = "get() {"
      $s4 = "php -r" 
      $s5 = "ps axf -o \"pid %cpu\""
      $s6 = "$(getconf LONG_BIT)"

      $x1 = "sysrv|network01"
      $x2 = "./network01"
      $x3 = "./sysrv"
      $x4 = "185.239.242.71"
      $x5 = "49dnvYkWkZNPrDj3KF8fR1BHLBfiVArU6Hu61N9gtrZWgbRptntwht5JUrXX1ZeofwPwC6fXNxPZfGjNEChXttwWE3WGURa"

   condition:
      ( filesize < 20KB ) and ( ( 3 of ($s*) ) and ( 1 of ($x*) ) )
}
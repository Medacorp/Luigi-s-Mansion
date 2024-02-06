data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0
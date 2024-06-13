data modify entity @s[scores={AttackType=0}] data.animation set value {namespace:"luigis_mansion",id:"flee"}
data modify entity @s[scores={AttackType=1}] data.animation set value {namespace:"luigis_mansion",id:"haunt"}
execute at @s facing entity @e[tag=target,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ 0
scoreboard players add @s DeathTime 1
data modify entity @s[scores={DeathTime=1}] data.animation set value {namespace:"luigis_mansion",id:"death"}
tag @s[scores={DeathTime=200}] add remove_from_existence
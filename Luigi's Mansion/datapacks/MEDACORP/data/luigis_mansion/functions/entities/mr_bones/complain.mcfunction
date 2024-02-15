scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).complain hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"complain"}
teleport @s[scores={ActionTime=1..15}] ~ ~-0.1 ~
teleport @s[scores={ActionTime=21..35}] ~ ~0.1 ~
tag @s[scores={ActionTime=40}] remove complain
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
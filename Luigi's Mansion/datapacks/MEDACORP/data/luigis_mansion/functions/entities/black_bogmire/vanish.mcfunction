scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).succumb hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
execute at @s run teleport @s[scores={ActionTime=21..30}] ~ ~-0.1 ~
execute at @s[scores={ActionTime=30},tag=!big] positioned ~ ~2.1 ~ run function luigis_mansion:spawn_entities/ball/shadow/small
execute at @s[scores={ActionTime=30},tag=big] positioned ~ ~2.1 ~ run function luigis_mansion:spawn_entities/ball/shadow/big
execute if entity @s[scores={ActionTime=30}] run function luigis_mansion:other/drop_loot
tag @s[scores={ActionTime=30}] add dead
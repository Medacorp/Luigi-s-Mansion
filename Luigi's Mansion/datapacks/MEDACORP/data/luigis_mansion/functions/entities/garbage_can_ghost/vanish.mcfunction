scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1},tag=visible] run playsound $(namespace):entity.$(id).disappear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
teleport @s[scores={ActionTime=1..2}] ~ ~0.4 ~
teleport @s[scores={ActionTime=3..4}] ~ ~-0.4 ~
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~-8 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=5..}] ~ ~0.3 ~ ~8 ~
execute at @s[scores={ActionTime=20}] run teleport @s ~ ~-4.8 ~
tag @s[scores={ActionTime=20}] add disappear
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
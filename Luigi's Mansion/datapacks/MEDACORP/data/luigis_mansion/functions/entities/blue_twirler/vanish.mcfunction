scoreboard players set @s TargetTask 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1},tag=visible] run playsound $(namespace):entity.$(id).disappear hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"vanish"}
execute unless score #mirrored Selected matches 1 run teleport @s ~ ~0.1 ~ ~10 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~0.1 ~ ~-10 ~
execute at @s[scores={ActionTime=40}] run teleport @s ~ ~-4 ~
tag @s[scores={ActionTime=40}] add disappear
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
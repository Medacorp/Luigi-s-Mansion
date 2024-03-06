scoreboard players set @s TargetTask 0
scoreboard players set @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).spawn_beta hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear/beta"}
execute unless score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1}] ~ ~4 ~ ~40 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1}] ~ ~4 ~ ~-40 ~
execute unless score #mirrored Selected matches 1 at @s run teleport @s ~ ~-0.1 ~ ~-10 ~
execute if score #mirrored Selected matches 1 at @s run teleport @s ~ ~-0.1 ~ ~10 ~
tag @s[scores={ActionTime=40}] remove appear
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
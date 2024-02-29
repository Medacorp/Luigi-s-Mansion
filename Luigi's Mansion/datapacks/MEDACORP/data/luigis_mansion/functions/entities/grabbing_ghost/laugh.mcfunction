scoreboard players add @s TargetTask 0
scoreboard players add @s SpawnTime 0
scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).laugh hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"laugh"}
execute unless score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1..19}] ~ ~ ~ ~18 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=1..19}] ~ ~ ~ ~-18 ~
tag @s[scores={ActionTime=40}] remove laugh
tag @s[scores={ActionTime=40}] add vanish
scoreboard players set @s[scores={ActionTime=40}] ActionTime 0
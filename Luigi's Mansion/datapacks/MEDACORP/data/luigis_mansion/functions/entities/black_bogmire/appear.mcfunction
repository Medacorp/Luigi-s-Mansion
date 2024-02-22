scoreboard players add @s ActionTime 1
$execute if entity @s[scores={ActionTime=1}] run playsound $(namespace):entity.$(id).spawn hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"appear"}
execute at @s run teleport @s[scores={ActionTime=1}] ~ ~-3 ~
execute at @s run teleport @s[scores={ActionTime=1..30}] ~ ~0.1 ~
data modify entity @s[scores={ActionTime=30}] data.animation set value {namespace:"luigis_mansion",id:"black_idle"}
tag @s[scores={ActionTime=100}] remove appear
scoreboard players set @s[scores={ActionTime=100}] ActionTime 0
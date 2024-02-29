scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.jarvis.freeze hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"frozen"}
teleport @s[scores={ActionTime=10}] ~ ~-1 ~
execute if entity @s[scores={ActionTime=10}] run particle minecraft:block minecraft:ice ~ ~1.2 ~ 0.3 0.3 0.3 0 10
tag @s[scores={ActionTime=10}] remove visible
tag @s[scores={ActionTime=10}] remove frozen
data remove entity @s[scores={ActionTime=10}] data.animation
scoreboard players set @s[scores={ActionTime=10}] ActionTime 0
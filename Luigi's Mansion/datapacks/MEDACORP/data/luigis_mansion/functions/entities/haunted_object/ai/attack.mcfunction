data modify entity @s data.animation set from entity @s data.flying_animation
execute if entity @s[tag=!dead] run function luigis_mansion:entities/ghost/move_forward
execute if entity @s[tag=!dead] if entity @e[tag=exact_same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run function luigis_mansion:entities/haunted_object/collide with entity @s data.entity
execute if score #temp Move matches -1 run tag @s add collided
execute unless entity @s[tag=!collided,tag=!dead] run function luigis_mansion:entities/haunted_object/collided

execute if entity @s[scores={WaitTime=100}] run playsound luigis_mansion:entity.haunted_object.flying_start hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={WaitTime=100}] Sound 14
execute if entity @s[scores={WaitTime=101..,Sound=0}] run playsound luigis_mansion:entity.haunted_object.flying hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={WaitTime=101..,Sound=0}] Sound 14
scoreboard players add @s WaitTime 1
data modify entity @s data.animation set from entity @s data.flying_animation
tag @s add vacuumable
tag @s add pulled_by_vacuum
execute if entity @s[tag=!dead,scores={WaitTime=100..109}] run function luigis_mansion:entities/ghost/move_forward_force
execute if entity @s[tag=in_dust,tag=!dead,scores={WaitTime=110..}] positioned ~ ~-0.5 ~ facing entity @e[tag=expelling_me,sort=nearest,limit=1] feet positioned ~ ~0.5 ~ if block ^ ^ ^-0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^-0.1
execute if entity @s[tag=in_vacuum,tag=!dead,scores={WaitTime=110..}] run scoreboard players operation #temp Move /= #2 Constants
execute if entity @s[tag=in_vacuum,tag=!dead,scores={WaitTime=110..}] positioned ~ ~-0.5 ~ facing entity @e[tag=vacuuming_me,sort=nearest,limit=1] feet positioned ~ ~0.5 ~ run function luigis_mansion:entities/ghost/move_forward
execute if entity @s[tag=!in_dust,tag=!in_vacuum,tag=!dead,scores={WaitTime=110..}] run function luigis_mansion:entities/ghost/move_forward
execute at @s if block ~ ~-0.3 ~ #luigis_mansion:ghosts_ignore run teleport @s[tag=vacuumable] ~ ~-0.1 ~
execute if entity @s[tag=!dead] if entity @e[tag=exact_same_room,tag=luigi,distance=..0.7,limit=1] run function luigis_mansion:entities/haunted_object/collide with entity @s data.entity
execute if score #temp Move matches -1 run tag @s add collided
execute unless entity @s[tag=!collided,tag=!dead] run function luigis_mansion:entities/haunted_object/collided

execute if entity @s[scores={WaitTime=100}] run playsound luigis_mansion:entity.haunted_object.flying_start hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={WaitTime=100}] Sound 14
execute if entity @s[scores={WaitTime=101..,Sound=0}] run playsound luigis_mansion:entity.haunted_object.flying hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={WaitTime=101..,Sound=0}] Sound 14
scoreboard players add @s WaitTime 1
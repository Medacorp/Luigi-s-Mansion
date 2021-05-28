execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0}] positioned ^ ^ ^0.7 positioned ~ ~-6 ~ align xyz if entity @e[tag=same_room,tag=!spectator,dx=0,dy=6,dz=0,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!collided,tag=attack,scores={StunTime=0}] run function luigis_mansion:entities/blue_blaze/body_slam

execute if block ~ ~-3 ~ #luigis_mansion:ghosts_ignore if block ~ ~-2 ~ #luigis_mansion:ghosts_ignore if block ~ ~-1 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute unless block ~ ~1 ~ #luigis_mansion:ghosts_ignore run tag @s add at_height
execute at @s run teleport @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0},tag=!at_height] ~ ~0.1 ~
tag @s remove at_height
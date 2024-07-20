scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=ghost_heart] if score @s GhostNr = #temp GhostNr run tag @s add this_heart
scoreboard players reset #temp GhostNr
execute if entity @s[scores={VulnerableTime=0},tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart,tag=spawned_ghost_heart] run tag @e[tag=this_heart,limit=1] add dead
execute if entity @s[tag=vanish,tag=spawned_ghost_heart] run tag @e[tag=this_heart,limit=1] add dead
execute if entity @s[tag=dying] run tag @e[tag=this_heart,limit=1] add dead
execute unless entity @s[tag=!dead,tag=!remove_from_existence] run tag @e[tag=this_heart,limit=1] add dead
data modify storage luigis_mansion:data macro set value {up:0d}
scoreboard players operation #temp Time = @s HeartOffset
scoreboard players operation #temp2 Time = @s EntityYOffset
execute store result storage luigis_mansion:data macro.up double 0.1 run scoreboard players operation #temp2 Time -= #temp Time
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players operation #temp Health = @s Health
scoreboard players operation #temp Room = @s Room
execute unless entity @s[scores={VulnerableTime=0}] if entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] as @e[tag=this_heart,limit=1] run function luigis_mansion:entities/ghost/heart/update with storage luigis_mansion:data macro
execute unless entity @s[tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] as @e[tag=this_heart,limit=1] run function luigis_mansion:entities/ghost/heart/update_elemental with storage luigis_mansion:data macro
execute unless entity @s[scores={VulnerableTime=0},tag=!burning_heart,tag=!watery_heart,tag=!frozen_heart] if entity @s[tag=!dying,tag=!vanish] unless entity @e[tag=this_heart,limit=1] run function luigis_mansion:entities/ghost/heart/spawn with storage luigis_mansion:data macro
execute unless entity @e[tag=this_heart,tag=!dead,limit=1] run tag @s remove spawned_ghost_heart
scoreboard players reset #temp Time
scoreboard players reset #temp Room
tag @e[tag=this_heart,limit=1] remove this_heart
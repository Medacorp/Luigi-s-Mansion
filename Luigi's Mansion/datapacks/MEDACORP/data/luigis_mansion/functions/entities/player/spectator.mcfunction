tag @s remove grabbed
tag @s remove flipped_gravity
tag @s remove poltergust_malfunction

scoreboard players reset @s LastRoom
scoreboard players set @s Sound 0

execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/tick
execute if entity @s[scores={AnimationProgress=1..}] run function luigis_mansion:entities/player/animation/set/none

execute unless entity @s[scores={Offline=0}] if entity @s[tag=!using_selection_menu] run function luigis_mansion:selection_menu/reset_mansion/original_menu
scoreboard players set @s[scores={Offline=-1}] Offline 0

scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=dead_player] as @e[tag=death_location] if score @s ID = #temp ID run tag @s add this_death_location
execute if entity @s[tag=dead_player] if score #can_revive Selected matches 1 unless entity @e[tag=this_death_location,limit=1] run scoreboard players set @s Room 0
execute if entity @s[tag=dead_player] if score #can_revive Selected matches 1 unless entity @e[tag=this_death_location,limit=1] in minecraft:overworld positioned 769 89.9275 9.0 rotated -90 0 run function luigis_mansion:spawn_entities/death_location
scoreboard players reset #temp ID
tag @a[tag=this_death_location] remove this_death_location

execute at @e[tag=ghost,tag=same_room,tag=!vacuumable,tag=!visible,tag=hidden] run particle minecraft:dust{color:[0.7f,1f,0.5f],scale:1f} ~ ~0.6 ~ 0.3 0.3 0.3 0 5 normal @s
execute at @e[tag=ghost,tag=same_room,tag=!vacuumable,tag=!visible,tag=!vanish,tag=!hidden] run particle minecraft:dust{color:[0.7f,1f,0f],scale:1f} ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @s add me
execute at @a[tag=same_room,gamemode=spectator,tag=!me] run particle minecraft:dust{color:[0.2f,1f,0.2f],scale:1f} ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @s remove me
tag @s add spectator
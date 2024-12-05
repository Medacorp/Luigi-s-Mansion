scoreboard players operation @s[tag=seen_room_name] LastRoom = @s Room
scoreboard players set @s Sound 0

execute if entity @s[tag=using_selection_menu] run function luigis_mansion:selection_menu/tick
execute if entity @s[scores={AnimationProgress=1..}] run function luigis_mansion:entities/player/clear_animation

execute unless data storage luigis_mansion:data current_state.current_data.portrait_battle unless entity @s[scores={Offline=0}] if entity @s[tag=!using_selection_menu,tag=dead_player,tag=!gooigi] run function luigis_mansion:selection_menu/mansion_reset/original_menu
scoreboard players set @s[scores={Offline=-1}] Offline 0

scoreboard players operation #temp ID = @s ID
execute if entity @s[tag=dead_player] as @e[tag=luigi] if score @s ID = #temp ID run tag @s add this_model
execute if entity @s[tag=dead_player] unless entity @e[tag=this_model,limit=1] run tag @s remove flipped_gravity
execute if entity @s[tag=dead_player] if score #can_revive Selected matches 0 run tag @e[tag=this_model,limit=1] add dead
execute if entity @s[tag=!has_luigi,tag=dead_player,tag=!gooigi] if score #can_revive Selected matches 1 run function luigis_mansion:spawn_entities/luigi
execute if entity @s[tag=dead_player] if score #can_revive Selected matches 1 unless entity @e[tag=this_model,limit=1] run function luigis_mansion:room/underground_lab/warp_to
scoreboard players reset #temp ID
tag @e[tag=this_model] remove this_model
execute if entity @s[tag=!separated_camera,tag=dead_player] run function luigis_mansion:entities/player/camera/separate

scoreboard players set @s[tag=dead_player] Health 0

execute at @e[tag=ghost,tag=same_room,tag=!vacuumable,tag=!visible,tag=hidden] run particle minecraft:dust{color:11730866,scale:1f} ~ ~0.6 ~ 0.3 0.3 0.3 0 5 normal @s
execute at @e[tag=ghost,tag=same_room,tag=!vacuumable,tag=!visible,tag=!vanish,tag=!hidden] run particle minecraft:dust{color:16711680,scale:1f} ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @s add me
execute at @a[tag=same_room,tag=dead_player,tag=!me] run particle minecraft:dust{color:3407667,scale:1f} ~ ~1.6 ~ 0.3 0.3 0.3 0 5 normal @s
tag @s remove me
tag @s add spectator
tag @s remove has_luigi

scoreboard players add @s[tag=gooigi,scores={RespawnTimer=..99}] RespawnTimer 1
execute unless data storage luigis_mansion:data current_state.current_data.portrait_battle if entity @s[tag=gooigi,scores={RespawnTimer=100}] at @a[tag=same_room,distance=..2,tag=luigi,tag=!gooigi] run function 3ds_remake:entities/gooigi/respawn
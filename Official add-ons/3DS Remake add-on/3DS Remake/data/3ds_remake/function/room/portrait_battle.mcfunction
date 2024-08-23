execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.lowest_difficulty
execute store result storage luigis_mansion:data current_state.current_data.lowest_difficulty int 1 run scoreboard players operation #temp Time < #global_difficulty Selected
scoreboard players reset #temp Time
gamemode spectator @s[tag=stop_portrait_battle]
tag @s remove stop_portrait_battle

scoreboard players operation #temp Room = @s Room
execute as @e[tag=!model_piece,tag=!reflection,tag=!furniture] unless entity @s[tag=!portrait_ghost,type=!minecraft:player] run function luigis_mansion:main/get_same_room
scoreboard players reset #temp Room
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute unless score #freeze_timer Selected matches 1 store result bossbar 3ds_remake:portrait_battle value run scoreboard players get #temp Time
execute unless score #freeze_timer Selected matches 1 run function 3ds_remake:room/portrait_battle/convert_time
execute unless score #freeze_timer Selected matches 1 run bossbar set 3ds_remake:portrait_battle name {"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.time","color":"white","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}
bossbar set 3ds_remake:portrait_battle players @a
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
scoreboard players operation @s LastRoom = @s Room
execute at @s run teleport @a[tag=!same_room] ~ ~ ~ ~ ~

execute as @a[tag=gooigi] run function 3ds_remake:entities/player/un_gooigi
execute as @e[type=minecraft:armor_stand] run data remove entity @s ArmorItems[3].components."minecraft:custom_data".loot
execute as @e[type=minecraft:armor_stand] run data remove entity @s ArmorItems[3].components."minecraft:custom_data".loot_chances
execute as @e[type=minecraft:marker] run data remove entity @s data.loot
tag @e[tag=furniture,tag=!no_dust] add no_dust
tag @e[tag=pearl_dropper] remove pearl_dropper

function 3ds_remake:room/portrait_battle/tick with storage luigis_mansion:data current_state.current_data.mansion_id

execute if entity @e[tag=portrait_ghost,tag=same_room,tag=!dying,limit=1] run tag @s add portrait_ghost_spawned
execute if entity @e[tag=portrait_ghost,tag=same_room,tag=dying,limit=1] run tag @s add catching_the_portrait_ghost
execute if entity @s[tag=portrait_ghost_spawned,tag=same_room,tag=catching_the_portrait_ghost] unless data storage luigis_mansion:data dialogs[0] unless entity @e[tag=portrait_ghost,tag=same_room,limit=1] run function 3ds_remake:room/portrait_battle/clear
execute if entity @s[tag=portrait_ghost_spawned,tag=same_room,tag=!catching_the_portrait_ghost] unless data storage luigis_mansion:data dialogs[0] unless entity @e[tag=portrait_ghost,tag=same_room,limit=1] run function 3ds_remake:selection_menu/gallery_portrait/retry_portrait_battle

execute if entity @s[tag=spectator] run function 3ds_remake:selection_menu/gallery_portrait/end_portrait_battle with storage luigis_mansion:data current_state.current_data.portrait_battle.position
tag @e[tag=same_room] remove same_room
tag @e[tag=exact_same_room] remove exact_same_room
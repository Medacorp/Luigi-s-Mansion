execute store result score #global_difficulty Selected run data get storage luigis_mansion:data current_state.current_data.lowest_difficulty
execute unless score #freeze_timer Selected matches 1 run gamemode spectator @s[tag=stop_portrait_battle]
execute unless score #freeze_timer Selected matches 1 run tag @s remove stop_portrait_battle
execute store result score #temp Time run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] store result bossbar 3ds_remake:portrait_battle value run scoreboard players get #temp Money
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run function 3ds_remake:room/gallery/portrait_battle/convert_time
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run bossbar set 3ds_remake:portrait_battle name {"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.time","color":"white","with":[{"type":"score","score":{"name":"#temp6","objective":"Time"}},{"type":"score","score":{"name":"#temp5","objective":"Time"}},{"type":"score","score":{"name":"#temp4","objective":"Time"}},{"type":"score","score":{"name":"#temp3","objective":"Time"}},{"type":"score","score":{"name":"#temp2","objective":"Time"}},{"type":"score","score":{"name":"#temp","objective":"Time"}}]}
bossbar set 3ds_remake:portrait_battle players @a
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
scoreboard players reset #temp4 Time
scoreboard players reset #temp5 Time
scoreboard players reset #temp6 Time
scoreboard players operation @s LastRoom = @s Room
execute as @a[tag=gooigi] run function 3ds_remake:entities/player/un_gooigi
execute as @e[tag=furniture,tag=!no_dust] run data remove entity @s ArmorItems[3].tag.loot
tag @e[tag=furniture,tag=!no_dust] add no_dust
tag @e[tag=pearl_dropper] remove pearl_dropper
function #3ds_remake:room/gallery/portrait_battle/tick
execute if data storage luigis_mansion:data current_state.current_data{in_mansion_time:2} unless score #freeze_timer Selected matches 1 run function 3ds_remake:room/gallery/portrait_battle/begin
execute if entity @e[tag=portrait_ghost,tag=!dying,limit=1] run tag @s add portrait_ghost_spawned
execute if entity @e[tag=portrait_ghost,tag=dying,limit=1] run tag @s add catching_the_portrait_ghost
execute if entity @s[tag=portrait_ghost_spawned,tag=catching_the_portrait_ghost] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @e[tag=portrait_ghost,limit=1] run function 3ds_remake:room/gallery/portrait_battle/clear
execute if entity @s[tag=portrait_ghost_spawned,tag=catching_the_portrait_ghost] if entity @s[scores={MusicGroup=0,MusicType=14,PreviousMusicType=14,Music=1}] in minecraft:overworld run function #3ds_remake:room/gallery/portrait_battle/return
execute if entity @s[tag=portrait_ghost_spawned,tag=!catching_the_portrait_ghost] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @e[tag=portrait_ghost,limit=1] in minecraft:overworld run function #3ds_remake:room/gallery/portrait_battle/return
execute if entity @s[gamemode=spectator] in minecraft:overworld run function #3ds_remake:room/gallery/portrait_battle/return
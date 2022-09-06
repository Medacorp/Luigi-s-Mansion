execute unless score #freeze_timer Selected matches 1 run gamemode spectator @s[scores={GBHChoice=5}]
execute unless score #freeze_timer Selected matches 1 run scoreboard players reset @s[scores={GBHChoice=5}] GBHChoice
execute store result score #temp Money run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] store result bossbar luigis_mansion_3ds_remake:portrait_battle value run scoreboard players get #temp Money
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/convert_time
execute unless entity @s[scores={MusicGroup=0,MusicType=14}] run bossbar set luigis_mansion_3ds_remake:portrait_battle name {"translate":"luigis_mansion_3ds_remake:message.gallery.portrait_battle.time","color":"white","with":[{"score":{"name":"#temp","objective":"Time"}},{"score":{"name":"#temp","objective":"ActionTime"}},{"score":{"name":"#temp","objective":"Money"}}]}
bossbar set luigis_mansion_3ds_remake:portrait_battle players @a
scoreboard players reset #temp Time
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Money
scoreboard players operation @s LastRoom = @s Room
execute as @a[tag=gooigi] run function luigis_mansion_3ds_remake:entities/player/un_gooigi
tag @e[tag=pearl_dropper] remove pearl_dropper
function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/tick
execute if data storage luigis_mansion:data current_state.current_data{in_mansion_time:2} unless score #freeze_timer Selected matches 1 run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/begin
execute if entity @e[tag=portrait_ghost,tag=!dying,limit=1] run tag @s add portrait_ghost_spawned
execute if entity @e[tag=portrait_ghost,tag=dying,limit=1] run tag @s add catching_the_portrait_ghost
execute if entity @s[tag=portrait_ghost_spawned,tag=catching_the_portrait_ghost] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @e[tag=portrait_ghost,limit=1] run function luigis_mansion_3ds_remake:room/gallery/portrait_battle/clear
execute if entity @s[tag=portrait_ghost_spawned,tag=catching_the_portrait_ghost] if entity @s[scores={MusicGroup=0,MusicType=14,PrevMusicType=14,Music=1}] in minecraft:overworld run function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/return
execute if entity @s[tag=portrait_ghost_spawned,tag=!catching_the_portrait_ghost] unless entity @s[scores={MusicGroup=0,MusicType=14}] unless entity @e[tag=portrait_ghost,limit=1] in minecraft:overworld run function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/return
execute if entity @s[gamemode=spectator] in minecraft:overworld run function #luigis_mansion_3ds_remake:room/gallery/portrait_battle/return
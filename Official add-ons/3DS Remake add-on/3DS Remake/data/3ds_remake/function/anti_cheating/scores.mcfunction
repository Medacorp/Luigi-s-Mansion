scoreboard objectives add FollowID dummy
scoreboard objectives add Glowing dummy
scoreboard objectives add RespawnTimer dummy
scoreboard objectives add StrobulbCharge dummy

execute store result score #non_gooigis Totals if entity @a[tag=!spectator,tag=!gooigi]
execute store result score #all_non_gooigis Totals if entity @a[tag=!gooigi]

bossbar add 3ds_remake:portrait_battle {"type":"translatable","translate":"3ds_remake:message.gallery.portrait_battle.time","color":"white","with":["0","0","0"]}
bossbar set 3ds_remake:portrait_battle color white

execute unless score #global_3ds_remake_gallery Selected matches 0..1 run scoreboard players set #global_3ds_remake_gallery Selected 1
execute unless score #toad_amiibo Selected matches 0..1 run scoreboard players set #toad_amiibo Selected 0
execute unless score #mario_amiibo Selected matches 0..1 run scoreboard players set #mario_amiibo Selected 0
execute unless score #boo_amiibo Selected matches 0..1 run scoreboard players set #boo_amiibo Selected 0
execute unless score #luigi_amiibo Selected matches 0..1 run scoreboard players set #luigi_amiibo Selected 0
execute if data storage 3ds_remake:data current_state.trophy.beginner{done:0b} run scoreboard players set #toad_amiibo Selected 0
execute if data storage 3ds_remake:data current_state.trophy.easy{done:0b} run scoreboard players set #mario_amiibo Selected 0
execute if data storage 3ds_remake:data current_state.trophy.normal{done:0b} run scoreboard players set #boo_amiibo Selected 0
execute if data storage 3ds_remake:data current_state.trophy.hard{done:0b} run scoreboard players set #luigi_amiibo Selected 0

execute if data storage luigis_mansion:data current_state unless data storage 3ds_remake:data current_state if entity @a[limit=1] run function 3ds_remake:other/upgrade_path/newly_installed
execute if data storage luigis_mansion:data current_state.current_data unless data storage luigis_mansion:data current_state.current_data{nothing_loaded:1b} unless data storage luigis_mansion:data current_state.current_data.tracking_boos run data modify storage luigis_mansion:data current_state.current_data.tracking_boos set value []
execute if data storage luigis_mansion:data current_state.current_data{data_index:0} unless data storage luigis_mansion:data current_state.current_data{no_collect_animation:["3ds_remake:super_mushroom"]} run data modify storage luigis_mansion:data current_state.current_data.no_collect_animation append value "3ds_remake:super_mushroom"
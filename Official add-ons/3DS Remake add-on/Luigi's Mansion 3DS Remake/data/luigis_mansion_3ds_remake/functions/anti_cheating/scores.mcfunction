scoreboard objectives add AmiiboChoice trigger
scoreboard objectives add FollowID dummy
scoreboard objectives add FrameChoice trigger
scoreboard objectives add Glowing dummy
scoreboard objectives add PortraitBattle trigger
scoreboard objectives add RespawnTimer dummy
scoreboard objectives add SelectedFrame dummy
scoreboard objectives add StrobulbCharge dummy

bossbar add luigis_mansion_3ds_remake:portrait_battle {"translate":"luigis_mansion_3ds_remake:message.gallery.portrait_battle.time","color":"white","with":["0","0","0"]}
bossbar set luigis_mansion_3ds_remake:portrait_battle color white

execute unless score #global_3ds_remake_gallery Selected matches 0..1 run scoreboard players set #global_3ds_remake_gallery Selected 1
execute unless score #toad_amiibo Selected matches 0..1 run scoreboard players set #toad_amiibo Selected 0
execute unless score #mario_amiibo Selected matches 0..1 run scoreboard players set #mario_amiibo Selected 0
execute unless score #boo_amiibo Selected matches 0..1 run scoreboard players set #boo_amiibo Selected 0
execute unless score #luigi_amiibo Selected matches 0..1 run scoreboard players set #luigi_amiibo Selected 0
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.beginner{done:0b} run scoreboard players set #toad_amiibo Selected 0
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.easy{done:0b} run scoreboard players set #mario_amiibo Selected 0
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.normal{done:0b} run scoreboard players set #boo_amiibo Selected 0
execute if data storage luigis_mansion_3ds_remake:data current_state.trophy.hard{done:0b} run scoreboard players set #luigi_amiibo Selected 0

execute unless data storage luigis_mansion_3ds_remake:data current_state if entity @a[limit=1] run function luigis_mansion_3ds_remake:other/upgrade_path/newly_installed
execute unless data storage luigis_mansion:data current_state.current_data.tracking_boos run data modify storage luigis_mansion:data current_state.current_data.tracking_boos set value []
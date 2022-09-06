tag @e[tag=ghost] add remove_from_existence
function luigis_mansion:spawn_entities/ghost/empty_marker
execute store result score #temp Money run data get storage luigis_mansion:data current_state.current_data.in_mansion_time
scoreboard players set #temp2 Money 2147483647
execute if data storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores.speed store result score #temp2 Money run data get storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores.speed
execute if score #temp Money < #temp2 Money run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.portrait_battle.new_record.speed","color":"gold"}]}
execute store result score #temp Health run data get storage luigis_mansion:data current_state.current_data.lowest_health_moment
scoreboard players set #temp2 Health 0
execute if data storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores.health store result score #temp2 Health run data get storage luigis_mansion_3ds_remake:data loaded_mansion.high_scores.health
execute if score #temp Health < #temp2 Health run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mansion","color":"green"},{"translate":"luigis_mansion_3ds_remake:message.gallery.portrait_battle.new_record.health","color":"gold"}]}
function luigis_mansion:other/music/set/area_boss_defeated
scoreboard players reset #temp Money
scoreboard players reset #temp2 Money
scoreboard players reset #temp Health
scoreboard players reset #temp2 Health
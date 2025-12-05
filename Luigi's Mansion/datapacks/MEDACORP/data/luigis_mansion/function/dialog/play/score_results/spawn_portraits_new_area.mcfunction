execute unless data storage luigis_mansion:data dialogs[0].portraits.area[0][0] if data storage luigis_mansion:data dialogs[0].portraits.area[0] run data remove storage luigis_mansion:data dialogs[0].portraits.area[0]
execute unless data storage luigis_mansion:data dialogs[0].portraits.area[0] run return 0
execute unless score #areas Time matches 1.. store result score #areas Time run data get storage luigis_mansion:data dialogs[0].portraits.area
execute store result score #portraits Time run data get storage luigis_mansion:data dialogs[0].portraits.area[0]
scoreboard players add #area Time 1
execute unless score #first_area Time matches 1.. run tag @e[tag=move_with_area] add remove_from_existence
data modify storage luigis_mansion:data portrait set value {text_up:2.1d}
execute unless score #areas Time matches 1 run summon minecraft:text_display ~1 ~2.5 ~4.5 {Tags:["area_header","move_with_area","this_area","fade_in"],text:{type:"translatable",translate:"luigis_mansion:dialog.ghost_portrificationizer_room.results.caught.area",with:[{type:"score",score:{name:"#area",objective:"Time"}}]},billboard:"fixed",line_width:160,background:0,alignment:"left",brightness:{block:15,sky:0},text_opacity:0b,Rotation:[-90.0f,0.0f]}
execute unless score #areas Time matches 1 run scoreboard players operation @e[tag=this_area,limit=1] Dialog = #area Time
execute unless score #areas Time matches 1 run scoreboard players set @e[tag=this_area,limit=1] Room -3
execute unless score #areas Time matches 1 run tag @e[tag=this_area,limit=1] remove this_area
execute if score #portraits Time matches 1.. run function luigis_mansion:dialog/play/score_results/spawn_portraits
data remove storage luigis_mansion:data portrait
execute if score #spawned_portraits Time matches 0.. run scoreboard players remove #first_area Time 1
execute if score #spawned_portraits Time matches 0.. run scoreboard players operation @e[tag=move_with_area] Dialog -= #first_area Time
execute if score #spawned_portraits Time matches 0.. run tag @e[tag=move_with_area,scores={Dialog=..-1}] add remove_from_existence
execute if score #spawned_portraits Time matches 0.. store result storage luigis_mansion:data dialogs[0].portraits.total int 1 run scoreboard players get #spawned_portraits Time
scoreboard players reset #area Time
scoreboard players reset #areas Time
scoreboard players reset #portraits Time
scoreboard players reset #first_area Time
scoreboard players reset #spawned_portraits Time
scoreboard players reset #temp Time
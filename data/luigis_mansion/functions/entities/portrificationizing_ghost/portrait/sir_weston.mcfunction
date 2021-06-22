execute store result score #temp ActionTime run data get storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.rank
execute if score #temp ActionTime matches -1..0 run summon minecraft:item_frame 770 79 -7 {Tags:["portrait"],Fixed:1b,Invulnerable:1b,Silent:1b,Facing:1b,ItemRotation:3b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:57}}}
execute if score #temp ActionTime matches 1 run summon minecraft:item_frame 770 79 -7 {Tags:["portrait"],Fixed:1b,Invulnerable:1b,Silent:1b,Facing:1b,ItemRotation:3b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:59}}}
execute if score #temp ActionTime matches 2 run summon minecraft:item_frame 770 79 -7 {Tags:["portrait"],Fixed:1b,Invulnerable:1b,Silent:1b,Facing:1b,ItemRotation:3b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:58}}}
execute if score #temp ActionTime matches -1..0 run advancement grant @a until luigis_mansion:portrait_ghosts/sir_weston/bronze
execute if score #temp ActionTime matches 1 run advancement grant @a until luigis_mansion:portrait_ghosts/sir_weston/silver
execute if score #temp ActionTime matches 2 run advancement grant @a until luigis_mansion:portrait_ghosts/sir_weston/gold
scoreboard players reset #temp ActionTime
data modify storage luigis_mansion:data current_state.current_data.portrait_ghosts.sir_weston.portrificationized set value 1b
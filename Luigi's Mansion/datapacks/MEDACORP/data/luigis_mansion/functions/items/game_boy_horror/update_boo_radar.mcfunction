scoreboard players operation #temp Room = @s Room
execute as @e[tag=caught_by_boo_radar] if score @s Room = #temp Room run tag @s add radar_detect
scoreboard players reset #temp Room
execute unless data storage luigis_mansion:data current_state.current_data.obtained_items{boo_radar:1b} if entity @s[nbt=!{Inventory:[{tag:{Damage:2,luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_off
execute if data storage luigis_mansion:data current_state.current_data.obtained_items{boo_radar:1b} unless entity @e[tag=radar_detect,limit=1] if entity @s[nbt=!{Inventory:[{tag:{Damage:3,luigis_mansion:{namespace:"luigis_mansion",id:"game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_on
execute if data storage luigis_mansion:data current_state.current_data.obtained_items{boo_radar:1b} if entity @e[tag=radar_detect,limit=1] run function luigis_mansion:items/game_boy_horror/trigger_boo_radar
tag @e[tag=radar_detect] remove radar_detect
scoreboard players operation #temp Room = @s Room
execute as @e[tag=ghost,tag=!vacuumable,type=!minecraft:marker] unless entity @s[tag=hidden,tag=!can_spawn] if score @s Room = #temp Room run tag @s add radar_detect
scoreboard players reset #temp Room
execute unless entity @e[tag=radar_detect,distance=..8,limit=1] if entity @s[nbt=!{Inventory:[{tag:{Damage:3,luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] run function luigis_mansion:items/game_boy_horror/turn_radar_on
execute if entity @e[tag=radar_detect,distance=..8,limit=1] run function e3_demo:items/game_boy_horror/trigger_ghost_radar
tag @e[tag=radar_detect] remove radar_detect
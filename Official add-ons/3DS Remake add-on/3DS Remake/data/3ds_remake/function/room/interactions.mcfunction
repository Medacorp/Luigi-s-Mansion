#todelete - old furniture
execute if entity @s[tag=poltergust] if score #temp Room matches -11..-8 run function 3ds_remake:room/interactions_poltergust
execute if entity @s[tag=manual] if score #temp Room matches -11..-8 run function 3ds_remake:room/interactions_manual
execute if entity @s[tag=game_boy_horror_scan] if score #temp Room matches -11..-8 run function 3ds_remake:room/interactions_gameboy_horror_scan
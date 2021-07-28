title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
clear @s minecraft:filled_map{luigis_mansion:{id:"luigis_mansion:contest_reward_map"}}
execute in minecraft:overworld run teleport @s 795.0 77 -8.0 90 0
execute in minecraft:overworld positioned 795.0 75 -8.0 unless entity @e[distance=..0.7,tag=e_gadd,limit=1] run function luigis_mansion:spawn_entities/e_gadd
experience set @s 0 levels
execute if entity @a[nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:poltergust_3000"}}}]}] run function luigis_mansion:items/poltergust_3000/no_element
scoreboard players set @s Health 100
scoreboard players set #training GhostCaught 0
scoreboard players reset @s ResetMansion
scoreboard players reset @s Element
scoreboard players set @s TotalDamage 0
scoreboard players set @s LastTotalDamage 0
scoreboard players set @s Health 100
gamemode adventure @s[gamemode=spectator]
clear @s minecraft:brick
execute if entity @s[tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute unless entity @s[scores={Room=-4..-1}] run teleport @s 790 77 15 45 0
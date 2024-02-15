scoreboard players set #temp Move 20
execute unless entity @s[scores={Sound=0..}] run scoreboard players set @s Sound 4
execute if entity @s[tag=!spooky_bone] rotated ~ 0 run function luigis_mansion:entities/bone/move_forward
execute if entity @s[tag=spooky_bone] run function #luigis_mansion:entities/bone/spooky
execute if entity @e[distance=..0.7,tag=!spectator,tag=player] run tag @s[tag=!spooky_bone] add dead
execute if entity @s[tag=dead] run function luigis_mansion:entities/bone/hit
scoreboard players reset #temp GhostID
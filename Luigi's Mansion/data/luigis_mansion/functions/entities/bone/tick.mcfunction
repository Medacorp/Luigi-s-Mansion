scoreboard players set #temp Move 4
scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=mr_bones] if score @s GhostNr = #temp GhostNr run tag @s add this_mr_bones
execute if entity @s[tag=!spooky_bone] rotated ~ 0 run function luigis_mansion:entities/bone/move_forward
execute if entity @s[tag=spooky_bone] run function #luigis_mansion:entities/bone/spooky
scoreboard players reset #temp GhostNr
execute if entity @a[distance=..0.7,gamemode=!spectator] run tag @s[tag=!spooky_bone] add hit
execute if entity @s[tag=hit] run tag @e[tag=this_mr_bones] add laugh
execute if entity @s[tag=hit] run effect give @a[distance=..0.7,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if entity @s[tag=hit] run scoreboard players set @a[distance=..0.7,gamemode=!spectator] ForcedDamage 4
tag @s[tag=hit] add dead
tag @e[tag=this_mr_bones] remove this_mr_bones
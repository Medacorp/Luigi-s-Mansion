execute unless entity @s[scores={ActionTime=0..}] run scoreboard players set @s ActionTime 0
execute if entity @s[tag=key,tag=!rotated,tag=!display] run function luigis_mansion:entities/item/key_rotate

execute at @s run function #luigis_mansion:entities/item/physics

execute if entity @s[tag=picked_up] run function #luigis_mansion:entities/item/picked_up
tag @s[tag=picked_up] add dead
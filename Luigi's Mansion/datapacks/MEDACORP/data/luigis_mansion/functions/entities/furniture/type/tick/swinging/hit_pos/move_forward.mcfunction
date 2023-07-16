execute if score #forward Steps matches 1.. run teleport @s ^ ^ ^0.1
execute if score #forward Steps matches ..-1 run teleport @s ^ ^ ^-0.1
execute if score #forward Steps matches 1.. run scoreboard players remove #forward Steps 1
execute if score #forward Steps matches ..-1 run scoreboard players add #forward Steps 1
execute at @s unless score #forward Steps matches 0 run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/move_forward
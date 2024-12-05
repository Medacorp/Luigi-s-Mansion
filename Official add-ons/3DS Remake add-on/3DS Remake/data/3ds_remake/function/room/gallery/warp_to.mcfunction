title @s subtitle ""
execute if entity @s[tag=looking_at_map] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute unless block 767 2 -36 minecraft:barrier run function 3ds_remake:room/gallery/generate
function luigis_mansion:entities/luigi/move/execute {execute:"in minecraft:overworld",teleport:"772 2 -20 0 0"}
function luigis_mansion:items/poltergust_3000/remove_element
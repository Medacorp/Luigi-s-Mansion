$execute if entity @s[tag=luigi,tag=!wall_warp_teleported] run function luigis_mansion:entities/luigi/move/wall_warp_model {execute:"$(execute)",teleport:"$(teleport)"}
$execute if entity @s[tag=!luigi,tag=!wall_warp_teleported] run function luigis_mansion:entities/luigi/move/wall_warp_player {execute:"$(execute)",teleport:"$(teleport)"}
tag @s add wall_warp_teleported
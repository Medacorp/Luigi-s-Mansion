execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a[scores={Room=29}] ~ ~ ~ 1
function luigis_mansion:entities/luigi/move/teleport {teleport:"674 102 53"}
execute positioned 674 102 54 run function luigis_mansion:entities/luigi/animation/set/knockback/large
scoreboard players reset #graveyard_tree_trunk Searched
execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a[scores={Room=24}] ~ ~ ~ 1
function luigis_mansion:entities/luigi/move/teleport {teleport:"742 11 -40"}
execute positioned 742 11 -39 run function luigis_mansion:entities/luigi/animation/set/knockback/large
scoreboard players reset #hidden_room_hole Searched
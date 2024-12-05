execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a[scores={Room=23}] ~ ~ ~ 1
function luigis_mansion:entities/luigi/move/teleport {teleport:"741 11 46"}
execute positioned 741 11 47 run function luigis_mansion:entities/luigi/animation/set/knockback/large
scoreboard players reset #butlers_room_hole Searched
execute at @s run playsound luigis_mansion:entity.player.wind_warp player @a[scores={Room=28}] ~ ~ ~ 1
function luigis_mansion:entities/luigi/move/teleport {teleport:"668 102 -38"}
execute positioned 668 102 -39 run function luigis_mansion:entities/luigi/animation/set/knockback/large
scoreboard players reset #boneyard_dog_house Searched
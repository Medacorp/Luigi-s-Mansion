scoreboard players add @s ActionTime 1
function luigis_mansion:animations/clockwork_soldier/complain
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.clockwork_soldier.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=11}] run playsound luigis_mansion:entity.clockwork_soldier.complain hostile @a[tag=same_room] ~ ~ ~ 1
execute if score #mirrored Selected matches 0 run teleport @s ~ ~ ~ ~18 ~
execute if score #mirrored Selected matches 1 run teleport @s ~ ~ ~ ~-18 ~
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0
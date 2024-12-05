scoreboard players operation #temp Move = @s Move
function luigis_mansion:entities/shot_fire/move_forward
scoreboard players reset #temp Move
scoreboard players add @s ActionTime 1
tag @s[scores={ActionTime=200}] add dead
execute unless entity @s[scores={ID=-2147483648..}] at @s positioned ~-0.5 ~-1 ~-0.5 if entity @e[dx=0,dy=1,dz=0,tag=luigi,limit=1] run function luigis_mansion:entities/shot_fire/hit_player
execute at @s[tag=dead] run playsound luigis_mansion:item.poltergust_3000.shoot.fire.hit hostile @a[tag=same_room] ~ ~ ~ 1
tag @s add me
execute store result score #temp ID run scoreboard players get @s ID
execute at @s positioned ~ ~1.4 ~ run function luigis_mansion:items/poltergust_3000/fire
scoreboard players reset #interact PositionX
scoreboard players reset #interact PositionY
scoreboard players reset #interact PositionZ
tag @e[tag=hit_by_poltergust] remove hit_by_poltergust
scoreboard players reset #temp ID
tag @s remove me
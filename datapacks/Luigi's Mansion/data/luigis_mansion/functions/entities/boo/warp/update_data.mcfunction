function #luigis_mansion:entities/boo/warp/update_data
scoreboard players operation @e[tag=boo_marker,tag=new] Health = @s Health
scoreboard players operation @e[tag=boo_marker,tag=new] Room = @s Room
execute as @e[tag=boo_marker,tag=new] store result score @s HomeX run data get entity @s Pos[0] 100
execute as @e[tag=boo_marker,tag=new] store result score @s HomeY run data get entity @s Pos[1] 100
execute as @e[tag=boo_marker,tag=new] store result score @s HomeZ run data get entity @s Pos[2] 100
tag @e[tag=boo_marker,tag=new] remove new

playsound luigis_mansion:entity.boo.vanish hostile @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.8 0.8 1 1 ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]
tag @s add remove_from_existence
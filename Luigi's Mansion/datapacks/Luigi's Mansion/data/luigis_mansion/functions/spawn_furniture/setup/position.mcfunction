execute as @e[tag=this_entity,limit=1] store result score @s PosX run data get entity @s Pos[0] 10
execute as @e[tag=this_entity,limit=1] store result score @s PosY run data get entity @s Pos[1] 10
execute as @e[tag=this_entity,limit=1] store result score @s PosZ run data get entity @s Pos[2] 10
scoreboard players add @e[tag=this_entity,limit=1] PosY 14
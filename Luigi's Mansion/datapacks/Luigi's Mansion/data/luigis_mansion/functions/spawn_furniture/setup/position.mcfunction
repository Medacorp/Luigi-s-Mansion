execute as @e[tag=this_entity,limit=1] store result score @s PositionX run data get entity @s Pos[0] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionY run data get entity @s Pos[1] 10
execute as @e[tag=this_entity,limit=1] store result score @s PositionZ run data get entity @s Pos[2] 10
scoreboard players add @e[tag=this_entity,limit=1] PositionY 14
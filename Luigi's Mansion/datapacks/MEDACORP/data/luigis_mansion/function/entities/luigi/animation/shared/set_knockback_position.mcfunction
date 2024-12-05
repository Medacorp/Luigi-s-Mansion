summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result score @s KnockbackX run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] 100
execute store result score @s KnockbackZ run data get entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] 100
kill @e[type=minecraft:marker,tag=temp,limit=1]
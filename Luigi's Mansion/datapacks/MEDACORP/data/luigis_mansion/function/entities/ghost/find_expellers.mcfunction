execute store result score #temp ID run data get entity @s data.attacked_by[-1]
execute as @a if score #temp ID = @s ID run tag @s add expelling_me
scoreboard players reset #temp ID
data remove entity @s data.attacked_by[-1]
execute if data entity @s data.attacked_by[0] run function luigis_mansion:entities/ghost/find_expellers
execute store result score #temp ID run data get entity @s data.attacked_by[0]
data remove entity @s data.attacked_by[0]
execute as @a[tag=same_room,tag=!expelling_me] if score @s ID = #temp ID run tag @s add expelling_me
execute if data entity @s data.attacked_by[0] run function luigis_mansion:entities/fake_door/find_attackers
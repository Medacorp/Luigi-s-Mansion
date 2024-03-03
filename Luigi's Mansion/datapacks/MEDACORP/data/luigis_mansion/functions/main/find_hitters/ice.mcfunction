execute store result score #temp ID run data get storage luigis_mansion:data temp.ice[-1]
data remove storage luigis_mansion:data temp.ice[-1]
execute as @a[tag=expelling] if score #temp ID = @s ID run tag @s add freezing_me
execute if data storage luigis_mansion:data temp.ice[-1] run function luigis_mansion:main/find_hitters/ice
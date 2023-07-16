execute if score #mansion_type Selected matches 2 as @a[nbt={Dimension:"luigis_mansion:normal"}] at @s in e3_demo:original run teleport @s ~ ~ ~ ~ ~
execute if score #mansion_type Selected matches 2 in e3_demo:original run function e3_demo:room/original/detect
execute if score #mansion_type Selected matches 2 unless score #temp Time matches 1 in minecraft:overworld run function e3_demo:room/original/door/boo_woods_entrance
scoreboard players reset #temp Time
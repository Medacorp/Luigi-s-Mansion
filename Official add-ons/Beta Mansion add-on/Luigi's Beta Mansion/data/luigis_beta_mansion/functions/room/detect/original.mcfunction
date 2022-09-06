execute if score #mansion_type Selected matches 2 as @a[nbt={Dimension:"luigis_mansion:normal"}] at @s in luigis_beta_mansion:original run teleport @s ~ ~ ~ ~ ~
execute if score #mansion_type Selected matches 2 in luigis_beta_mansion:original run function luigis_beta_mansion:room/original/detect
execute if score #mansion_type Selected matches 2 unless score #temp Time matches 1 in minecraft:overworld run function luigis_beta_mansion:room/original/door/boo_woods_entrance
scoreboard players reset #temp Time
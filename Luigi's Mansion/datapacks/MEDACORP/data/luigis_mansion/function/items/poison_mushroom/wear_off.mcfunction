playsound luigis_mansion:item.poison_mushroom.wear_out player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s Shrunk 0
execute if entity @s[tag=flipped_gravity] unless block ~ ~1.88 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~-1.1 ~"}
execute as @a[tag=this_player,limit=1] run function luigis_mansion:items/poison_mushroom/readd_inventory
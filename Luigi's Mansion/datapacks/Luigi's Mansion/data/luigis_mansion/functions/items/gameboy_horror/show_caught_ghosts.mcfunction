function #luigis_mansion:items/gameboy_horror/show_caught_ghosts
playsound luigis_mansion:item.gameboy_horror.show_caught_ghosts player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s GBHChoice 0
scoreboard players enable @s GBHChoice
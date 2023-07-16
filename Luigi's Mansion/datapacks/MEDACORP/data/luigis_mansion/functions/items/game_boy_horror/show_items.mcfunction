function #luigis_mansion:items/game_boy_horror/show_items
playsound luigis_mansion:item.game_boy_horror.show_items player @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s GBHChoice 0
scoreboard players enable @s GBHChoice
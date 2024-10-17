playsound luigis_mansion:entity.boo.vanish hostile @a[tag=same_room] ~ ~ ~ 1
playsound luigis_mansion:entity.boo.warp hostile @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust{color:13421823,scale:1f} ~ ~1 ~ 0.3 0.3 0.3 0 30 normal @a[tag=same_room]
tag @s add remove_from_existence
tag @s add warped
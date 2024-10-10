execute if entity @s[tag=!vacuumable] run playsound luigis_mansion:item.poltergust_3000.vaporize player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust{color:11763711,scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove capture
tag @s add dead
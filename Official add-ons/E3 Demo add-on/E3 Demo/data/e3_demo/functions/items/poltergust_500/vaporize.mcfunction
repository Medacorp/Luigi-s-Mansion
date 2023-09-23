execute if entity @s[tag=!vacuumable] run playsound e3_demo:item.poltergust_500.vaporize player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust 0.7 1 1 1 ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove capture
tag @s add dead
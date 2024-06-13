execute if entity @s[tag=!portrait_ghost_pop] run playsound e3_demo:item.poltergust_500.catch player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=portrait_ghost_pop] run playsound e3_demo:item.poltergust_500.catch_portrait_ghost player @a[tag=same_room] ~ ~ ~ 1
particle minecraft:dust{color:[0.7f,1f,1f],scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove captured
tag @s[tag=!item] add dead
execute unless entity @s[tag=vacuumable] at @a[tag=me,scores={Shrunk=0},tag=!gooigi,limit=1] run playsound e3_demo:entity.player.capture player @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[tag=vacuumable] at @a[tag=me,scores={Shrunk=1..},tag=!gooigi,limit=1] run playsound e3_demo:entity.player.capture player @a[tag=same_room] ~ ~ ~ 1 2
execute unless entity @s[tag=vacuumable] run scoreboard players set @a[tag=me,tag=!gooigi,limit=1] Sound 20
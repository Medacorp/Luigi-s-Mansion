execute if entity @s[tag=!portrait_ghost_pop] run playsound e3_demo:item.poltergust_500.catch player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=portrait_ghost_pop] run playsound e3_demo:item.poltergust_500.catch_portrait_ghost player @a[tag=same_room] ~ ~ ~ 1
execute at @s run particle minecraft:dust{color:11730943,scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove captured
tag @s[tag=!item] add dead
tag @e[tag=me,limit=1] add capturing_ghost
execute unless entity @s[tag=vacuumable] as @e[tag=me,limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"e3_demo:entity.player.capture",medium:"e3_demo:entity.player.capture",low:"e3_demo:entity.player.capture",duration:20}
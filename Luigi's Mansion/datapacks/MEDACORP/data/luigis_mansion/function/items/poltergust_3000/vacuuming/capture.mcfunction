execute if entity @s[tag=!portrait_ghost_pop] run playsound luigis_mansion:item.poltergust_3000.catch player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=portrait_ghost_pop] run playsound luigis_mansion:item.poltergust_3000.catch_portrait_ghost player @a[tag=same_room] ~ ~ ~ 1
execute at @s run particle minecraft:dust{color:11730943,scale:1f} ~ ~ ~ 0.2 0.2 0.2 1 10
tag @s remove captured
tag @s[tag=!item] add dead
execute unless entity @s[tag=vacuumable] as @e[tag=me,limit=1] run function luigis_mansion:entities/luigi/make_sound/force {high:"luigis_mansion:entity.player.capture.high_health",medium:"luigis_mansion:entity.player.capture.high_health",low:"luigis_mansion:entity.player.capture.low_health",duration:20}
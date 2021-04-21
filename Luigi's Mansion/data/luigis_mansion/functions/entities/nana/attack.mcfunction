execute at @e[tag=wool,tag=in_vacuum,limit=1,sort=nearest] run tag @p[gamemode=!spectator] add me
execute facing entity @a[tag=me,limit=1] feet run teleport @s ~ ~ ~ ~ ~10
playsound luigis_mansion:entity.nana.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s anchored eyes run summon minecraft:armor_stand ^ ^-0.3 ^0.3 {CustomName:'{"translate":"luigis_mansion:entity.shot_needle"}',Fire:32767s,Marker:1b,Invulnerable:1b,Tags:["shot_needle","new"],ArmorItems:[{},{},{},{id:"minecraft:iron_nugget",Count:1b}],Invisible:1b,DisabledSlots:2039583,Small:1b}
scoreboard players set @e[tag=shot_needle,tag=new,limit=1] Move 5
execute as @e[tag=shot_needle,tag=new,limit=1] at @s rotated as @e[tag=nana,limit=1] run teleport @s ~ ~ ~ ~ ~
tag @e[tag=shot_needle,tag=new,limit=1] remove new
execute facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
tag @a[tag=me,limit=1] remove me
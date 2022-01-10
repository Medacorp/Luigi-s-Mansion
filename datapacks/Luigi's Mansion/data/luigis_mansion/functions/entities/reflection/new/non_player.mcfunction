summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1 
data modify entity @e[tag=this_reflection,tag=new,limit=1] Invisible set from entity @s Invisible
data modify entity @e[tag=this_reflection,tag=new,limit=1] Marker set from entity @s Marker
scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,limit=1] remove new
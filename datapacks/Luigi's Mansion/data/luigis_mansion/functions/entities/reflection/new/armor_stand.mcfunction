summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"],NoGravity:1b}

execute if score #temp MirrorX matches -2147483648.. run scoreboard players operation #temp MirrorX *= #100 Constants
execute if score #temp MirrorX matches -2147483648.. run scoreboard players add #temp MirrorX 50
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players operation #temp MirrorZ *= #100 Constants
execute if score #temp MirrorZ matches -2147483648.. run scoreboard players add #temp MirrorZ 50

execute if score #temp MirrorX matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/x
execute if score #temp MirrorZ matches -2147483648.. as @e[tag=temp,limit=1] run function luigis_mansion:entities/reflection/position/z

execute at @e[tag=temp,limit=1] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],Marker:1b,NoGravity:1b}
kill @e[tag=temp,limit=1]
scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1 
data modify entity @e[tag=this_reflection,tag=new,limit=1] Invisible set from entity @s Invisible
scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] Room = @s Room
scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,limit=1] remove new
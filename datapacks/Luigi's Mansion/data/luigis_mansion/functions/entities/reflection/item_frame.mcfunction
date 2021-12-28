tag @s remove mirrored
scoreboard players operation #temp ReflectionNr = @s ReflectionNr
execute if score @s ReflectionNr matches 1.. as @e[type=minecraft:item_frame,tag=reflection,tag=!found_owner] if score @s ReflectionNr = #temp ReflectionNr run tag @s add this_reflection
execute if score @s ReflectionNr matches 1.. unless entity @e[tag=this_reflection,limit=1] run scoreboard players reset @s ReflectionNr
tag @e[tag=this_reflection,limit=1] add immobile
execute store result score #temp HomeX run data get entity @s Pos[0] 100
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute unless score @s ReflectionNr matches 1.. run function luigis_mansion:entities/reflection/spawn_item_frame
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
execute unless score @s ReflectionNr matches 1.. run scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1
execute unless score @s ReflectionNr matches 1.. run data modify entity @e[tag=this_reflection,tag=new,limit=1] Silent set from entity @s Silent
execute unless score @s ReflectionNr matches 1.. run data modify entity @e[tag=this_reflection,tag=new,limit=1] Invisible set from entity @s Invisible
execute unless score @s ReflectionNr matches 1.. run data modify entity @e[tag=this_reflection,tag=new,limit=1] Fixed set from entity @s Fixed
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @e[tag=this_reflection,limit=1] Room = @s Room
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,tag=!new,limit=1] add found_owner
tag @e[tag=this_reflection,limit=1] remove new

data modify entity @e[tag=this_reflection,limit=1] ItemRotation set from entity @s ItemRotation
data modify entity @e[tag=this_reflection,limit=1] Item set from entity @s Item
execute as @e[tag=this_reflection,limit=1] if data entity @s Item.tag.map run function luigis_mansion:add_ons/mirror_paintings
tag @e[tag=this_reflection,limit=1] remove this_reflection
scoreboard players reset #temp ReflectionNr
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
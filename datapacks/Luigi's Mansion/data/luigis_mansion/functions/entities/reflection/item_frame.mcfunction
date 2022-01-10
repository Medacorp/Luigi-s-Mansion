tag @s remove mirrored
scoreboard players operation #temp ReflectionNr = @s ReflectionNr
execute if score @s ReflectionNr matches 1.. as @e[type=minecraft:item_frame,tag=reflection,tag=!found_owner] if score @s ReflectionNr = #temp ReflectionNr run tag @s add this_reflection
execute if score @s ReflectionNr matches 1.. unless entity @e[tag=this_reflection,limit=1] run scoreboard players reset @s ReflectionNr
tag @e[tag=this_reflection,limit=1] add immobile
tag @e[tag=this_reflection,limit=1] add found_owner
execute store result score #temp HomeX run data get entity @s Pos[0] 100
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute unless score @s ReflectionNr matches 1.. run function luigis_mansion:entities/reflection/new/item_frame

data modify entity @e[tag=this_reflection,limit=1] ItemRotation set from entity @s ItemRotation
data modify entity @e[tag=this_reflection,limit=1] Item set from entity @s Item
execute as @e[tag=this_reflection,limit=1] if data entity @s Item.tag.map run function luigis_mansion:add_ons/mirror_paintings

tag @e[tag=this_reflection,limit=1] remove this_reflection
scoreboard players reset #temp ReflectionNr
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp HomeX
scoreboard players reset #temp HomeZ
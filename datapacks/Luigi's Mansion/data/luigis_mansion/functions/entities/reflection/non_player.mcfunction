tag @s remove mirrored
scoreboard players operation #temp ReflectionNr = @s ReflectionNr
execute if score @s ReflectionNr matches 1.. as @e[type=minecraft:armor_stand,tag=reflection,tag=!found_owner] if score @s ReflectionNr = #temp ReflectionNr run tag @s add this_reflection
execute if score @s ReflectionNr matches 1.. unless entity @e[tag=this_reflection,limit=1] run scoreboard players reset @s ReflectionNr
execute if entity @s[tag=immobile] run tag @e[tag=this_reflection,limit=1] add immobile
execute unless score @s ReflectionNr matches 1.. run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
execute unless score @s ReflectionNr matches 1.. run scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1 
execute unless score @s ReflectionNr matches 1.. run data modify entity @e[tag=this_reflection,tag=new,limit=1] Invisible set from entity @s Invisible
execute unless score @s ReflectionNr matches 1.. run data modify entity @e[tag=this_reflection,tag=new,limit=1] Marker set from entity @s Marker
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,tag=!new,limit=1] add found_owner
tag @e[tag=this_reflection,limit=1] remove new

data modify entity @e[tag=this_reflection,limit=1] Pose set from entity @s Pose
data modify entity @e[tag=this_reflection,limit=1] Small set from entity @s Small
scoreboard players operation @e[tag=this_reflection,limit=1] Room = @s Room
data modify entity @e[tag=this_reflection,limit=1] ArmorItems set from entity @s[tag=!held_item] ArmorItems
execute if entity @s[tag=held_item,tag=left_arm] at @s as @e[tag=right_arm,tag=held_item] if score @s ID = @e[tag=held_item,tag=left_arm,distance=..0.1,limit=1] ID run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3] set from entity @s ArmorItems[3]
execute if entity @s[tag=!held_item,tag=left_arm] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 2
execute if entity @s[tag=!held_item,tag=right_arm] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 3
execute if entity @s[tag=!held_item,tag=left_leg] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 2
execute if entity @s[tag=!held_item,tag=right_leg] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 3
data modify entity @e[tag=this_reflection,limit=1] HandItems set from entity @s HandItems
execute if entity @s[tag=!portrait_ghost,tag=!hidden,tag=!visible,nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/ghost_reflection

execute store result score #temp HomeX run data get entity @s Pos[0] 100
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ

execute as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/generic
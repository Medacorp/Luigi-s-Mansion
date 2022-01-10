tag @s remove mirrored
scoreboard players operation #temp ReflectionNr = @s ReflectionNr
execute if score @s ReflectionNr matches 1.. as @e[type=minecraft:armor_stand,tag=reflection,tag=!found_owner] if score @s ReflectionNr = #temp ReflectionNr run tag @s add this_reflection
execute if score @s ReflectionNr matches 1.. unless entity @e[tag=this_reflection,limit=1] run scoreboard players reset @s ReflectionNr
execute if entity @s[tag=immobile] run tag @e[tag=this_reflection,limit=1] add immobile
tag @e[tag=this_reflection,limit=1] add found_owner
execute store result score #temp HomeX run data get entity @s Pos[0] 100
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
execute unless score @s ReflectionNr matches 1.. run function luigis_mansion:entities/reflection/new/non_player

data modify entity @e[tag=this_reflection,limit=1] Pose set from entity @s Pose
data modify entity @e[tag=this_reflection,limit=1] Small set from entity @s Small
scoreboard players operation @e[tag=this_reflection,limit=1] Room = @s Room
data modify entity @e[tag=this_reflection,limit=1] ArmorItems set from entity @s ArmorItems
execute if entity @s[tag=!held_item,tag=left_arm] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 2
execute if entity @s[tag=!held_item,tag=right_arm] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 3
execute if entity @s[tag=!held_item,tag=left_leg] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 2
execute if entity @s[tag=!held_item,tag=right_leg] run data modify entity @e[tag=this_reflection,limit=1] ArmorItems[3].tag.Damage set value 3
execute if entity @s[tag=poltergust_body] as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/poltergust_body
data modify entity @e[tag=this_reflection,limit=1] HandItems set from entity @s HandItems
execute if entity @s[tag=!portrait_ghost,tag=!hidden,tag=!visible,tag=!vacuumable,nbt={ArmorItems:[{id:"minecraft:oak_button"}]}] as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/ghost_reflection


execute as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/generic
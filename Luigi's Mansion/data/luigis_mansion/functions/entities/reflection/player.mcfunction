tag @s remove mirrored
scoreboard players operation #temp ReflectionNr = @s ReflectionNr
execute if score @s ReflectionNr matches 1.. as @e[type=minecraft:armor_stand,tag=reflection,tag=!found_owner] if score @s ReflectionNr = #temp ReflectionNr run tag @s add this_reflection
execute if score @s ReflectionNr matches 1.. unless entity @e[tag=this_reflection,limit=1] run scoreboard players reset @s ReflectionNr
execute unless score @s ReflectionNr matches 1.. run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:entity.reflection"}',Tags:["reflection","this_reflection","new"],Pose:{Head:[0.0f,0.0f,0.01f]},ShowArms:1b,NoBasePlate:1b,NoGravity:1b}
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @e[tag=this_reflection,tag=new,limit=1] ReflectionNr > @e[scores={ReflectionNr=1..}] ReflectionNr
execute unless score @s ReflectionNr matches 1.. run scoreboard players add @e[tag=this_reflection,tag=new,limit=1] ReflectionNr 1 
execute unless score @s ReflectionNr matches 1.. run scoreboard players operation @s ReflectionNr = @e[tag=this_reflection,tag=new,limit=1] ReflectionNr
tag @e[tag=this_reflection,limit=1] remove new
tag @e[tag=this_reflection,limit=1] add found_owner

loot replace entity @e[tag=this_reflection,limit=1] armor.head 1 loot luigis_mansion:gameplay/get_player_name
data modify entity @e[tag=this_reflection,limit=1] HandItems set value []
data modify entity @e[tag=this_reflection,limit=1] HandItems[0] set from entity @s SelectedItem
data modify entity @e[tag=this_reflection,limit=1] HandItems[1] set from entity @s Inventory[{Slot:-106b}]
data modify entity @e[tag=this_reflection,limit=1] Pose.Head[0] set from entity @s Rotation[1]

execute store result score #temp HomeX run data get entity @s Pos[0] 100
execute store result score #temp HomeZ run data get entity @s Pos[2] 100
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ

execute as @e[tag=this_reflection,limit=1] run function luigis_mansion:entities/reflection/generic
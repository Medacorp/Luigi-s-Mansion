summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,NoGravity:1b,Tags:["item","key","eternal","this_entity"],DisabledSlots:2039583}
data modify storage luigis_mansion:data keys set value []
data modify storage luigis_mansion:data keys set from storage luigis_mansion:data current_state.current_data.obtained_keys
execute as @e[tag=key,tag=!this_entity,tag=!display] run data modify storage luigis_mansion:data keys append from entity @s Tags[]
execute if data storage luigis_mansion:data keys[-1] run function luigis_mansion:other/drop_loot/loop/key/search_for_key
data remove storage luigis_mansion:data keys
scoreboard players reset #temp Money
data modify entity @e[tag=this_entity,limit=1] Tags append from storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].door
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].rotation run tag @e[tag=this_entity,limit=1] add rotated
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].rotation
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].variant store result score #temp Money run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].variant
execute if score #temp Money matches 1 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 16
execute if score #temp Money matches 2 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 17
execute if score #temp Money matches 3 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 18
execute if score #temp Money matches 4 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 19
scoreboard players reset #temp Money
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0]
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0] run function luigis_mansion:other/drop_loot/loop/key
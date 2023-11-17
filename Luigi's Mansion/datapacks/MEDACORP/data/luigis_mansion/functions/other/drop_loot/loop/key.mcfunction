$execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:[$(door)]} unless entity @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"key",variant:$(door)}}}]},limit=1] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,0.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{luigis_mansion:{namespace:"luigis_mansion",id:"key",physics_offset:1.1d,pick_up_range:0.7f,variant:$(door)},Unbreakable:1b,Damage:5,CustomModelData:15}}],Small:1b,NoGravity:1b,Tags:["item","generic","no_shrunk","eternal","affected_by_vacuum","this_entity"],DisabledSlots:2039583}
execute unless entity @e[tag=this_entity,limit=1] if score #debug_messages Selected matches 1.. run tellraw @a {"translate":"luigis_mansion:message.debug.format","with":[{"translate":"luigis_mansion:message.debug","color":"gold"},{"translate":"luigis_mansion:message.debug.loot_spawn_fail.key","color":"red"}]}
execute store result entity @e[tag=this_entity,limit=1] Rotation[0] float 1 run random value -180..179
execute store result entity @e[tag=this_entity,limit=1] Rotation[1] float 1 run random value -90..0
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 7
execute unless data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].silent if entity @e[tag=this_entity,limit=1] run playsound luigis_mansion:item.key.spawn player @a ~ ~ ~ 1
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].rotation run data modify entity @e[tag=this_entity,limit=1] Rotation set from storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].rotation
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].variant store result score #temp Money run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0].variant
execute if score #temp Money matches 1 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 16
execute if score #temp Money matches 2 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 17
execute if score #temp Money matches 3 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 18
execute if score #temp Money matches 4 run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].tag.CustomModelData set value 19
scoreboard players reset #temp Money
tag @e[tag=this_entity,limit=1] remove this_entity
data remove storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0]
execute if data storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0] run function luigis_mansion:other/drop_loot/loop/key with storage luigis_mansion:data drop_loot.contents.luigis_mansion.key[0]
summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Marker:0b,Invisible:1b,CustomName:'{"type":"translatable","translate":"entity.minecraft.player"}',Tags:["game_boy_horror_marker","no_reflection","same_room_players_only","this_entity"],CustomNameVisible:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:item_model":"luigis_mansion:entity/luigi","minecraft:unbreakable":{},"minecraft:custom_model_data":{flags:[B;0b,0b],floats:[0f],strings:["default"]},"minecraft:dyed_color":{rgb:37129},"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"game_boy_horror_marker"}}}}],DisabledSlots:2039583}
teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ ~
scoreboard players operation #temp ID = @s ID
execute as @e[tag=game_boy_horror_marker,tag=!this_entity] if score @s ID = #temp ID run tag @e[tag=this_entity,limit=1] add remove_from_existence
scoreboard players operation @e[tag=this_entity,limit=1] LastFloor = @s LastFloor
scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
scoreboard players operation @e[tag=this_entity,limit=1] ID = #temp ID
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:dyed_color".rgb set from entity @s ArmorItems[3].components."minecraft:dyed_color".rgb
execute as @e[tag=head,tag=model_piece] if score #temp ID = @s ID run data modify entity @e[tag=this_entity,limit=1] ArmorItems[3].components."minecraft:custom_model_data".flags[1] set from entity @s ArmorItems[3].components."minecraft:custom_model_data".flags[1]
scoreboard players reset #temp ID
data modify entity @e[tag=this_entity,limit=1] CustomName set from entity @s data.full_player_name
tag @e[tag=this_entity,limit=1] remove this_entity
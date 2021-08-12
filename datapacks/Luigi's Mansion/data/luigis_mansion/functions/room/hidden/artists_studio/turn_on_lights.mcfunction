execute unless data storage luigis_mansion:data current_state.current_data.obtained_keys{secret_altar:1b} run summon minecraft:armor_stand 701 29.2 89 {CustomName:'{"translate":"luigis_mansion:item.key"}',Pose:{Head:[0.0f,-180.0f,0.01f]},Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:5,CustomModelData:19}}],Small:1b,Tags:["item","key","eternal","secret_altar","rotated","no_spawn_sound"],Rotation:[180.0f,0.0f],DisabledSlots:2039583}
data modify entity @e[x=701.5,y=30,z=89.5,distance=..0.7,limit=1,type=minecraft:item_frame] Item.tag.map set value 249
data modify storage luigis_mansion:data current_state.current_data.rooms.artists_studio merge value {cleared:1b}
function #luigis_mansion:room/hidden/artists_studio/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{boos:[{}],technical_data:{released_boos_talk:1b}} run function luigis_mansion:room/hidden/artists_studio/load_boos
execute as @e[scores={Room=71},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] run tag @s add remove_from_existence
scoreboard players reset #artists_studio Wave
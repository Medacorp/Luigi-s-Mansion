execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["secret_altar"]} run data modify storage luigis_mansion:data entity set value {room:71,rotation:[0.0f,0.0f]}
execute unless data storage luigis_mansion:data current_state.current_data{obtained_keys:["secret_altar"]} positioned 701 30.3 -74 run function luigis_mansion:spawn_entities/item/spade_key {door:"secret_altar"}
data modify entity @e[x=701.5,y=30,z=-73.5,distance=..0.7,limit=1,type=minecraft:item_frame] Item.components."minecraft:map_id" set value 80
data modify storage luigis_mansion:data current_state.current_data.rooms.the_artists_studio merge value {cleared:1b}
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b} run function #3ds_remake:room/hidden/the_artists_studio/turn_lights/on
execute if data storage luigis_mansion:data current_state.current_data{blackout:0b,boos:[{}],obtained_items:{boo_radar:1b}} run function 3ds_remake:room/hidden/the_artists_studio/load_boos
execute as @e[scores={Room=71},tag=!no_delete_on_room_clear] unless entity @s[tag=!ghost,tag=!optional_ghost] unless entity @s[nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run tag @s add remove_from_existence
execute as @e[scores={Room=71},nbt={data:{entity:{namespace:"luigis_mansion",id:"haunted_object"}}}] run function luigis_mansion:entities/haunted_object/reset
scoreboard players reset #the_artists_studio Wave
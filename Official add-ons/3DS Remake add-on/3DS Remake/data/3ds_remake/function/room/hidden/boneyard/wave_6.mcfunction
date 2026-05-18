data modify storage luigis_mansion:data entity set value {room:28,spawn:1b,tags:["mr_bones"]}
execute if data storage luigis_mansion:data entity if predicate luigis_mansion:boneyard/alternate_ghost_position_chance positioned 674 102 42 run function luigis_mansion:spawn_entities/ghost/mr_bones
execute if data storage luigis_mansion:data entity if predicate luigis_mansion:boneyard/alternate_ghost_2_position_chance positioned 677 102 41 run function luigis_mansion:spawn_entities/ghost/mr_bones
execute if data storage luigis_mansion:data entity positioned 677 102 54.0 run function luigis_mansion:spawn_entities/ghost/mr_bones
tellraw @a {type:"translatable",translate:"chat.type.text",with:[{type:"translatable",translate:"luigis_mansion:entity.mr_bones",color:"green"},{type:"translatable",translate:"luigis_mansion:message.mr_bones"}]}
scoreboard players set #boneyard Wave 6
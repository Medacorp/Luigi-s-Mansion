data modify storage luigis_mansion:data entity set value {spawn:1b}
execute positioned 674 102 -29 run function luigis_mansion:spawn_entities/ghost/mr_bones
tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.mr_bones","color":"green"},{"translate":"luigis_mansion:message.mr_bones"}]}
scoreboard players set #boneyard Wave 6
tag @s add gooigi
scoreboard players set @s Health 50
scoreboard players set @s MaxHealth 50
scoreboard players reset @s MaxHealthTime
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"3ds_remake:entity.gooigi","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gooigi"}]}
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"3ds_remake:entity.gooigi","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gooigi.respawn"}]}
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"3ds_remake:entity.gooigi","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gooigi.fire"}]}
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"3ds_remake:entity.gooigi","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gooigi.talk"}]}
tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"3ds_remake:entity.gooigi","color":"green"},{"type":"translatable","translate":"3ds_remake:message.gooigi.door"}]}
function luigis_mansion:entities/player/run_command_as_model {command:"tag @s add remove_from_existence"}
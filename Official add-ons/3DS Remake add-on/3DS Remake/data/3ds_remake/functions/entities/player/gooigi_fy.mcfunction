tag @s add gooigi
scoreboard players set @s Health 50
scoreboard players set @s MaxHealth 50
scoreboard players reset @s MaxHealthTime
tellraw @a {"translate":"chat.type.text","with":[{"translate":"3ds_remake:entity.gooigi","color":"green"},{"translate":"3ds_remake:message.gooigi"}]}
tellraw @a {"translate":"chat.type.text","with":[{"translate":"3ds_remake:entity.gooigi","color":"green"},{"translate":"3ds_remake:message.gooigi.respawn"}]}
tellraw @a {"translate":"chat.type.text","with":[{"translate":"3ds_remake:entity.gooigi","color":"green"},{"translate":"3ds_remake:message.gooigi.fire"}]}
tellraw @a {"translate":"chat.type.text","with":[{"translate":"3ds_remake:entity.gooigi","color":"green"},{"translate":"3ds_remake:message.gooigi.talk"}]}
tellraw @a {"translate":"chat.type.text","with":[{"translate":"3ds_remake:entity.gooigi","color":"green"},{"translate":"3ds_remake:message.gooigi.door"}]}
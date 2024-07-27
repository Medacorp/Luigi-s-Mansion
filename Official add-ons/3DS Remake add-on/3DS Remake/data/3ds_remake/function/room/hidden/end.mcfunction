execute unless score #loaded_exterior Selected matches -1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"luigis_mansion:message.load_mansion.start"}]}
execute unless score #loaded_exterior Selected matches -1 in minecraft:overworld run schedule function luigis_mansion:room/load_exterior/empty 5
execute as @a run function luigis_mansion:entities/player/animation/set/none
tag @a remove wall_warp
execute as @a run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
data remove storage luigis_mansion:data dialogs[{room:-3}]
data modify storage luigis_mansion:data dialogs append value {name:{namespace:"luigis_mansion",id:"ghost_portrificationizer_room/ending"},room:-3,progress:-1}
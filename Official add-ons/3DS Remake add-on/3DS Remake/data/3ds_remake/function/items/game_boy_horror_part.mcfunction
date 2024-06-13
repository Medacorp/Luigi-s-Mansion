tag @s add me
execute unless data storage luigis_mansion:data current_state.current_data{no_collect_animation:["3ds_remake:game_boy_horror_part"]} as @a[tag=collector,limit=1] run function luigis_mansion:entities/player/animation/set/collect_item with entity @e[tag=me,limit=1] ArmorItems[3]
tag @s remove me
data merge storage 3ds_remake:data {obtained_gameboy_horror_part:1b}
execute if score #players Totals matches 1 run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.player.game_boy_horror_part"}]}
execute if score #players Totals matches 2.. run tellraw @a {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.mansion","color":"green"},{"type":"translatable","translate":"3ds_remake:message.player.game_boy_horror_part.more"}]}
playsound 3ds_remake:item.game_boy_horror_part.obtain player @a[tag=same_room] ~ ~ ~ 1
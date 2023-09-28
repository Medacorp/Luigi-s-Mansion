execute unless score #the_twins_room Time matches 1.. if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.3"}]}
execute unless score #the_twins_room Time matches 1.. if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.henry","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.3.more"}]}
execute if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"luigis_mansion:message.henry.scan"}'}}
execute if entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/henry
tag @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"henry"}}]}] add hide_and_seek
tag @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"henry"}}]}] add appear
scoreboard players set @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"henry"}}]}] Room 49
execute unless score #the_twins_room Time matches 1.. run tag @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"henry"}}]}] add next_wave

execute unless score #the_twins_room Time matches 1.. unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] if score #players Totals matches 1 run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.2"}]}
execute unless score #the_twins_room Time matches 1.. unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] if score #players Totals matches 2.. run tellraw @a {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.orville","color":"green"},{"translate":"luigis_mansion:dialog.twins.game.2.more"}]}
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] run data modify storage luigis_mansion:data entity set value {scan_message:{sender:"me",message:'{"translate":"3ds_remake:message.orville.scan"}'}}
execute unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]},limit=1] run function luigis_mansion:spawn_entities/portrait_ghost/orville
tag @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]}] add hide_and_seek
tag @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]}] add appear
scoreboard players set @e[distance=..0.7,nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"orville"}}]}] Room 49

execute unless score #the_twins_room Time matches 1.. run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=49}] ~ ~ ~ 10000
execute unless score #the_twins_room Time matches 1.. run scoreboard players set @a[scores={Room=49,Music=..30}] Music 30
scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad1Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=137..}] Dialog 1
scoreboard players add @s[scores={Dialog=..136}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..138}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
tag @s[scores={Dialog=1}] add explaining
execute if entity @s[scores={Dialog=1..137}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
scoreboard players set @s[scores={Dialog=1}] AnimationProgress 0
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat"}]}
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.more"}]}
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.boos","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.boos.more"}]}
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_1.repeat.blackout"}]}
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run scoreboard players add @s Dialog 56
execute if entity @s[scores={Dialog=1}] unless data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} if data storage luigis_mansion:data current_state.current_data.technical_data{released_boos:1b} run scoreboard players add @s Dialog 16
execute if entity @s[scores={Dialog=1}] if data storage luigis_mansion:data current_state.current_data.rooms.breaker_room{cleared:1b} run scoreboard players add @s Dialog 24
tag @s[scores={Dialog=136}] remove explaining
scoreboard players set @s[scores={Dialog=136}] AnimationProgress 0
execute if entity @s[scores={Dialog=136}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:message.save.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.no","clickEvent":{"action":"run_command","value":"/trigger Toad1Choice set 2"}}]}
execute if entity @s[scores={Dialog=136}] run scoreboard players enable @a[tag=same_room] Toad1Choice
execute if entity @s[scores={Dialog=138}] as @a[scores={Toad1Choice=1},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=138}] run scoreboard players set @a Toad1Choice 0
execute if entity @s[scores={Dialog=138}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=138}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad1Choice=0..}] Toad1Choice
scoreboard players set @s[tag=!talk] Dialog 0
scoreboard players set @s[tag=!talk,tag=explaining] AnimationProgress 0
tag @s[tag=!talk] remove explaining
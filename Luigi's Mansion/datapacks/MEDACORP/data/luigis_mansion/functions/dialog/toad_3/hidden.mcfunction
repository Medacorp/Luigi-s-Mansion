scoreboard players set #freeze_timer Selected 1
execute if entity @a[scores={Toad3Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=121..}] Dialog 1
scoreboard players add @s[scores={Dialog=..120}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..461}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..462}] as @a[tag=same_room] run function luigis_mansion:other/music/set/toad
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.toad.cry_0 neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.1"}]}
execute if entity @s[scores={Dialog=120..121}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
execute if entity @s[scores={Dialog=120}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes","color":"green","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.no","clickEvent":{"action":"run_command","value":"/trigger Toad3Choice set 2"}}]}
execute if entity @s[scores={Dialog=120}] run scoreboard players enable @a[tag=same_room] Toad3Choice
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=1}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/enthusiastic
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=1..}] as @a[scores={Toad3Choice=0}] run trigger Toad3Choice set 0
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=1}] run data remove entity @s data.animation
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=1}] run tag @s add turning_on_lights
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=1}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=142}] if entity @a[scores={Toad3Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.1","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=142}] if entity @a[scores={Toad3Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.1.more"}]}
execute if entity @s[scores={Dialog=214}] if entity @a[scores={Toad3Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.2"}]}
execute if entity @s[scores={Dialog=214}] if entity @a[scores={Toad3Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.yes.2.more"}]}
execute if entity @s[scores={Dialog=422}] if entity @a[scores={Toad3Choice=1}] run function luigis_mansion:room/hidden/washroom_1/clear
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=2}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=2}] run advancement grant @a[scores={Toad3Choice=2}] only luigis_mansion:challenges/go_help_yourself washroom_1
execute if entity @s[scores={Dialog=122}] if entity @a[scores={Toad3Choice=2}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.toad","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.toad_3.no.1"}]}
execute if entity @s[scores={Dialog=146}] if entity @a[scores={Toad3Choice=2}] run scoreboard players set @s Dialog 462
execute if entity @s[scores={Dialog=462}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=462}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
tag @s[tag=!talk] remove turning_on_lights
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] run scoreboard players reset @a[scores={Toad3Choice=0..}] Toad3Choice
data remove entity @s[tag=!talk,scores={Dialog=422..}] data.animation
data modify entity @s[tag=!talk,scores={Dialog=..421}] data.animation set value {namespace:"luigis_mansion",id:"cry"}
scoreboard players set @s[tag=!talk] Dialog 0
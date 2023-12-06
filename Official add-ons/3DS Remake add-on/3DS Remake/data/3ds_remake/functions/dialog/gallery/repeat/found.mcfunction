scoreboard players add @s Dialog 1
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=1..419}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.gallery.repeat.after.1"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.suku_suku_ck_ck_yahboh_yahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=128}] as @a at @s run playsound 3ds_remake:item.game_boy_horror.install_part neutral @s ~ ~ ~ 1
execute if entity @s[scores={Dialog=168}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.gallery.repeat.after.2","with":[{"type":"selector","selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=168}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"3ds_remake:dialog.gallery.repeat.after.2.more"}]}
execute if entity @s[scores={Dialog=168}] run playsound luigis_mansion:entity.e_gadd.talk.hey_hey_suu_dehkooroo_hah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=480}] run data merge storage 3ds_remake:data {shown_gameboy_horror_part:1b}
execute if entity @s[scores={Dialog=480}] run data modify storage luigis_mansion:data rooms.gallery merge value {cleared:1b}
execute if entity @s[scores={Dialog=480}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=480}] remove talk
scoreboard players set @s[tag=!talk] Dialog 0
data remove entity @s[tag=!talk] data.animation
scoreboard players set @s[tag=!talk] AnimationProgress 0
execute if entity @a[scores={EGaddUndergroundLabChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
execute if entity @a[scores={MansionChoice=0..},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
execute if entity @a[scores={MansionChoice=..-2},limit=1] run scoreboard players add @s[scores={Dialog=57..}] Dialog 1
scoreboard players add @s[scores={Dialog=..56}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add underground_lab_dialog
execute if entity @s[scores={Dialog=1}] if score #loaded_exterior Selected matches -1 unless score #mansion_type Selected matches -1 run tag @s add no_mansion
data modify entity @s[scores={Dialog=1}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=1..}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.1","with":[{"type":"selector","selector":"@a[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.1.more"}]}
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:entity.e_gadd.talk.luigi neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=56..57}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
scoreboard players set @s[scores={Dialog=56}] AnimationProgress 0
execute if entity @s[tag=!no_mansion] run function #luigis_mansion:mansion_options
execute if entity @s[scores={Dialog=56}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.training","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.gallery","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 2"}},{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.portrificationizer","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 3"}},{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 4"}},{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:message.save.yes","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 5"}},{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.nowhere","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 6"}}]}
execute if entity @s[scores={Dialog=56}] run scoreboard players set @a[tag=same_room] MansionChoice -1
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] MansionChoice
execute if entity @s[scores={Dialog=56}] run scoreboard players enable @a[tag=same_room] EGaddUndergroundLabChoice
data remove entity @s[scores={Dialog=56}] data.animation
data modify entity @s[scores={Dialog=58}] data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=58}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=58}] unless entity @a[scores={MansionChoice=-1},limit=1] as @a[scores={MansionChoice=-1}] run trigger MansionChoice set -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=1..},limit=1] as @a[scores={EGaddUndergroundLabChoice=0}] run trigger EGaddUndergroundLabChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=1..},limit=1] as @a run trigger MansionChoice set -1
execute if entity @s[scores={Dialog=58}] unless entity @a[scores={MansionChoice=-1},limit=1] as @a run trigger EGaddUndergroundLabChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=1..},limit=1] as @a[scores={EGaddUndergroundLabChoice=0}] run trigger EGaddUndergroundLabChoice set 0
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=1},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.training.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=1},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yaahboh_yaahboh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddUndergroundLabChoice=1},limit=1] as @a[tag=same_room] run function luigis_mansion:room/training_room/warp_to
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddUndergroundLabChoice=1},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.gallery.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] as @a[tag=same_room] run function luigis_mansion:room/gallery/warp_to
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=3},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.portrificationizer.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=3},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.odoh_mah_mah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddUndergroundLabChoice=3},limit=1] as @a[tag=same_room] run function luigis_mansion:room/ghost_portrificationizer_room/warp_to
execute if entity @s[scores={Dialog=82}] if entity @a[scores={EGaddUndergroundLabChoice=3},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.1.more"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.ohyah_ohyahmah_hey_hey_oui neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=130..131}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/thinking
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.yes","color":"green","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 1"},"extra":[{"type":"text","text":"\n"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.no","color":"green","clickEvent":{"action":"run_command","value":"/trigger EGaddUndergroundLabChoice set 2"}}]}
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] run scoreboard players enable @a[tag=same_room] EGaddUndergroundLabChoice
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddUndergroundLabChoice=4},limit=1] run scoreboard players set @a EGaddUndergroundLabChoice 0
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddUndergroundLabChoice=0},limit=1] run scoreboard players set @s Dialog 131
execute if entity @s[scores={Dialog=130}] if entity @a[scores={EGaddUndergroundLabChoice=0},limit=1] run data remove entity @s data.animation
execute if entity @s[scores={Dialog=132}] if entity @a[scores={EGaddUndergroundLabChoice=1..2},limit=1] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"nod"}
execute if entity @s[scores={Dialog=132}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/nod
execute if entity @s[scores={Dialog=132}] as @a[scores={EGaddUndergroundLabChoice=1},limit=1] run function luigis_mansion:data/load
execute if entity @s[scores={Dialog=132}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.old_data.no.1"}]}
execute if entity @s[scores={Dialog=132}] if entity @a[scores={EGaddUndergroundLabChoice=2},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.nohjeebeedoggy_oui_oohmakah_tahmentahkeh neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=148}] if entity @a[scores={EGaddUndergroundLabChoice=1..2},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddUndergroundLabChoice=5},limit=1] run function luigis_mansion:data/save
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddUndergroundLabChoice=5},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=6},limit=1] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.e_gadd","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.underground_lab.nowhere.1"}]}
execute if entity @s[scores={Dialog=58}] if entity @a[scores={EGaddUndergroundLabChoice=6},limit=1] run playsound luigis_mansion:entity.e_gadd.talk.yahmum_bah neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=74}] if entity @a[scores={EGaddUndergroundLabChoice=6},limit=1] run scoreboard players set @s Dialog -1
execute if entity @s[scores={Dialog=-1}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=-1}] remove talk
execute unless entity @e[tag=same_room,tag=!spectator,distance=..7,limit=1] run tag @s remove talk
execute if entity @s[tag=!talk] run scoreboard players reset @a EGaddUndergroundLabChoice
execute if entity @s[tag=!talk] run scoreboard players reset @a MansionChoice
scoreboard players set @s[tag=!talk] Dialog 0
data remove entity @s[tag=!talk] data.animation
tag @s[tag=!talk] remove changing_mansion
tag @s[tag=!talk] remove cannot_change
tag @s[tag=!talk] remove no_mansion
tag @s[tag=!talk] remove underground_lab_dialog
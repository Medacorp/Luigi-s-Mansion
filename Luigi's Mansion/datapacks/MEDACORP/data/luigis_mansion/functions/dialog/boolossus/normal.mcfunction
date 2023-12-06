scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..433}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.1","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.1.more"}]}
execute if entity @s[scores={Dialog=120}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.2"}]}
execute if entity @s[scores={Dialog=168}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.3"}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.4"}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.boolossus","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.boolossus.4.more"}]}
execute if entity @s[scores={Dialog=304}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]}] add dialog_animation
execute if entity @s[scores={Dialog=304}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=304}] run playsound luigis_mansion:music.boss.boolossus_balcony music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=304}] run scoreboard players set @a[tag=same_room] Music 291
execute if entity @s[scores={Dialog=334}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=338}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=342}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=346}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=350}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=354}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=358}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=362}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=366}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=370}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=374}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=378}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=382}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=386}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=390}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=434}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=434}] as @a[tag=boolossus_target,limit=1] at @s positioned ^ ^ ^1 run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=435..554}] if score #mirrored Selected matches 0 as @a[tag=boolossus_target,scores={ScareTime=20},limit=1] at @s rotated ~-5 0 run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=435..554}] if score #mirrored Selected matches 1 as @a[tag=boolossus_target,scores={ScareTime=20},limit=1] at @s rotated ~5 0 run function luigis_mansion:entities/player/scared_bashed_force_move
execute if entity @s[scores={Dialog=435..593}] run scoreboard players set @a[tag=boolossus_target,limit=1,scores={ScareTime=20}] ScareTime 21
execute if entity @s[scores={Dialog=472}] run scoreboard players add @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]}] ActionTime 1
execute if entity @s[scores={Dialog=574..}] as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]}] at @s run teleport @s ~ ~1 ~
execute if entity @s[scores={Dialog=574}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 120 ~
execute if entity @s[scores={Dialog=575}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 121 ~
execute if entity @s[scores={Dialog=576}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 122 ~
execute if entity @s[scores={Dialog=577}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 123 ~
execute if entity @s[scores={Dialog=578}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 124 ~
execute if entity @s[scores={Dialog=579}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 125 ~
execute if entity @s[scores={Dialog=580}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 126 ~
execute if entity @s[scores={Dialog=581}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 127 ~
execute if entity @s[scores={Dialog=582}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 128 ~
execute if entity @s[scores={Dialog=583}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 129 ~
execute if entity @s[scores={Dialog=584}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 130 ~
execute if entity @s[scores={Dialog=585}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 131 ~
execute if entity @s[scores={Dialog=586}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 132 ~
execute if entity @s[scores={Dialog=587}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 133 ~
execute if entity @s[scores={Dialog=588}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 134 ~
execute if entity @s[scores={Dialog=589}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 135 ~
execute if entity @s[scores={Dialog=590}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 136 ~
execute if entity @s[scores={Dialog=591}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 137 ~
execute if entity @s[scores={Dialog=592}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 138 ~
execute if entity @s[scores={Dialog=593}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 139 ~
execute if entity @s[scores={Dialog=594}] as @a[tag=boolossus_target,limit=1] at @s run teleport @s ~ 140 ~
execute if entity @s[scores={Dialog=595}] run tag @e[nbt={ArmorItems:[{tag:{luigis_mansion:{namespace:"luigis_mansion",id:"boolossus"}}}]},tag=!merged] add remove_from_existence
execute if entity @s[scores={Dialog=595}] run tag @e[tag=boolossus_target] remove boolossus_target
execute if entity @s[scores={Dialog=594..}] run scoreboard players set @a[tag=boolossus_target,limit=1] ScareTime 1
execute if entity @s[scores={Dialog=595}] as @a run function luigis_mansion:room/normal/boolossus_battle/warp_to

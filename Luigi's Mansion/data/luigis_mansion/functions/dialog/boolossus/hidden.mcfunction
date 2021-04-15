scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.1","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.1.more"}]}
execute if entity @s[scores={Dialog=120}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.2"}]}
execute if entity @s[scores={Dialog=168}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.3"}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.4"}]}
execute if entity @s[scores={Dialog=232}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.boolossus","color":"green"},{"translate":"luigis_mansion:dialog.boolossus.4.more"}]}
execute if entity @s[scores={Dialog=304}] run tag @e[tag=boolossus] add dialog_animation
execute if entity @s[scores={Dialog=304}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=304}] run playsound luigis_mansion:music.boss.boolossus_balcony music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=304}] run scoreboard players set @a[tag=same_room] Music 291
execute if entity @s[scores={Dialog=334}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=338}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=342}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=346}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=350}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=354}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=358}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=362}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=366}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=370}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=374}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=378}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=382}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=386}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=390}] run tag @e[tag=boolossus,sort=random,tag=!dialog_animation_start,limit=1] add dialog_animation_start
execute if entity @s[scores={Dialog=472}] run scoreboard players add @e[tag=boolossus] Time 1
execute if entity @s[scores={Dialog=574..}] as @e[tag=boolossus] at @s run teleport @s ~ ~1 ~
execute if entity @s[scores={Dialog=574}] as @a[tag=target,limit=1] at @s run teleport @s ~ 120 ~
execute if entity @s[scores={Dialog=575}] as @a[tag=target,limit=1] at @s run teleport @s ~ 121 ~
execute if entity @s[scores={Dialog=576}] as @a[tag=target,limit=1] at @s run teleport @s ~ 122 ~
execute if entity @s[scores={Dialog=577}] as @a[tag=target,limit=1] at @s run teleport @s ~ 123 ~
execute if entity @s[scores={Dialog=578}] as @a[tag=target,limit=1] at @s run teleport @s ~ 124 ~
execute if entity @s[scores={Dialog=579}] as @a[tag=target,limit=1] at @s run teleport @s ~ 125 ~
execute if entity @s[scores={Dialog=580}] as @a[tag=target,limit=1] at @s run teleport @s ~ 126 ~
execute if entity @s[scores={Dialog=581}] as @a[tag=target,limit=1] at @s run teleport @s ~ 127 ~
execute if entity @s[scores={Dialog=582}] as @a[tag=target,limit=1] at @s run teleport @s ~ 128 ~
execute if entity @s[scores={Dialog=583}] as @a[tag=target,limit=1] at @s run teleport @s ~ 129 ~
execute if entity @s[scores={Dialog=584}] as @a[tag=target,limit=1] at @s run teleport @s ~ 130 ~
execute if entity @s[scores={Dialog=585}] as @a[tag=target,limit=1] at @s run teleport @s ~ 131 ~
execute if entity @s[scores={Dialog=586}] as @a[tag=target,limit=1] at @s run teleport @s ~ 132 ~
execute if entity @s[scores={Dialog=587}] as @a[tag=target,limit=1] at @s run teleport @s ~ 133 ~
execute if entity @s[scores={Dialog=588}] as @a[tag=target,limit=1] at @s run teleport @s ~ 134 ~
execute if entity @s[scores={Dialog=589}] as @a[tag=target,limit=1] at @s run teleport @s ~ 135 ~
execute if entity @s[scores={Dialog=590}] as @a[tag=target,limit=1] at @s run teleport @s ~ 136 ~
execute if entity @s[scores={Dialog=591}] as @a[tag=target,limit=1] at @s run teleport @s ~ 137 ~
execute if entity @s[scores={Dialog=592}] as @a[tag=target,limit=1] at @s run teleport @s ~ 138 ~
execute if entity @s[scores={Dialog=593}] as @a[tag=target,limit=1] at @s run teleport @s ~ 139 ~
execute if entity @s[scores={Dialog=594}] as @a[tag=target,limit=1] at @s run teleport @s ~ 140 ~
execute if entity @s[scores={Dialog=595}] run tag @e[tag=boolossus,tag=!battle] add dead
execute if entity @s[scores={Dialog=595}] run tag @a[tag=target,limit=1] remove target
execute if entity @s[scores={Dialog=595}] as @a run function luigis_mansion:entities/boolossus/to_arena/hidden

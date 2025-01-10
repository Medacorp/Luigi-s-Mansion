scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..99 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 2 as @a[tag=same_room] run function luigis_mansion:other/music/set/bogmire_battle
execute if score #dialog Dialog matches 60 at @e[tag=ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 70 at @e[tag=ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 80 at @e[tag=ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 90 at @e[tag=ghost,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
execute if score #dialog Dialog matches 80 run tag @e[tag=ghost,limit=1] add visible
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 100 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/scare/bash_no_move
execute if score #dialog Dialog matches 100..240 run scoreboard players set @e[tag=luigi,tag=same_room,scores={AnimationProgress=30..}] AnimationProgress 29
execute if score #dialog Dialog matches 240 run scoreboard players add #graveyard Wave 1
execute if score #dialog Dialog matches 240 run scoreboard players set #dialog Dialog -1

execute if entity @e[tag=ghost,limit=1,scores={Sound=0},tag=visible,tag=!appear] run playsound luigis_mansion:entity.bogmire.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @e[tag=ghost,limit=1,scores={Sound=0},tag=visible,tag=!appear] Sound 30
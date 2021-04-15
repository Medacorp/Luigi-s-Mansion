execute unless entity @s[scores={Dialog=1..}] at @a[tag=same_room] positioned ^ ^ ^8 run effect give @s[distance=..8] minecraft:invisibility 1 0 true
effect clear @s[nbt=!{ActiveEffects:[{Id:14b,Duration:20}]}] minecraft:invisibility
scoreboard players add @s[scores={Dialog=483..}] Dialog 1
scoreboard players add @s[scores={Dialog=423..482},tag=melt] Dialog 1
tag @s remove melt
scoreboard players add @s[scores={Dialog=1..422}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] if block ^2.7 ^ ^2.7 minecraft:soul_campfire[lit=true] if block ^-2.7 ^ ^2.7 minecraft:soul_campfire[lit=true] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room,scores={Music=..30}] Music 30
execute if entity @s[scores={Dialog=30}] if data storage luigis_mansion:data current_state.current_data.technical_data{sir_weston_spoke:1b} run scoreboard players set @s Dialog 422
execute if entity @s[scores={Dialog=31..421}] facing entity @p[tag=same_room] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=31..421}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s Music 0
execute if entity @s[scores={Dialog=31..421}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s MusicType 23
execute if entity @s[scores={Dialog=30}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.1"}]}
execute if entity @s[scores={Dialog=30}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.1.more"}]}
execute if entity @s[scores={Dialog=110}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.2"}]}
execute if entity @s[scores={Dialog=198}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.3"}]}
execute if entity @s[scores={Dialog=198}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.3.more"}]}
execute if entity @s[scores={Dialog=270}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.4"}]}
execute if entity @s[scores={Dialog=390}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.5"}]}
execute if entity @s[scores={Dialog=390}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.sir_weston","color":"green"},{"translate":"luigis_mansion:dialog.sir_weston.5.more"}]}
execute if entity @s[scores={Dialog=422}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {sir_weston_spoke:1b}
execute if entity @s[scores={Dialog=422..}] as @a[tag=same_room] unless entity @s[scores={MusicType=36}] run function luigis_mansion:other/music/set/danger
scoreboard players add @s[scores={Dialog=422..482}] PathStep 1
execute if entity @s[scores={PathStep=20..50,VulnerableTime=0}] facing entity @p[tag=same_room] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[scores={PathStep=50..60}] run function luigis_mansion:entities/sir_weston/attack
scoreboard players set @s[scores={PathStep=80}] PathStep 0
execute if entity @s[scores={Dialog=483}] run particle minecraft:block minecraft:ice ~ ~1.2 ~ 0.6 0.6 0.6 0 30
scoreboard players set @s[scores={Dialog=483}] VulnerableTime 40
scoreboard players set @s[scores={Dialog=483}] PathStep 0
scoreboard players set @s[scores={Dialog=523}] Dialog 462
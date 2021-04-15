execute if entity @s[tag=!appeared] run effect give @s minecraft:invisibility 1000000 0 true
execute if entity @s[tag=appeared] run effect clear @s minecraft:invisibility
teleport @s[tag=appeared] ~ 121 ~
teleport @s[tag=!appeared] ~ 120 ~

scoreboard players add @s[scores={Dialog=612..}] Dialog 1
execute if entity @a[scores={JarvisChoice=1..},limit=1] run scoreboard players add @s[scores={Dialog=547..611}] Dialog 1
scoreboard players add @s[scores={Dialog=1..546}] Dialog 1
execute if entity @a[gamemode=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] if predicate luigis_mansion:jarvis_appear_chance run scoreboard players add @s Dialog 1
execute if entity @a[gamemode=!spectator,distance=..4,limit=1] if entity @s[tag=!tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s add tried_to_appear
execute unless entity @a[gamemode=!spectator,distance=..4,limit=1] if entity @s[tag=tried_to_appear] unless entity @s[scores={Dialog=1..}] run tag @s remove tried_to_appear

tag @s[scores={Dialog=1}] add appeared
execute if entity @s[scores={Dialog=1..856}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s Music 0
execute if entity @s[scores={Dialog=1..856}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s MusicType 23
execute if entity @s[scores={Dialog=10}] if data storage luigis_mansion:data current_state.current_data.technical_data{jarvis_spoke:1b} run scoreboard players set @s Dialog 418
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1"}]}
execute if entity @s[scores={Dialog=10}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.1.more"}]}
execute if entity @s[scores={Dialog=58}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2"}]}
execute if entity @s[scores={Dialog=58}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.2.more"}]}
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3"}]}
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.3.more"}]}
execute if entity @s[scores={Dialog=322}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4"}]}
execute if entity @s[scores={Dialog=322}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.4.more"}]}
execute if entity @s[scores={Dialog=418}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.5"}]}
execute if entity @s[scores={Dialog=418}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {jarvis_spoke:1b}
execute if entity @s[scores={Dialog=450}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.6"}]}
execute if entity @s[scores={Dialog=450}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.6.more"}]}
execute if entity @s[scores={Dialog=546}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.jarvis.yes","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.jarvis.no","clickEvent":{"action":"run_command","value":"/trigger JarvisChoice set 2"}}]}
execute if entity @s[scores={Dialog=546}] run scoreboard players enable @a[tag=same_room] JarvisChoice
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=1..}] as @a[scores={JarvisChoice=0}] run trigger JarvisChoice set 0
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.1"}]}
execute if entity @s[scores={Dialog=572}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2"}]}
execute if entity @s[scores={Dialog=572}] if entity @a[scores={JarvisChoice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.2.more"}]}
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3"}]}
execute if entity @s[scores={Dialog=648}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.3.more"}]}
execute if entity @s[scores={Dialog=736}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4"}]}
execute if entity @s[scores={Dialog=736}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.4.more"}]}
execute if entity @s[scores={Dialog=824}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.yes.5"}]}
tag @s[scores={Dialog=856}] remove appeared
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1"}]}
execute if entity @s[scores={Dialog=548}] if entity @a[scores={JarvisChoice=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.no.1.more"}]}
execute if entity @s[scores={Dialog=612}] if score #mansion_type Selected matches 0 if entity @a[scores={JarvisChoice=2}] as @a[tag=same_room] run teleport @s 711 120 30 -180 0
execute if entity @s[scores={Dialog=612}] if score #mansion_type Selected matches 1 if entity @a[scores={JarvisChoice=2}] as @a[tag=same_room] run teleport @s 711 120 -15 0 0
execute if entity @s[scores={Dialog=612}] run scoreboard players reset @a JarvisChoice

execute if entity @s[scores={Dialog=857}] if score #mansion_type Selected matches 0 run function luigis_mansion:room/normal/ceramics_studio/add_blockade
execute if entity @s[scores={Dialog=857}] if score #mansion_type Selected matches 1 run function luigis_mansion:room/hidden/ceramics_studio/add_blockade
execute if entity @s[scores={Dialog=857..1511}] as @a[tag=same_room] unless entity @s[scores={MusicType=37}] run function luigis_mansion:other/music/set/mini_game
tag @s[scores={Dialog=857}] add can_freeze
scoreboard players set @s[scores={Dialog=857}] Dialog 0
execute if entity @s[scores={Dialog=976}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=976}] add appeared
scoreboard players set @s[scores={Dialog=976..1106},tag=frozen] Dialog 1106
tag @s[scores={Dialog=1106}] remove appeared
execute if entity @s[scores={Dialog=1176}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1176}] add appeared
scoreboard players set @s[scores={Dialog=1176..1216},tag=frozen] Dialog 1216
tag @s[scores={Dialog=1216}] remove appeared
execute if entity @s[scores={Dialog=1266}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1266}] add appeared
scoreboard players set @s[scores={Dialog=1266..1306},tag=frozen] Dialog 1306
tag @s[scores={Dialog=1306}] remove appeared
execute if entity @s[scores={Dialog=1346}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1346}] add appeared
scoreboard players set @s[scores={Dialog=1346..1386},tag=frozen] Dialog 1386
tag @s[scores={Dialog=1386}] remove appeared
execute if entity @s[scores={Dialog=1416}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1416}] add appeared
scoreboard players set @s[scores={Dialog=1416..1456},tag=frozen] Dialog 1456
tag @s[scores={Dialog=1456}] remove appeared
execute if entity @s[scores={Dialog=1476}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1476}] add appeared
scoreboard players set @s[scores={Dialog=1476..1516},tag=frozen] Dialog 1516
tag @s[scores={Dialog=1516}] remove appeared
execute if entity @s[scores={Dialog=1526}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=1526}] add appeared
scoreboard players set @s[scores={Dialog=1526..1566},tag=frozen] Dialog 1566
tag @s[scores={Dialog=1566}] remove appeared
tag @s[scores={Dialog=1566}] remove can_freeze
scoreboard players add @s[tag=frozen] Dialog 1
tag @s[tag=frozen] remove appeared
tag @s[tag=frozen] remove frozen

execute if entity @s[scores={Dialog=1626}] if score #mansion_type Selected matches 0 run teleport @s 687 120 42
execute if entity @s[scores={Dialog=1626}] if score #mansion_type Selected matches 1 run teleport @s 687 120 -27
tag @s[scores={Dialog=1646}] add appeared
execute if entity @s[scores={Dialog=1656}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1"}]}
execute if entity @s[scores={Dialog=1656}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.1.more"}]}
execute if entity @s[scores={Dialog=1680}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.2"}]}
tag @s[scores={Dialog=1712}] remove appeared
tag @s[scores={Dialog=1752}] add appeared
execute if entity @s[scores={Dialog=1752..2033}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s Music 0
execute if entity @s[scores={Dialog=1752..2033}] as @a[tag=same_room] unless entity @s[scores={MusicType=23}] run scoreboard players set @s MusicType 23
execute if entity @s[scores={Dialog=1762,Dialog=0}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0"}]}
execute if entity @s[scores={Dialog=1762,Dialog=0}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.0.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1"}]}
execute if entity @s[scores={Dialog=1762,Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.1.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2"}]}
execute if entity @s[scores={Dialog=1762,Dialog=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.2.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=3}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3"}]}
execute if entity @s[scores={Dialog=1762,Dialog=3}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.3.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=4}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4"}]}
execute if entity @s[scores={Dialog=1762,Dialog=4}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.4.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=5}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5"}]}
execute if entity @s[scores={Dialog=1762,Dialog=5}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.5.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6"}]}
execute if entity @s[scores={Dialog=1762,Dialog=6}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.6.more"}]}
execute if entity @s[scores={Dialog=1762,Dialog=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7"}]}
execute if entity @s[scores={Dialog=1762,Dialog=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.3.7.more"}]}
execute if entity @s[scores={Dialog=1810,Dialog=0..6}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1"}]}
execute if entity @s[scores={Dialog=1810,Dialog=0..6}] if score #players Totals matches 2..3 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.more"}]}
execute if entity @s[scores={Dialog=1810,Dialog=0..6}] if score #players Totals matches 4.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.no.1.even_more"}]}
execute if entity @s[scores={Dialog=1898,Dialog=0..6}] if score #mansion_type Selected matches 0 as @a[tag=same_room] run teleport @s 711 120 30 -180 0
execute if entity @s[scores={Dialog=1898,Dialog=0..6}] if score #mansion_type Selected matches 1 as @a[tag=same_room] run teleport @s 711 120 -15 0 0
execute if entity @s[scores={Dialog=1810,Dialog=7}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.1"}]}
execute if entity @s[scores={Dialog=1874,Dialog=7}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2"}]}
execute if entity @s[scores={Dialog=1874,Dialog=7}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.jarvis","color":"green"},{"translate":"luigis_mansion:dialog.jarvis.game.yes.2.more"}]}
tag @s[scores={Dialog=2034}] remove appeared
tag @s[scores={Dialog=2034}] add other_4
execute if entity @s[scores={Dialog=2034}] run tag @e[tag=haunted_jar] add enabled
execute if entity @s[scores={Dialog=2034..}] as @a[tag=same_room] unless entity @s[scores={MusicType=36}] run function luigis_mansion:other/music/set/danger
execute if entity @s[scores={Dialog=2054}] run function #luigis_mansion:entities/jarvis/switch_jar
tag @s[scores={Dialog=2054}] add appeared
scoreboard players set @s[scores={Dialog=2054}] VulnerableTime 40
tag @s[scores={Dialog=2094}] remove appeared
scoreboard players set @s[scores={Dialog=2153}] Dialog 2053
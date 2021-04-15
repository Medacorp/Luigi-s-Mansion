execute if entity @a[scores={Toad4Choice=1..},limit=1] run scoreboard players add @s[scores={Dialog=705..}] Dialog 1
scoreboard players add @s[scores={Dialog=..704}] Dialog 1
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] MusicType 10
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 0
tag @s[scores={Dialog=1}] add happy
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.1"}]}
execute if entity @s[scores={Dialog=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.1.more"}]}
execute if entity @s[scores={Dialog=96}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.2"}]}
tag @s[scores={Dialog=256}] add explaining
execute if entity @s[scores={Dialog=256}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.3"}]}
execute if entity @s[scores={Dialog=416}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.4"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.5"}]}
execute if entity @s[scores={Dialog=544}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.5.more"}]}
tag @s[scores={Dialog=704}] remove explaining
execute if entity @s[scores={Dialog=704}] run tellraw @a[tag=same_room] {"translate":"luigis_mansion:message.options","color":"green","extra":[{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_4.yes","clickEvent":{"action":"run_command","value":"/trigger Toad4Choice set 1"}},{"text":"\n"},{"translate":"luigis_mansion:dialog.toad_4.no","clickEvent":{"action":"run_command","value":"/trigger Toad4Choice set 2"}}]}
execute if entity @s[scores={Dialog=704}] run scoreboard players enable @a[tag=same_room] Toad4Choice
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1..}] as @a[scores={Toad4Choice=0}] run trigger Toad4Choice set 0
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1}] run playsound luigis_mansion:entity.toad.wow neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.yes.1"}]}
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.yes.1.more"}]}
execute if entity @s[scores={Dialog=786}] if entity @a[scores={Toad4Choice=1}] run tag @s add explaining
execute if entity @s[scores={Dialog=786}] if entity @a[scores={Toad4Choice=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.yes.2"}]}
execute if entity @s[scores={Dialog=786}] if entity @a[scores={Toad4Choice=1}] run playsound luigis_mansion:entity.toad.yahoo neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=810}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.yes.3","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=810}] if entity @a[scores={Toad4Choice=1}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.yes.3.more"}]}
execute if entity @s[scores={Dialog=874}] if entity @a[scores={Toad4Choice=1}] run tag @s remove explaining
execute if entity @s[scores={Dialog=874}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {toad_4_happy:1b}
execute if entity @s[scores={Dialog=874}] if entity @a[scores={Toad4Choice=1}] run scoreboard players set @s Dialog 633
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run advancement grant @a[scores={Toad4Choice=2}] only luigis_mansion:challenges/go_help_yourself courtyard
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run playsound luigis_mansion:entity.toad.mama_mia neutral @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] run tag @s remove happy
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.no.1"}]}
execute if entity @s[scores={Dialog=706}] if entity @a[scores={Toad4Choice=2}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.toad","color":"green"},{"translate":"luigis_mansion:dialog.toad_4.no.1"}]}
execute if entity @s[scores={Dialog=738}] if entity @a[scores={Toad4Choice=2}] run scoreboard players set @s Dialog 874
execute if entity @s[scores={Dialog=874}] run scoreboard players set @a Toad4Choice 0
tag @s[scores={Dialog=874}] remove talk
execute unless entity @a[tag=same_room,distance=..7] run tag @s remove talk
execute if entity @s[tag=!talk] as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
execute if entity @s[tag=!talk] as @a[scores={Toad4Choice=0..}] run trigger Toad4Choice set 0
tag @s[tag=!talk] remove explaining
tag @s[tag=!talk,scores={Dialog=..873}] remove happy
scoreboard players set @s[tag=!talk] Dialog 0
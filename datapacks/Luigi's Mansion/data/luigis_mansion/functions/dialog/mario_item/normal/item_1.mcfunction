scoreboard players add @s Dialog 1
tag @s[scores={Dialog=1}] add nod
execute if entity @s[scores={Dialog=1}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.1"}]}
execute if entity @s[scores={Dialog=122}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.2"}]}
tag @s[scores={Dialog=162}] remove nod
tag @s[scores={Dialog=162}] add explain
execute if entity @s[scores={Dialog=162}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.3"}]}
execute if entity @s[scores={Dialog=162}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.3.more"}]}
tag @s[scores={Dialog=602}] remove explain
execute if entity @s[scores={Dialog=602}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=602}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.3"}]}
execute if entity @s[scores={Dialog=634}] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=634}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.4"}]}
tag @s[scores={Dialog=802}] add power
execute if entity @s[scores={Dialog=802}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=802}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.5"}]}
execute if entity @s[scores={Dialog=994}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.6"}]}
execute if entity @s[scores={Dialog=1026}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.generic.7"}]}
execute if entity @s[scores={Dialog=1114}] run playsound luigis_mansion:entity.madame_clairvoya.spirits hostile @a[tag=same_room] ~ ~ ~ 1000
tag @s[scores={Dialog=1154}] add explain
tag @s[scores={Dialog=1154}] remove power
execute if entity @s[scores={Dialog=1154}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1154}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.4"}]}
tag @s[scores={Dialog=1218}] remove explain
execute if entity @s[scores={Dialog=1218}] run scoreboard players set @e[tag=this_model,tag=madame_clairvoya_head,limit=1] AnimationProg 0
execute if entity @s[scores={Dialog=1218}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.5"}]}
execute if entity @s[scores={Dialog=1490}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.6"}]}
execute if entity @s[scores={Dialog=1490}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.madame_clairvoya","color":"green"},{"translate":"luigis_mansion:dialog.madame_clairvoya.item_1.6.more"}]}
tag @s[scores={Dialog=1722}] remove talk
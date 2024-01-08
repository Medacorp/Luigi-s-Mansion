scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute unless entity @s[scores={Dialog=1588..}] as @a[tag=same_room,distance=..5.9,limit=1] run teleport @s 645 93 33 90 0
execute if entity @s[scores={Dialog=1}] run scoreboard players set #can_warp Selected 0
execute if entity @s[scores={Dialog=1}] run tag @e[x=654.0,y=93,z=33.5,distance=..0.7,tag=furniture,tag=door,limit=1] add unopenable
execute if entity @s[scores={Dialog=1..1910}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..1612}] as @a[tag=same_room] run function luigis_mansion:other/music/set/talking_king_boo
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.1"}]}
execute if entity @s[scores={Dialog=224}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.2"}]}
execute if entity @s[scores={Dialog=320}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.3"}]}
execute if entity @s[scores={Dialog=448}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.4"}]}
execute if entity @s[scores={Dialog=576}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.5"}]}
execute if entity @s[scores={Dialog=576}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.5.more"}]}
execute if entity @s[scores={Dialog=784..1800}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=784}] run playsound luigis_mansion:entity.king_boo.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=784}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.6"}]}
execute if entity @s[scores={Dialog=792}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=792}] if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7.more"}]}
execute if entity @s[scores={Dialog=792}] if score #players Totals matches 5.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.7.even_more","with":[{"type":"selector","selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=992}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.8"}]}
execute if entity @s[scores={Dialog=992}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.8.more"}]}
execute if entity @s[scores={Dialog=1180}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.9"}]}
execute if entity @s[scores={Dialog=1180}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.9.more"}]}
execute if entity @s[scores={Dialog=1324}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.10"}]}
execute if entity @s[scores={Dialog=1324}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.10.more"}]}
execute if entity @s[scores={Dialog=1460}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.11"}]}
execute if entity @s[scores={Dialog=1460}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.11.more"}]}
execute if entity @s[scores={Dialog=1556}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.12"}]}
execute if entity @s[scores={Dialog=1556}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.12.more"}]}
execute if entity @s[scores={Dialog=1588}] run tellraw @a[tag=same_room] {"type":"translatable","translate":"chat.type.text","with":[{"type":"translatable","translate":"luigis_mansion:entity.king_boo","color":"green"},{"type":"translatable","translate":"luigis_mansion:dialog.king_boo.13"}]}
execute if entity @s[scores={Dialog=1588..1598}] run teleport @s ~0.1 ~ ~
execute if entity @s[scores={Dialog=1598}] run teleport @s 640 93 33
tag @s[scores={Dialog=1612}] add magic
scoreboard players set @s[scores={Dialog=1612}] AnimationProgress 0
execute if entity @s[scores={Dialog=1612}] run function #luigis_mansion:room/normal/secret_altar/turn_lights/off
execute if entity @s[scores={Dialog=1612}] run playsound luigis_mansion:entity.king_boo.magic hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=1612}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1612}] run playsound luigis_mansion:music.sucked_into_painting music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=1612}] run scoreboard players set @a[tag=same_room] Music 399
execute if entity @s[scores={Dialog=1612..1621}] run effect give @a[tag=same_room] minecraft:nausea 10 0 true
execute if entity @s[scores={Dialog=1622..1641}] run effect give @a[tag=same_room] minecraft:nausea 9 0 true
execute if entity @s[scores={Dialog=1642..1661}] run effect give @a[tag=same_room] minecraft:nausea 8 0 true
execute if entity @s[scores={Dialog=1642}] at @e[tag=mario,scores={Room=72}] positioned ^ ^0.5 ^-1 run function luigis_mansion:spawn_entities/bowser/painting
execute if entity @s[scores={Dialog=1662..1681}] run effect give @a[tag=same_room] minecraft:nausea 7 0 true
execute if entity @s[scores={Dialog=1682..1701}] run effect give @a[tag=same_room] minecraft:nausea 6 0 true
execute if entity @s[scores={Dialog=1702..1721}] run effect give @a[tag=same_room] minecraft:nausea 5 0 true
execute if entity @s[scores={Dialog=1702}] run tag @e[tag=mario,scores={Room=72}] add dead
execute if entity @s[scores={Dialog=1722..1741}] run effect give @a[tag=same_room] minecraft:nausea 4 0 true
execute if entity @s[scores={Dialog=1742..1761}] run effect give @a[tag=same_room] minecraft:nausea 3 0 true
execute if entity @s[scores={Dialog=1762..1781}] run effect give @a[tag=same_room] minecraft:nausea 2 0 true
execute if entity @s[scores={Dialog=1782..1801}] run effect give @a[tag=same_room] minecraft:nausea 1 0 true
tag @s[scores={Dialog=1772}] remove magic
scoreboard players set @s[scores={Dialog=1771}] AnimationProgress 0
execute if entity @s[scores={Dialog=1801..1822}] facing 633 94 33 run teleport @s ^ ^ ^0.3 ~ ~
execute if entity @s[scores={Dialog=1822}] run tag @e[tag=bowser,scores={Room=72}] add animate
execute if entity @s[scores={Dialog=1911}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=1911}] as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/knockback/flee
execute if entity @s[scores={Dialog=1911..}] run scoreboard players set @a[tag=same_room] Invulnerable 10
execute if entity @s[scores={Dialog=1911..}] positioned 635 94 33 as @a[tag=same_room] facing entity @s feet run function luigis_mansion:dialog/king_boo/suck
execute if entity @s[scores={Dialog=1911..}] positioned 635 94 33 if entity @a[distance=..0.7,gamemode=!spectator,limit=1] run tag @s add remove_from_existence
execute if entity @s[scores={Dialog=1911..}] positioned 635 94 33 if entity @a[distance=..0.7,gamemode=!spectator,limit=1] as @a run function luigis_mansion:room/hidden/king_boo_battle/warp_to
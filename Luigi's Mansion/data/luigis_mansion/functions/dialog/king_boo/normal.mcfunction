scoreboard players add @s Dialog 1
execute unless entity @s[scores={Dialog=1572..}] as @a[tag=same_room,distance=..5.9,limit=1] run teleport @s 645 93 -18 90 0
execute if entity @s[scores={Dialog=1..1596}] as @a[tag=same_room] unless entity @s[scores={MusicType=31}] run scoreboard players set @s MusicType 31
execute if entity @s[scores={Dialog=1}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.1"}]}
execute if entity @s[scores={Dialog=216}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.2"}]}
execute if entity @s[scores={Dialog=312}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.3"}]}
execute if entity @s[scores={Dialog=440}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.4"}]}
execute if entity @s[scores={Dialog=568}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.5"}]}
execute if entity @s[scores={Dialog=776..}] facing entity @p[tag=same_room] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=776}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.6"}]}
execute if entity @s[scores={Dialog=784}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.7","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=784}] if score #players Totals matches 2..4 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.7.more"}]}
execute if entity @s[scores={Dialog=784}] if score #players Totals matches 5.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.7.even_more","with":[{"selector":"@p[gamemode=!spectator]"}]}]}
execute if entity @s[scores={Dialog=984}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.8"}]}
execute if entity @s[scores={Dialog=984}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.8.more"}]}
execute if entity @s[scores={Dialog=1172}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.9"}]}
execute if entity @s[scores={Dialog=1172}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.9.more"}]}
execute if entity @s[scores={Dialog=1316}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.10"}]}
execute if entity @s[scores={Dialog=1316}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.10.more"}]}
execute if entity @s[scores={Dialog=1452}] if score #players Totals matches 1 run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.11"}]}
execute if entity @s[scores={Dialog=1452}] if score #players Totals matches 2.. run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.11.more"}]}
execute if entity @s[scores={Dialog=1548}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.12"}]}
execute if entity @s[scores={Dialog=1572}] run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.king_boo","color":"green"},{"translate":"luigis_mansion:dialog.king_boo.13"}]}
execute if entity @s[scores={Dialog=1572..1582}] run teleport @s ~0.1 ~ ~
execute if entity @s[scores={Dialog=1582}] run teleport @s 640 93 -18
execute if entity @s[scores={Dialog=1596}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1596}] run playsound luigis_mansion:music.sucked_into_painting music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=1596}] run scoreboard players set @a[tag=same_room] Music 399
execute if entity @s[scores={Dialog=1596..1605}] run effect give @a[tag=same_room] minecraft:nausea 10 0 true
execute if entity @s[scores={Dialog=1606..1625}] run effect give @a[tag=same_room] minecraft:nausea 9 0 true
execute if entity @s[scores={Dialog=1626..1645}] run effect give @a[tag=same_room] minecraft:nausea 8 0 true
execute if entity @s[scores={Dialog=1646..1665}] run effect give @a[tag=same_room] minecraft:nausea 7 0 true
execute if entity @s[scores={Dialog=1666..1685}] run effect give @a[tag=same_room] minecraft:nausea 6 0 true
execute if entity @s[scores={Dialog=1686..1705}] run effect give @a[tag=same_room] minecraft:nausea 5 0 true
execute if entity @s[scores={Dialog=1706..1725}] run effect give @a[tag=same_room] minecraft:nausea 4 0 true
execute if entity @s[scores={Dialog=1726..1745}] run effect give @a[tag=same_room] minecraft:nausea 3 0 true
execute if entity @s[scores={Dialog=1746..1765}] run effect give @a[tag=same_room] minecraft:nausea 2 0 true
execute if entity @s[scores={Dialog=1766..1785}] run effect give @a[tag=same_room] minecraft:nausea 1 0 true
execute if entity @s[scores={Dialog=1785..1806}] facing 633 94 -18 run teleport @s ^ ^ ^0.3 ~ ~
execute if entity @s[scores={Dialog=1895..}] run scoreboard players set @a[tag=same_room] Invulnerable 10
execute if entity @s[scores={Dialog=1895..}] positioned 635 94 -18 as @a[tag=same_room] facing entity @s feet run function luigis_mansion:dialog/king_boo/suck
execute if entity @s[scores={Dialog=1895..}] positioned 635 94 -18 if entity @a[distance=..0.7,gamemode=!spectator,limit=1] run tag @s add dead
execute if entity @s[scores={Dialog=1895..}] positioned 635 94 -18 if entity @a[distance=..0.7,gamemode=!spectator,limit=1] as @a run function luigis_mansion:entities/king_boo/to_arena/normal
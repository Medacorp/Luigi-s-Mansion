summon minecraft:armor_stand ^ ^1 ^0.3 {CustomName:'{"translate":"luigis_mansion:item.banana_peel"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,NoGravity:1b,Marker:1b,Tags:["banana_peel","affected_by_vacuum","new","thrown"]}
execute as @e[tag=new,limit=1] positioned as @s run teleport @s ~ ~ ~ ~ ~
scoreboard players set @e[tag=new,limit=1] EntitySizeRadius 5
scoreboard players set @e[tag=new,limit=1] EntityYOffset 6
tag @e[tag=new,limit=1] remove new
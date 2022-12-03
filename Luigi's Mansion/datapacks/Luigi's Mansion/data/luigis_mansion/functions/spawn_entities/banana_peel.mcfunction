summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:item.banana_peel"}',ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:4,CustomModelData:0}}],Small:1b,Invisible:1b,NoGravity:1b,Marker:1b,Tags:["vacuumable","banana_peel","eternal","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] EntitySizeRadius 8
scoreboard players set @e[tag=this_entity,limit=1] EntityYOffset 6
tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=2..},tag=!in_vacuum,tag=lit] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"translate":"luigis_mansion:furniture.candle_flame"}',Pose:{Head:[0.0f,0.0f,0.0f]},HasVisualFire:1b,Marker:1b,NoGravity:1b,Invisible:1b,Silent:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:19,CustomModelData:109}}],Tags:["furniture","candle_flame","incense_particle","affected_by_vacuum","searchable_by_vacuum","this_entity"],DisabledSlots:2039583}
execute if entity @s[scores={ActionTime=2..},tag=!in_vacuum,tag=lit] run teleport @e[tag=this_entity,limit=1] ~ ~ ~ ~ -90
execute if entity @s[scores={ActionTime=2..},tag=!in_vacuum,tag=lit] run scoreboard players set @e[tag=this_entity,limit=1] FurnitureSizeRadius 1
execute if entity @s[scores={ActionTime=2..},tag=!in_vacuum,tag=lit] run scoreboard players operation @e[tag=this_entity,limit=1] Room = @s Room
execute if entity @s[scores={ActionTime=2..},tag=!in_vacuum,tag=lit] run tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players set @s[scores={ActionTime=2..}] ActionTime 0
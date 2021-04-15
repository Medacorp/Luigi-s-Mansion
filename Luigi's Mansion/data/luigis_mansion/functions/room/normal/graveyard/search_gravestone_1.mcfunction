execute unless score #graveyard_gravestone_1 Searched matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["chance","big_heart"],Duration:1}
execute unless score #graveyard_gravestone_1 Searched matches 1 run tag @e[type=minecraft:area_effect_cloud,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=big_heart] positioned 655.0 104.5 53.0 run function luigis_mansion:spawn_entities/item/big_heart
execute unless entity @e[type=minecraft:area_effect_cloud,tag=chance,tag=selected,tag=!nothing] positioned 655.0 103 53.0 run function luigis_mansion:blocks/dust
scoreboard players set #graveyard_gravestone_1 Searched 1
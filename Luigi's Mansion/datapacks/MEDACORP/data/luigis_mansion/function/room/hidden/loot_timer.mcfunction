scoreboard players add @s LootTimer 1
scoreboard players set @s[scores={LootTimer=1300}] LootTimer 700
data modify storage luigis_mansion:data entity set value {rotation:[0.0f,0.0f]}
data modify storage luigis_mansion:data entity.rotation set from entity @s Rotation
execute at @s[scores={LootTimer=200}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=300}] run function luigis_mansion:spawn_entities/item/small_heart
execute at @s[scores={LootTimer=400}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=600}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=700}] run function luigis_mansion:spawn_entities/item/small_heart
execute at @s[scores={LootTimer=800}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=1000}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=1100}] run function luigis_mansion:spawn_entities/item/poison_mushroom
execute at @s[scores={LootTimer=1200}] run function luigis_mansion:spawn_entities/item/poison_mushroom
data remove storage luigis_mansion:data entity
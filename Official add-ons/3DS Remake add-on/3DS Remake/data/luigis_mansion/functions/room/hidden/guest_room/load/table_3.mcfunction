execute if entity @a[tag=portrait_battle,limit=1] run setblock 746 26 59 minecraft:oak_planks
execute if entity @a[tag=portrait_battle,limit=1] run setblock 746 25 59 minecraft:hopper[enabled=false]{LootTable:"luigis_mansion:search",CustomName:'{"translate":"luigis_mansion:block.hopper.bucket"}'}
execute if entity @a[tag=portrait_battle,limit=1] run setblock 724 26 59 minecraft:oak_planks
execute if entity @a[tag=portrait_battle,limit=1] run setblock 724 25 59 minecraft:hopper[enabled=false]{LootTable:"luigis_mansion:search",CustomName:'{"translate":"luigis_mansion:block.hopper.bucket"}'}
execute if entity @a[tag=portrait_battle,limit=1] positioned 746 23 60 run function luigis_mansion:spawn_entities/ghost/water_elemental_source
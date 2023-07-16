execute if entity @a[tag=portrait_battle,limit=1] run setblock 746 26 -44 minecraft:oak_planks
execute if entity @a[tag=portrait_battle,limit=1] run setblock 746 25 -44 minecraft:hopper[enabled=false]{LootTable:"luigis_mansion:search",CustomName:'{"translate":"luigis_mansion:block.hopper.bucket"}'}
execute if entity @a[tag=portrait_battle,limit=1] run setblock 724 26 -44 minecraft:oak_planks
execute if entity @a[tag=portrait_battle,limit=1] run setblock 724 25 -44 minecraft:hopper[enabled=false]{LootTable:"luigis_mansion:search",CustomName:'{"translate":"luigis_mansion:block.hopper.bucket"}'}
execute if entity @a[tag=portrait_battle,limit=1] positioned 746 23 -45 run function luigis_mansion:spawn_entities/ghost/water_elemental_source
function luigis_mansion:spawn_entities/item/red_ruby
scoreboard players remove #temp Time 1
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/red_ruby
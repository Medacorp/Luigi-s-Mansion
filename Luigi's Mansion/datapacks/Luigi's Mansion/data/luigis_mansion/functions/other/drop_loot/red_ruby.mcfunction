execute store result score #temp Time run data get storage luigis_mansion:data drop_loot.contents.luigis_mansion.red_ruby
execute if score #temp Time matches 1.. run function luigis_mansion:other/drop_loot/loop/red_ruby
scoreboard players reset #temp Time
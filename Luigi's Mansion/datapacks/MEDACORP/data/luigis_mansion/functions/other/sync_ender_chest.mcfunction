execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 0 0 Items set from storage luigis_mansion:data ender_chest
data remove storage luigis_mansion:data ender_chest[{Slot:0b}]
data remove storage luigis_mansion:data ender_chest[{Slot:1b}]
data remove storage luigis_mansion:data ender_chest[{Slot:2b}]
data remove storage luigis_mansion:data ender_chest[{Slot:3b}]
data remove storage luigis_mansion:data ender_chest[{Slot:4b}]
data remove storage luigis_mansion:data ender_chest[{Slot:5b}]
data remove storage luigis_mansion:data ender_chest[{Slot:6b}]
data remove storage luigis_mansion:data ender_chest[{Slot:7b}]
data remove storage luigis_mansion:data ender_chest[{Slot:8b}]
data remove storage luigis_mansion:data ender_chest[{Slot:9b}]
data remove storage luigis_mansion:data ender_chest[{Slot:10b}]
data remove storage luigis_mansion:data ender_chest[{Slot:11b}]
data remove storage luigis_mansion:data ender_chest[{Slot:12b}]
data remove storage luigis_mansion:data ender_chest[{Slot:13b}]
data remove storage luigis_mansion:data ender_chest[{Slot:14b}]
data remove storage luigis_mansion:data ender_chest[{Slot:15b}]
data remove storage luigis_mansion:data ender_chest[{Slot:16b}]
data remove storage luigis_mansion:data ender_chest[{Slot:17b}]
data remove storage luigis_mansion:data ender_chest[{Slot:18b}]
data remove storage luigis_mansion:data ender_chest[{Slot:19b}]
data remove storage luigis_mansion:data ender_chest[{Slot:20b}]
data remove storage luigis_mansion:data ender_chest[{Slot:21b}]
data remove storage luigis_mansion:data ender_chest[{Slot:22b}]
data remove storage luigis_mansion:data ender_chest[{Slot:23b}]
data remove storage luigis_mansion:data ender_chest[{Slot:24b}]
data remove storage luigis_mansion:data ender_chest[{Slot:25b}]
data remove storage luigis_mansion:data ender_chest[{Slot:26b}]
data remove storage luigis_mansion:data ender_chest


execute in minecraft:overworld run loot replace entity @s enderchest.0 mine 27 0 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
tag @s remove modifying_inventory
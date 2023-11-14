execute in minecraft:overworld run setblock 27 0 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 0 0 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory[{Slot:0b}]
data remove storage luigis_mansion:data inventory[{Slot:1b}]
data remove storage luigis_mansion:data inventory[{Slot:2b}]
data remove storage luigis_mansion:data inventory[{Slot:3b}]
data remove storage luigis_mansion:data inventory[{Slot:4b}]
data remove storage luigis_mansion:data inventory[{Slot:5b}]
data remove storage luigis_mansion:data inventory[{Slot:6b}]
data remove storage luigis_mansion:data inventory[{Slot:7b}]
data remove storage luigis_mansion:data inventory[{Slot:8b}]
data remove storage luigis_mansion:data inventory[{Slot:9b}]
data remove storage luigis_mansion:data inventory[{Slot:10b}]
data remove storage luigis_mansion:data inventory[{Slot:11b}]
data remove storage luigis_mansion:data inventory[{Slot:12b}]
data remove storage luigis_mansion:data inventory[{Slot:13b}]
data remove storage luigis_mansion:data inventory[{Slot:14b}]
data remove storage luigis_mansion:data inventory[{Slot:15b}]
data remove storage luigis_mansion:data inventory[{Slot:16b}]
data remove storage luigis_mansion:data inventory[{Slot:17b}]
data remove storage luigis_mansion:data inventory[{Slot:18b}]
data remove storage luigis_mansion:data inventory[{Slot:19b}]
data remove storage luigis_mansion:data inventory[{Slot:20b}]
data remove storage luigis_mansion:data inventory[{Slot:21b}]
data remove storage luigis_mansion:data inventory[{Slot:22b}]
data remove storage luigis_mansion:data inventory[{Slot:23b}]
data remove storage luigis_mansion:data inventory[{Slot:24b}]
data remove storage luigis_mansion:data inventory[{Slot:25b}]
data remove storage luigis_mansion:data inventory[{Slot:26b}]
data modify storage luigis_mansion:data inventory[{Slot:27b}] merge value {Slot:0b}
data modify storage luigis_mansion:data inventory[{Slot:28b}] merge value {Slot:1b}
data modify storage luigis_mansion:data inventory[{Slot:29b}] merge value {Slot:2b}
data modify storage luigis_mansion:data inventory[{Slot:30b}] merge value {Slot:3b}
data modify storage luigis_mansion:data inventory[{Slot:31b}] merge value {Slot:4b}
data modify storage luigis_mansion:data inventory[{Slot:32b}] merge value {Slot:5b}
data modify storage luigis_mansion:data inventory[{Slot:33b}] merge value {Slot:6b}
data modify storage luigis_mansion:data inventory[{Slot:34b}] merge value {Slot:7b}
data modify storage luigis_mansion:data inventory[{Slot:35b}] merge value {Slot:8b}
execute in minecraft:overworld run setblock 27 1 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 1 0 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory[{Slot:0b}]
data remove storage luigis_mansion:data inventory[{Slot:1b}]
data remove storage luigis_mansion:data inventory[{Slot:2b}]
data remove storage luigis_mansion:data inventory[{Slot:3b}]
data remove storage luigis_mansion:data inventory[{Slot:4b}]
data remove storage luigis_mansion:data inventory[{Slot:5b}]
data remove storage luigis_mansion:data inventory[{Slot:6b}]
data remove storage luigis_mansion:data inventory[{Slot:7b}]
data remove storage luigis_mansion:data inventory[{Slot:8b}]
data modify storage luigis_mansion:data inventory[{Slot:100b}] merge value {Slot:0b}
data modify storage luigis_mansion:data inventory[{Slot:101b}] merge value {Slot:1b}
data modify storage luigis_mansion:data inventory[{Slot:102b}] merge value {Slot:2b}
data modify storage luigis_mansion:data inventory[{Slot:103b}] merge value {Slot:3b}
execute in minecraft:overworld run setblock 27 0 1 minecraft:shulker_box
execute in minecraft:overworld run data modify block 27 0 1 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory[{Slot:0b}]
data remove storage luigis_mansion:data inventory[{Slot:1b}]
data remove storage luigis_mansion:data inventory[{Slot:2b}]
data remove storage luigis_mansion:data inventory[{Slot:3b}]
data modify storage luigis_mansion:data inventory[{Slot:-106b}] merge value {Slot:0b}
execute in minecraft:overworld run setblock 28 0 0 minecraft:shulker_box
execute in minecraft:overworld run data modify block 28 0 0 Items set from storage luigis_mansion:data inventory
data remove storage luigis_mansion:data inventory


execute in minecraft:overworld run loot replace entity @s hotbar.0 mine 27 0 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run loot replace entity @s inventory.18 9 mine 27 1 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run loot replace entity @s armor.feet 4 mine 27 0 1 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 28 0 0 minecraft:golden_pickaxe{phi:{drop_contents:true}}
execute in minecraft:overworld run setblock 27 0 0 minecraft:bedrock
execute in minecraft:overworld run setblock 27 1 0 minecraft:stone
execute in minecraft:overworld run setblock 27 0 1 minecraft:bedrock
execute in minecraft:overworld run setblock 28 0 0 minecraft:bedrock
tag @s remove modifying_inventory
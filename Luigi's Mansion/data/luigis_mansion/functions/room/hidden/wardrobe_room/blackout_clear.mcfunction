setblock 677 111 -16 minecraft:trapped_chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
playsound luigis_mansion:block.chest.spawn block @a 677 111 -16 2
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {caught_grimmly:1b}
scoreboard players set #wardrobe_room Wave 101
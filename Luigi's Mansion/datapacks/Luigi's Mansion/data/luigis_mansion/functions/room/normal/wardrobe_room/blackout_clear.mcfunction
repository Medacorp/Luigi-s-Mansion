setblock 682 20 69 minecraft:trapped_chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 672 20 69 minecraft:trapped_chest[facing=west,type=single]{LootTable:"luigis_mansion:search"}
playsound luigis_mansion:furniture.room_clear_chest.spawn block @a 682 20 69 2
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {caught_grimmly:1b}
scoreboard players set #wardrobe_room Wave 101
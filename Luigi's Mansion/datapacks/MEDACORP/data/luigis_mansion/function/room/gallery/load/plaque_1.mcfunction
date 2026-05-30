data modify storage luigis_mansion:data furniture set value {room:-4,no_dust:1b,no_ai:1b,animation:{frozen:1b},plaque_text:{type:"translatable",translate:"luigis_mansion:sign.gallery.record.no_money",color:"gray"}}
execute if data storage luigis_mansion:data current_state.high_scores[-1] run function luigis_mansion:room/gallery/load/mansion_rank_portrait/get_high_score
execute positioned 18.0 3.5 25 rotated 90 0 run function luigis_mansion:spawn_furniture/plaque/big
scoreboard players reset #temp Time
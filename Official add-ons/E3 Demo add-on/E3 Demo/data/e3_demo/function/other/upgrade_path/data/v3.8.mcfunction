execute unless data storage luigis_mansion:data update_data{data_version:6} run function e3_demo:other/upgrade_path/data/v3.4
data modify storage luigis_mansion:data update_data merge value {data_version:7,loot_collections:{}}
data modify storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.neville.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:10}]}}
data modify storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.lydia.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:10}]}}
data modify storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.spooky.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:10}]}}
data modify storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.miss_petunia.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:10}]}}
data modify storage luigis_mansion:data update_data.new_portrait_ghosts set value []
data modify storage luigis_mansion:data update_data.new_portrait_ghosts append from storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.neville
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[-1].name set value {namespace:"luigis_mansion",id:"neville"}
data modify storage luigis_mansion:data update_data.new_portrait_ghosts append from storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.lydia
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[-1].name set value {namespace:"luigis_mansion",id:"lydia"}
data modify storage luigis_mansion:data update_data.new_portrait_ghosts append from storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.spooky
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[-1].name set value {namespace:"luigis_mansion",id:"spooky"}
data modify storage luigis_mansion:data update_data.new_portrait_ghosts append from storage luigis_mansion:data update_data.portrait_ghosts.luigis_mansion.miss_petunia
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[-1].name set value {namespace:"luigis_mansion",id:"miss_petunia"}
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[{portrificationized:1b}].portrificationized set value 2b
data modify storage luigis_mansion:data update_data.new_portrait_ghosts[{portrificationized:0b,health:0}].portrificationized set value 1b
data modify storage luigis_mansion:data update_data.portrait_ghosts set from storage luigis_mansion:data update_data.new_portrait_ghosts
data remove storage luigis_mansion:data update_data.new_portrait_ghosts
data modify storage luigis_mansion:data update_data.ghosts.e3_demo.ghost.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:3}]}}
data modify storage luigis_mansion:data update_data.ghosts.e3_demo.puncher.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:3}]}}
data modify storage luigis_mansion:data update_data.ghosts.e3_demo.body_slammer.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:3}]}}
data modify storage luigis_mansion:data update_data.ghosts.e3_demo.basher.loot set value {drop_at_0:{contents:[{name:{namespace:"e3_demo",id:"item/ghost_coin"},count:2}]}}
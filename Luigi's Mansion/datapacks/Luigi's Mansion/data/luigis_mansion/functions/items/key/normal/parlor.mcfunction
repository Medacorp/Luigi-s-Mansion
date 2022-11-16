data modify storage luigis_mansion:data {} merge value {obtained_parlor_key:1b}
scoreboard players set @a[tag=same_room,tag=!looking_at_map,nbt={Inventory:[{tag:{luigis_mansion:{id:"luigis_mansion:game_boy_horror"}}}]}] OpenMapFocus 1
function luigis_mansion:items/key/sound
If valid start = false, it should only ever be called via a function call, not a dialog instance
Fields refering to an entity user their ID score, unless otherwise specified
```
ID                                                      | Valid start | Requirements                                   | Description                                 | Results in...
luigis_mansion:area_1_key                               | Yes         |                                                | Clear area 1 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:area_2_key                               | Yes         |                                                | Clear area 2 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:area_3_key                               | Yes         |                                                | Clear area 3 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:astral_hall_ambush                       | Yes         | Door, entity flame_2                           | Trigger Astrall Hall ghosts                 | Astral Hall wave + 1
luigis_mansion:blackout                                 | Yes         |                                                | Blackout call                               | 
luigis_mansion:bogmire                                  | Yes         | Portrait ghost                                 | Bogmire appears                             | Graveyard wave + 1
luigis_mansion:bogmire_opening                          | Yes         | Two ghosts, one with not_this_ghost tag        | Bogmire battle opening                      | 
luigis_mansion:bogmire_ready                            | Yes         | Entity bogmires_gravestone                     | Gravestone starts glowing                   | 
luigis_mansion:book_of_riddles                          | Yes         |                                                | Book in Study                               | 
luigis_mansion:boolossus                                | Yes         | Intro Boolossus                                | Boos on the Balcony                         | Balcony wave + 1
luigis_mansion:boolossus_opening                        | Yes         | Merged Boolossus                               | Boolossus battle opening                    | 
luigis_mansion:boss_clear                               | Yes         |                                                | Delay between boss capture and warp         | 
luigis_mansion:bowser_collapses                         | Yes         | Fields bowser and bowser_head                  | King Boo captured, Bowser collapses         | King Boo Battle wave + 1
luigis_mansion:bowser_corrects_head                     | Yes         | Field bowser                                   | Bowser turns his head back forward          | 
luigis_mansion:caught_boo                               | Yes         |                                                | Caught Boo call                             | Save progress (choice) + unlock washroom_1 when counter is at 5
luigis_mansion:caught_king_boo                          | Yes         |                                                | Recover Mario's Painting call               | Warp to Ghost Portrificationizer Room + ending dialog
luigis_mansion:chauncey                                 | Yes         | Ghost                                          | Hit Chauncey with a ball                    | Nursery wave + 1
luigis_mansion:chauncey_lets_play                       | Yes         |                                                | Chauncey wakes up                           | Technical flag chauncey_spoke set
luigis_mansion:chauncey_opening                         | Yes         |                                                | Chauncey boss opening                       | 
luigis_mansion:chauncey_rocking_horse                   | No          |                                                | Spawn rocking horse                         | Spawns an attacking opening rocking horse
luigis_mansion:chaunceys_door                           | Yes         | Entity chaunceys_door                          | Camera focus on door with cries             | Technical flag chauncey_cried set
luigis_mansion:close_pipe                               | Yes         | Room Clear Chest                               | Camera focus on the water flow              | 
luigis_mansion:collect_item_freeze                      | Yes         | Field collecting_player                        | Freeze game during collect item             | 
luigis_mansion:collect_item_freeze/not_frozen_item      | No          | Macros namespace and id                        | Unfreeze some items                         | Prevents items in the no_collect_animation from being frozen
luigis_mansion:credits                                  | Yes         | Loaded exterior                                | Game credits                                | luigis_mansion:mansion_rank
luigis_mansion:darkness_is_their_cheese                 | Yes         |                                                | Book in Study                               | 
luigis_mansion:door/locked                              | Yes         | Fields player, door                            | Bashing a door                              | 
luigis_mansion:door/unlock                              | Yes         | Fields player, door                            | Ulocking a door                             | Door unlocked + opened
luigis_mansion:e_gadds_guide_to_ghosts                  | Yes         |                                                | Book in Study                               | 
luigis_mansion:exterior/leaving_the_lab                 | Yes         | Loaded exterior                                | E. Gadd waves you goodbye                   | Warp to mansion
luigis_mansion:exterior/opening                         | Yes         | Loaded exterior                                | Opening scene                               | Warp to mansion + first_entrance tag
luigis_mansion:exterior/opening_cleared                 | Yes         | Loaded exterior                                | Opening scene when rank is loaded           | Warp to Underground Lab + first_entrance tag
luigis_mansion:fall_through_chimney                     | Yes         | Field player                                   | Blackness and bash from chimney             | 
luigis_mansion:falling_chandelier                       | Yes         | Entity chandelier                              | Camera focus on chandelier                  | 
luigis_mansion:fire_element_medal                       | Yes         |                                                | Fire element call                           | 
luigis_mansion:first_key                                | Yes         | Reach 751.0 11 9.0                             | Key in the foyer                            | Spawns key for door lock "parlor"
luigis_mansion:gallery/talk                             | Yes         |                                                | Welcome to the Gallery                      | 
luigis_mansion:gallery/repeat                           | Yes         |                                                | Done appreciating art?                      | Warp to Underground Lab (choice)
luigis_mansion:ghost_gauntlet                           | Yes         |                                                | Enter Vincent Van Gore                      | Technical flag vincent_van_gore_spoke set
luigis_mansion:ghost_gauntlet_spawn                     | Yes         | Ghost with item frame above                    | Camera focus on ghost painting              | 
luigis_mansion:ghost_portrificationizer_room/ending     | Yes         |                                                | Mansion disappeared, finish up              | Forced portrificationizing triggering
luigis_mansion:ghost_portrificationizer_room/repeat     | Yes         |                                                | Want to leave?                              | Warp to Underground Lab, Gallery (choice)
luigis_mansion:ghost_portrificationizer_room/return     | Yes         |                                                | After boss capture                          | 
luigis_mansion:ghost_portrificationizer_room/talk       | Yes         |                                                | Fine piece of work took 20 years            | Clear Ghost Portrificationizer Room
luigis_mansion:go_to_mansion/failure                    | Yes         |                                                | Cannot change mansion                       | 
luigis_mansion:go_to_mansion/hidden                     | Yes         |                                                | The (GCN) Hidden Mansion option             | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load luigis_mansion:hidden mansion) / luigis_mansion:go_to_mansion/failure
luigis_mansion:go_to_mansion/normal                     | Yes         |                                                | The Mansion option                          | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load luigis_mansion:normal mansion) / luigis_mansion:go_to_mansion/failure
luigis_mansion:grabbing_ghosts                          | Yes         |                                                | Ghost who hold you call                     | 
luigis_mansion:guest_room_flips                         | Yes         | Player in mansion                              | Shaking mansion                             | 
luigis_mansion:hidden/blackout_lightning                | Yes         |                                                | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout field set to 1b
luigis_mansion:hidden/blackout_lightning/particles      | No          |                                                | Lamp particles                              | Creates particles at lights
luigis_mansion:hidden/blackout_lightning/reset          | No          |                                                | Mansion cleanup                             | Resets all rooms
luigis_mansion:hidden/blackout_lightning/sound          | No          |                                                | Lamp sounds                                 | Plays sounds at lights
luigis_mansion:hidden/blow_up_moon                      | Yes         |                                                | You shot the moon in the Observatory        | Clear Observatory
luigis_mansion:hidden/first_entrance                    | Yes         | Field player                                   | Look around the foyer                       | Tag first_entrance removed
luigis_mansion:hidden/move_storage_room_wall            | Yes         |                                                | Moving the fake wall                        | Technical flag moved_wall set
luigis_mansion:hidden/release_boos                      | Yes         |                                                | Pressed the Boo hatch button                | Warp to Undergound Lab + luigis_mansion:released_boos_call + technical flag released_boos set
luigis_mansion:ice_element_medal                        | Yes         |                                                | Ice element call                            | 
luigis_mansion:jarvis                                   | Yes         |                                                | Jarvis popped out                           | Jarvis gets kick_players_out tag (choice) + technical flag jarvis_spoke set
luigis_mansion:jarvis_results                           | Yes         | Field result (int)                             | Jarvis freezing game results                | Jarvis gets kick_players_out tag (conditional)
luigis_mansion:king_boo                                 | Yes         | King Boo, Mario                                | King Boo in the Secret Altar                | Secret Altar wave + 1
luigis_mansion:king_boo_appears                         | Yes         | King Boo                                       | King Boo comes out of Bowser                | 
luigis_mansion:king_boo_opening                         | Yes         | Ghost                                          | King Boo battle opening                     | 
luigis_mansion:king_boo_opening_angle                   | No          | Run as Luigi                                   | Luigi crawl direction calculation           | Calculates which direction Luigi crawls towards
luigis_mansion:king_boo_warp                            | Yes         | King Boo                                       | Warped back to the start by the king        | Warped to mansion default position
luigis_mansion:lydias_child_care_diary                  | Yes         |                                                | Book in the Study                           | 
luigis_mansion:madame_clairvoya                         | Yes         | Madame Clairvoya                               | TELL ME THE FUTURE!                         | 
luigis_mansion:mansion_rank                             | Yes         | Loaded exterior                                | Mansion rank reveal                         | Warped to Undergound Lab + map credits / 3ds_remake:gooigi_results
luigis_mansion:mansion_rank/clear_mansion               | No          |                                                | Delete data                                 | Mansion data removed
luigis_mansion:mansion_rank/description                 | No          | Field rank (char)                              | Rank top text                               | Spawns header based on rank
luigis_mansion:mansion_rank/music                       | No          | Field rank (char)                              | Rank music                                  | Plays music based on rank
luigis_mansion:mansion_rank/select                      | No          |                                                | Rank selection                              | Selects rank based on money
luigis_mansion:mansion_rank/title                       | No          | Field rank (char)                              | Rank left text                              | Spawns title based on rank
luigis_mansion:mansion_rank/total                       | No          | Field rank (int)                               | Rank total G                                | Gets total money
luigis_mansion:mario_to_normal                          | Yes         |                                                | Unportrificationizing Mario                 | Warp to exterior + luigis_mansion:credits
luigis_mansion:mario_item/glove                         | Yes         | Madame Clairvoya                               | Show the glove to Madame Clairvoya          | Next mario_item/item dialog + technical flag shown_marios_glove set
luigis_mansion:mario_item/hat                           | Yes         | Madame Clairvoya                               | Show the hat to Madame Clairvoya            | Next mario_item/item dialog + technical flag shown_marios_hat set
luigis_mansion:mario_item/item_1                        | Yes         | Madame Clairvoya                               | First item for Madame Clairvoya             | 
luigis_mansion:mario_item/item_2                        | Yes         | Madame Clairvoya                               | Second item for Madame Clairvoya            | 
luigis_mansion:mario_item/item_3                        | Yes         | Madame Clairvoya                               | Third item for Madame Clairvoya             | 
luigis_mansion:mario_item/item_4                        | Yes         | Madame Clairvoya                               | Fourth item for Madame Clairvoya            | 
luigis_mansion:mario_item/item_5                        | Yes         | Madame Clairvoya                               | Last item for Madame Clairvoya              | 
luigis_mansion:mario_item/letter                        | Yes         | Madame Clairvoya                               | Show the letter to Madame Clairvoya         | Next mario_item/item dialog + technical flag shown_marios_letter set
luigis_mansion:mario_item/shoe                          | Yes         | Madame Clairvoya                               | Show the shoe to Madame Clairvoya           | Next mario_item/item dialog + technical flag shown_marios_shoe set
luigis_mansion:mario_item/star                          | Yes         | Madame Clairvoya                               | Show the star to Madame Clairvoya           | Next mario_item/item dialog + technical flag shown_marios_star set
luigis_mansion:marios_painting                          | Yes         | Mario, field observing_player                  | Spot Mario's Painting in the altar          | 
luigis_mansion:marios_painting_repeat                   | Yes         | Mario, field observing_player                  | Check back on Mario again                   | 
luigis_mansion:meet_e_gadd                              | Yes         | Field walking_player                           | First entrance of the Parlor                | Warp to Underground Lab + luigis_mansion:the_mansion
luigis_mansion:melody_pianissima_composer               | Yes         |                                                | What did the composer have in mind?         | Conservatory wave + 1 or set to -1 (choice) + technical flag melody_pianissima_spoke set
luigis_mansion:melody_pianissima_game                   | Yes         |                                                | In what game did that piece play?           | Conservatory wave + 1 or set to -1 (choice) + technical flag melody_pianissima_spoke set
luigis_mansion:moldy_old_journal                        | Yes         |                                                | Book in Nana's Room                         | 
luigis_mansion:mysterious_power                         | Yes         | Mysterious Power                               | Warped back to the start by boos            | Warped to mansion default position
luigis_mansion:mysterious_power_repeat                  | Yes         | Mysterious Power                               | Warped back to the start again              | Warped to mansion default position
luigis_mansion:nevilles_big_baby_care_diary             | Yes         |                                                | Book in the Study                           | 
luigis_mansion:normal/blackout_lightning                | Yes         |                                                | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout field set to 1b
luigis_mansion:normal/blackout_lightning/particles      | No          |                                                | Lamp particles                              | Creates particles at lights
luigis_mansion:normal/blackout_lightning/reset          | No          |                                                | Mansion cleanup                             | Resets all rooms
luigis_mansion:normal/blackout_lightning/sound          | No          |                                                | Lamp sounds                                 | Plays sounds at lights
luigis_mansion:normal/blow_up_moon                      | Yes         |                                                | You shot the moon in the Observatory        | Clear Observatory
luigis_mansion:normal/first_entrance                    | Yes         | Field player                                   | Look around the foyer                       | Tag first_entrance removed
luigis_mansion:normal/move_storage_room_wall            | Yes         |                                                | Moving the fake wall                        | Technical flag moved_wall set
luigis_mansion:normal/release_boos                      | Yes         |                                                | Pressed the Boo hatch button                | luigis_mansion:released_boos_call + technical flag released_boos set
luigis_mansion:observatory_path                         | Yes         | Mario item                                     | Observatory path spawned in                 | Technical flag observatory_path set
luigis_mansion:observe_moon                             | Yes         | Fields observing_player and observing_position | Look through the telescope                  | Observatory wave + 1
luigis_mansion:portrait_ghosts                          | Yes         |                                                | Portrait ghosts call                        | 
luigis_mansion:portraits                                | Yes         | Entity talking_portrait_1 through 5            | WHO PUT OUT MY CANDLES!?                    | Parlor wave + 1
luigis_mansion:portrificationizing                      | Yes         |                                                | Portrificationizing the ghosts              | Get portraits, Save progress (choice), (warp to Underground Lab + luigis_mansion:undergound_lab) / (save high score + luigis_mansion:mario_to_normal)
luigis_mansion:portrificationizing/get_big_pearl        | No          |                                                | Portrificationizing step                    | Gets the Big Pearl count values
luigis_mansion:portrificationizing/get_bill             | No          |                                                | Portrificationizing step                    | Gets the Bill count values
luigis_mansion:portrificationizing/get_blue_sapphire    | No          |                                                | Portrificationizing step                    | Gets the Blue Sapphire count values
luigis_mansion:portrificationizing/get_gold_bar         | No          |                                                | Portrificationizing step                    | Gets the Gold Bar count values
luigis_mansion:portrificationizing/get_gold_coin        | No          |                                                | Portrificationizing step                    | Gets the Gold Coin count values
luigis_mansion:portrificationizing/get_gold_diamond     | No          |                                                | Portrificationizing step                    | Gets the Gold Diamond count values
luigis_mansion:portrificationizing/get_green_emerald    | No          |                                                | Portrificationizing step                    | Gets the Green Emerald count values
luigis_mansion:portrificationizing/get_high_score       | No          |                                                | Portrificationizing step                    | Gets the previous high score value
luigis_mansion:portrificationizing/get_medium_pearl     | No          |                                                | Portrificationizing step                    | Gets the Medium Pearl count values
luigis_mansion:portrificationizing/get_money_loop       | No          | Macros namespace and id                        | Portrificationizing step                    | Loop for going over all players' money
luigis_mansion:portrificationizing/get_red_diamond      | No          |                                                | Portrificationizing step                    | Gets the Red Diamond count values
luigis_mansion:portrificationizing/get_red_ruby         | No          |                                                | Portrificationizing step                    | Gets the Red Ruby count values
luigis_mansion:portrificationizing/get_silver_diamond   | No          |                                                | Portrificationizing step                    | Gets the Silver Diamond count values
luigis_mansion:portrificationizing/get_small_pearl      | No          |                                                | Portrificationizing step                    | Gets the Small Pearl count values
luigis_mansion:portrificationizing/get_total_score      | No          |                                                | Portrificationizing step                    | Gets the total score values
luigis_mansion:portrificationizing/get_total_score_loop | No          |                                                | Portrificationizing step                    | Loop for going over all players' total score
luigis_mansion:portrificationizing/load_score_index     | No          |                                                | Portrificationizing step                    | Fetch previous high score for current index
luigis_mansion:portrificationizing/save_high_score      | No          |                                                | Portrificationizing step                    | Save new high score
luigis_mansion:release_boos_spawn                       | No          |                                                | Released Boos spawning                      | Spawns the 50 Boos and King Boo from the escape cutscene
luigis_mansion:released_boos_call                       | Yes         |                                                | Thanks for flushing them out...             | luigis_mansion:released_boos_talk
luigis_mansion:released_boos_talk                       | Yes         |                                                | I call it the Boo Radar!                    | luigis_mansion:underground_lab + obtain item Boo Radar
luigis_mansion:room_clear_chest_spawns                  | Yes         | Field scanned_entity                           | Camera focus on room clear chest            | 
luigis_mansion:scan/entity/biff_atlas                   | Yes         | Fields scanned_entity and scanning_player      | Scan Biff Atlas                             | 
luigis_mansion:scan/entity/blue_clockwork_soldier       | Yes         | Fields scanned_entity and scanning_player      | Scan blue Clockwork Soldier                 | 
luigis_mansion:scan/entity/chauncey                     | Yes         | Fields scanned_entity and scanning_player      | Scan Chauncey                               | 
luigis_mansion:scan/entity/e_gadd                       | Yes         | Fields scanned_entity and scanning_player      | Scan E. Gadd                                | 
luigis_mansion:scan/entity/floating_whirlindas_female   | Yes         | Fields scanned_entity and scanning_player      | Scan Miss. Whirlinda                        | 
luigis_mansion:scan/entity/floating_whirlindas_male     | Yes         | Fields scanned_entity and scanning_player      | Scan Mr. Whirlinda                          | 
luigis_mansion:scan/entity/green_clockwork_soldier      | Yes         | Fields scanned_entity and scanning_player      | Scan green Clockwork Soldier                | 
luigis_mansion:scan/entity/henry                        | Yes         | Fields scanned_entity and scanning_player      | Scan Henry                                  | 
luigis_mansion:scan/entity/lydia                        | Yes         | Fields scanned_entity and scanning_player      | Scan Lydia                                  | 
luigis_mansion:scan/entity/madame_clairvoya             | Yes         | Fields scanned_entity and scanning_player      | Scan Madame Clairvoya                       | 
luigis_mansion:scan/entity/melody_pianissima            | Yes         | Fields scanned_entity and scanning_player      | Scan Melody Pianissima                      | 
luigis_mansion:scan/entity/miss_petunia                 | Yes         | Fields scanned_entity and scanning_player      | Scan Miss. Petunia                          | 
luigis_mansion:scan/entity/mr_luggs                     | Yes         | Fields scanned_entity and scanning_player      | Scan Mr. Luggs                              | 
luigis_mansion:scan/entity/nana                         | Yes         | Fields scanned_entity and scanning_player      | Scan Nana                                   | 
luigis_mansion:scan/entity/neville                      | Yes         | Fields scanned_entity and scanning_player      | Scan Neville                                | 
luigis_mansion:scan/entity/orville                      | Yes         | Fields scanned_entity and scanning_player      | Scan Orville                                | 
luigis_mansion:scan/entity/pink_clockwork_soldier       | Yes         | Fields scanned_entity and scanning_player      | Scan pink Clockwork Soldier                 | 
luigis_mansion:scan/entity/shivers                      | Yes         | Fields scanned_entity and scanning_player      | Scan Shivers                                | 
luigis_mansion:scan/entity/sir_weston                   | Yes         | Fields scanned_entity and scanning_player      | Scan Sir weston                             | 
luigis_mansion:scan/entity/spooky                       | Yes         | Fields scanned_entity and scanning_player      | Scan Spooky                                 | 
luigis_mansion:scan/entity/sue_pea                      | Yes         | Fields scanned_entity and scanning_player      | Scan Sue Pea                                | 
luigis_mansion:scan/entity/uncle_grimmly                | Yes         | Fields scanned_entity and scanning_player      | Scan Uncle Grimmly                          | 
luigis_mansion:scan/entity/vincent_van_gore             | Yes         | Fields scanned_entity and scanning_player      | Scan Vincent Van Gore                       | 
luigis_mansion:scan/get_scanned_entity                  | No          | Macro scanned_entity                           | Get scanned entity                          | Tags entity matching the UUID of the scanned_entity field as scanned_entity
luigis_mansion:scan/scanner/1                           | Yes         | Field scanning_player                          | Dreadful picture, candle might be important | 
luigis_mansion:scan/scanner/2                           | Yes         | Field scanning_player                          | Something cold in there                     | 
luigis_mansion:scan/scanner/3                           | Yes         | Field scanning_player                          | I liked the bottom bunk better              | 
luigis_mansion:scan/scanner/4                           | Yes         | Field scanning_player                          | No toilet paper shortage                    | 
luigis_mansion:scan/scanner/5                           | Yes         | Field scanning_player                          | Not my style                                | 
luigis_mansion:scan/scanner/6                           | Yes         | Field scanning_player                          | Cute red polka dots                         | 
luigis_mansion:scan/scanner/7                           | Yes         | Field scanning_player                          | Picture, not art                            | 
luigis_mansion:scan/scanner/8                           | Yes         | Field scanning_player                          | Looks old, how much money?                  | 
luigis_mansion:scan/scanner/9                           | Yes         | Field scanning_player                          | Why only this one frozen?                   | 
luigis_mansion:scan/scanner/10                          | Yes         | Field scanning_player                          | Look tough wearing this                     | 
luigis_mansion:scan/scanner/11                          | Yes         | Field scanning_player                          | Don't open without asking                   | 
luigis_mansion:scan/scanner/12                          | Yes         | Field scanning_player                          | Nothing unusual, boring                     | 
luigis_mansion:scan/scanner/13                          | Yes         | Field scanning_player                          | I can't reach that directly                 | 
luigis_mansion:scan/scanner/14                          | Yes         | Field scanning_player                          | Full of moth holes                          | 
luigis_mansion:scan/scanner/15                          | Yes         | Field scanning_player                          | Not passing white-glove test                | 
luigis_mansion:scan/scanner/16                          | Yes         | Field scanning_player                          | Pile odds and ends everywhere, filthy       | 
luigis_mansion:scan/scanner/17                          | Yes         | Field scanning_player                          | Nice and clean                              | 
luigis_mansion:scan/scanner/18                          | Yes         | Field scanning_player                          | Can't read from here                        | 
luigis_mansion:scan/scanner/19                          | Yes         | Field scanning_player                          | How old is this?                            | 
luigis_mansion:scan/scanner/20                          | Yes         | Field scanning_player                          | Wanting one for a while                     | 
luigis_mansion:scan/scanner/21                          | Yes         | Field scanning_player                          | Always wanted one of there                  | 
luigis_mansion:scan/scanner/22                          | Yes         | Field scanning_player                          | What kind of picture?                       | 
luigis_mansion:scan/scanner/23                          | Yes         | Field scanning_player                          | No use for this                             | 
luigis_mansion:scan/scanner/24                          | Yes         | Field scanning_player                          | Not interesting                             | 
luigis_mansion:scan/scanner/25                          | Yes         | Field scanning_player                          | Weird                                       | 
luigis_mansion:scan/scanner/26                          | Yes         | Field scanning_player                          | Poor thing                                  | 
luigis_mansion:scan/scanner/27                          | Yes         | Field scanning_player                          | Treat an animal that way? No!!              | 
luigis_mansion:scan/scanner/28                          | Yes         | Field scanning_player                          | Pretty penny                                | 
luigis_mansion:scan/scanner/29                          | Yes         | Field scanning_player                          | Something may be in there                   | 
luigis_mansion:scan/scanner/30                          | Yes         | Field scanning_player                          | Classic, how much money?                    | 
luigis_mansion:scan/scanner/31                          | Yes         | Field scanning_player                          | Just a photograph                           | 
luigis_mansion:scan/scanner/32                          | Yes         | Field scanning_player                          | Will break if sat on                        | 
luigis_mansion:scan/scanner/33                          | Yes         | Field scanning_player                          | Comfy bed                                   | 
luigis_mansion:scan/scanner/34                          | Yes         | Field scanning_player                          | Sleep until dawn                            | 
luigis_mansion:scan/scanner/35                          | Yes         | Field scanning_player                          | Who is this?                                | 
luigis_mansion:scan/scanner/36                          | Yes         | Field scanning_player                          | Showing off?                                | 
luigis_mansion:scan/scanner/37                          | Yes         | Field scanning_player                          | Fancy                                       | 
luigis_mansion:scan/scanner/38                          | Yes         | Field scanning_player                          | Who designed this?!                         | 
luigis_mansion:scan/scanner/39                          | Yes         | Field scanning_player                          | Fishy here                                  | 
luigis_mansion:scan/scanner/40                          | Yes         | Field scanning_player                          | A few quick jabs                            | 
luigis_mansion:scan/scanner/41                          | Yes         | Field scanning_player                          | Eh, bikes                                   | 
luigis_mansion:scan/scanner/42                          | Yes         | Field scanning_player                          | I'm a good runner                           | 
luigis_mansion:scan/scanner/43                          | Yes         | Field scanning_player                          | Pointy objects                              | 
luigis_mansion:scan/scanner/44                          | Yes         | Field scanning_player                          | Old, still nice tone                        | 
luigis_mansion:scan/scanner/45                          | Yes         | Field scanning_player                          | Should I play?                              | 
luigis_mansion:scan/scanner/46                          | Yes         | Field scanning_player                          | Can't play piano                            | 
luigis_mansion:scan/scanner/47                          | Yes         | Field scanning_player                          | Fun shadow puppet place                     | 
luigis_mansion:scan/scanner/48                          | Yes         | Field scanning_player                          | Unused as of late                           | 
luigis_mansion:scan/scanner/49                          | Yes         | Field scanning_player                          | That's an antique?                          | 
luigis_mansion:scan/scanner/50                          | Yes         | Field scanning_player                          | Raise pigeons here                          | 
luigis_mansion:scan/scanner/51                          | Yes         | Field scanning_player                          | What in the world?                          | 
luigis_mansion:scan/scanner/52                          | Yes         | Field scanning_player                          | Belongs in the bathroom                     | 
luigis_mansion:scan/scanner/53                          | Yes         | Field scanning_player                          | Fabulous!                                   | 
luigis_mansion:scan/scanner/54                          | Yes         | Field scanning_player                          | Exquisite                                   | 
luigis_mansion:scan/scanner/55                          | Yes         | Field scanning_player                          | TOO ordinary                                | 
luigis_mansion:scan/scanner/56                          | Yes         | Field scanning_player                          | Give it a quick vacuum                      | 
luigis_mansion:scan/scanner/58                          | Yes         | Field scanning_player                          | Adds to atmosphere                          | 
luigis_mansion:scan/scanner/59                          | Yes         | Field scanning_player                          | Looks normal                                | 
luigis_mansion:scan/scanner/60                          | Yes         | Field scanning_player                          | Looks hot, cool it off                      | 
luigis_mansion:scan/scanner/61                          | Yes         | Field scanning_player                          | Delightful                                  | 
luigis_mansion:scan/scanner/62                          | Yes         | Field scanning_player                          | Like a real person                          | 
luigis_mansion:scan/scanner/63                          | Yes         | Field scanning_player                          | Old and fragile                             | 
luigis_mansion:scan/scanner/64                          | Yes         | Field scanning_player                          | Realistic fake mansion                      | 
luigis_mansion:scan/scanner/65                          | Yes         | Field scanning_player                          | Simple design with dash of elegance         | 
luigis_mansion:scan/scanner/66                          | Yes         | Field scanning_player                          | Finicky about hats                          | 
luigis_mansion:scan/scanner/67                          | Yes         | Field scanning_player                          | Comfortable, stick with my buds             | 
luigis_mansion:scan/scanner/68                          | Yes         | Field scanning_player                          | Pricey                                      | 
luigis_mansion:scan/scanner/69                          | Yes         | Field scanning_player                          | interior decorating                         | 
luigis_mansion:scan/scanner/70                          | Yes         | Field scanning_player                          | Not watered in a long time                  | 
luigis_mansion:scan/scanner/71                          | Yes         | Field scanning_player                          | I had one of these!                         | 
luigis_mansion:scan/scanner/72                          | Yes         | Field scanning_player                          | Flower season                               | 
luigis_mansion:scan/scanner/73                          | Yes         | Field scanning_player                          | If an antique, I'll eat my hat!             | 
luigis_mansion:scan/scanner/74                          | Yes         | Field scanning_player                          | Could gaze at for hours                     | 
luigis_mansion:scan/scanner/75                          | Yes         | Field scanning_player                          | Good spot to hide savings                   | 
luigis_mansion:scan/scanner/76                          | Yes         | Field scanning_player                          | Doesn't look sturdy                         | 
luigis_mansion:scan/scanner/77                          | Yes         | Field scanning_player                          | Handy in case of fire                       | 
luigis_mansion:scan/scanner/78                          | Yes         | Field scanning_player                          | Yuck! Filthy!                               | 
luigis_mansion:scan/scanner/79                          | Yes         | Field scanning_player                          | Eeek! Oh, it's a chair                      | 
luigis_mansion:scan/scanner/80                          | Yes         | Field scanning_player                          | Do Boos wash faces?                         | 
luigis_mansion:scan/scanner/81                          | Yes         | Field scanning_player                          | Makes me feel sadness                       | 
luigis_mansion:scan/scanner/82                          | Yes         | Field scanning_player                          | Chore to keep this place clean              | 
luigis_mansion:scan/scanner/83                          | Yes         | Field scanning_player                          | Hats should be hand-washed                  | 
luigis_mansion:scan/scanner/84                          | Yes         | Field scanning_player                          | Win a championship for this?                | 
luigis_mansion:scan/scanner/85                          | Yes         | Field scanning_player                          | Get some do-it-yourself books               | 
luigis_mansion:scan/scanner/86                          | Yes         | Field scanning_player                          | Quite taken with this                       | 
luigis_mansion:scan/scanner/87                          | Yes         | Field scanning_player                          | If only there were cookies                  | 
luigis_mansion:scan/scanner/88                          | Yes         | Field scanning_player                          | Candlelight makes rooms beautiful           | 
luigis_mansion:scan/scanner/89                          | Yes         | Field scanning_player                          | Candle on the table is weird                | 
luigis_mansion:scan/scanner/90                          | Yes         | Field scanning_player                          | Hunk of junk of a chair! I have standards!  | 
luigis_mansion:scan/scanner/91                          | Yes         | Field scanning_player                          | Are there any goodies?                      | 
luigis_mansion:scan/scanner/92                          | Yes         | Field scanning_player                          | Don't waste water                           | 
luigis_mansion:scan/scanner/93                          | Yes         | Field scanning_player                          | What's written on that sign? MR. BONES      | 
luigis_mansion:scan/scanner/94                          | Yes         | Field scanning_player                          | Lovely crystal ball                         | 
luigis_mansion:scan/scanner/95                          | Yes         | Field scanning_player                          | Can't plan for this                         | 
luigis_mansion:scan/scanner/96                          | Yes         | Field scanning_player                          | Huh?                                        | 
luigis_mansion:scan/scanner/97                          | Yes         | Field scanning_player                          | Would relighting do any good?               | 
luigis_mansion:scan/scanner/98                          | Yes         | Field scanning_player                          | Disturbing                                  | 
luigis_mansion:scan/scanner/99                          | Yes         | Field scanning_player                          | Tall angel statue                           | 
luigis_mansion:scan/scanner/100                         | Yes         | Field scanning_player                          | Mario can lift this                         | 
luigis_mansion:scan/scanner/101                         | Yes         | Field scanning_player                          | Very elegant                                | 
luigis_mansion:scan/scanner/102                         | Yes         | Field scanning_player                          | Those will fall if shaken                   | 
luigis_mansion:scan/scanner/103                         | Yes         | Field scanning_player                          | I want to visit outer space                 | 
luigis_mansion:scan/scanner/104                         | Yes         | Field scanning_player                          | Looks fun to twirl                          | 
luigis_mansion:scan/scanner/105                         | Yes         | Field scanning_player                          | Need time to straighten this mess           | 
luigis_mansion:scan/scanner/106                         | Yes         | Field scanning_player                          | Why is it long and slender?                 | 
luigis_mansion:scan/scanner/107                         | Yes         | Field scanning_player                          | This is in the way                          | 
luigis_mansion:scan/scanner/108                         | Yes         | Field scanning_player                          | I want to spin that                         | 
luigis_mansion:scan/scanner/109                         | Yes         | Field scanning_player                          | Frozen solid, I'm getting cold              | 
luigis_mansion:scan/scanner/110                         | Yes         | Field scanning_player                          | Looks cold, hey my breath!                  | 
luigis_mansion:scan/scanner/111                         | Yes         | Field scanning_player                          | Fire on a cold night feels good             | 
luigis_mansion:scan/scanner/112                         | Yes         | Field scanning_player                          | This door won't open                        | 
luigis_mansion:scan/scanner/124                         | Yes         | Field scanning_player                          | Something is written here? Japan            | 
luigis_mansion:scan/scanner/125                         | Yes         | Field scanning_player                          | Not so scary                                | 
luigis_mansion:scan/scanner/126                         | Yes         | Field scanning_player                          | Interesting shape                           | 
luigis_mansion:scan/scanner/127                         | Yes         | Field scanning_player                          | Oh, what's this?                            | 
luigis_mansion:scan/scanner/128                         | Yes         | Field scanning_player                          | What's this?                                | 
luigis_mansion:scan/scanner/129                         | Yes         | Field scanning_player                          | Used recently                               | 
luigis_mansion:scan/scanner/130                         | Yes         | Field scanning_player                          | Doors should open, right?                   | 
luigis_mansion:scan/scanner/131                         | Yes         | Field scanning_player                          | I hate broken things                        | 
luigis_mansion:scan/scanner/player                      | Yes         | Fields scanned_entity and scanning_player      | Scan a player                               | Different message based on health, selected item, catching ghosts, distance, and nearby coins
luigis_mansion:sir_weston                               | Yes         |                                                | HOT! HOT! OH VERY HOT!                      | Technical flag sir_weston_spoke set
luigis_mansion:sue_pea                                  | Yes         | Luigi                                          | Don't try to wake me...                     | Technical flag sue_pea_spoke set
luigis_mansion:the_book_of_pericles                     | Yes         |                                                | Book in the Study                           | 
luigis_mansion:the_mansion                              | Yes         |                                                | So you believe the mansion exists...        | Warp to Training Room + clear Underground Lab
luigis_mansion:toad_1                                   | Yes         |                                                | Toad in the Foyer                           | Clear room 1 and 2 (choice) + technical flag toad_1_spoke set + Save progress (choice)
luigis_mansion:toad_1_repeat                            | Yes         |                                                | Talking with Toad in Foyer again            | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_2                                   | Yes         |                                                | Toad on Balcony                             | Clear room 6
luigis_mansion:toad_2_repeat                            | Yes         |                                                | Talking with Toad on Balcony again          | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_3                                   | Yes         |                                                | Toad in Washroom                            | Clear room 19 (choice)
luigis_mansion:toad_3_locked_door                       | Yes         |                                                | Erm... OCCUPIED!                            | 
luigis_mansion:toad_3_repeat                            | Yes         |                                                | Talking with Toad in Washroom again         | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_4                                   | Yes         |                                                | Toad in Courtyard                           | Technical flag toad_4_happy set (choice)
luigis_mansion:toad_4_look                              | Yes         |                                                | Something terrible is in that well...       | 
luigis_mansion:toad_4_repeat                            | Yes         |                                                | Talking with Toad in Courtyard again        | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_5                                   | Yes         |                                                | Toad on the phone                           | Technical flag telephone_1 and telephone_2 (choice) set
luigis_mansion:training_room/option                     | Yes         |                                                | Multiple programs available, choose         | Any valid training room dialog
luigis_mansion:training_room/program                    | Yes         |                                                | Vanilla training room program               | Warp to Underground lab or Gallery (conditional choice) + clear Training Room
luigis_mansion:twins                                    | Yes         |                                                | The twins appear                            | The Twins' Room wave + 1 (choice)
luigis_mansion:uncle_grimmly                            | Yes         |                                                | E. Gadd on the phone                        | Telephone Room wave + 1 + technical flag telephone_3 set
luigis_mansion:underground_lab                          | Yes         |                                                | Where to, Luigi?                            | Any go_to_mansion dialog, any amiibo dialog, warp to Ghost Portrificationizer Room, Gallery or Training Room (choice)
luigis_mansion:vincent_van_gore                         | Yes         |                                                | Only one of my creations eezt left?         | 
luigis_mansion:water_element_medal                      | Yes         |                                                | Water element call                          | 
3ds_remake:amiibo/boo                                   | Yes         |                                                | Toggle Boo amiibo                           | Toggle Boo amiibo
3ds_remake:amiibo/luigi                                 | Yes         |                                                | Toggle Luigi amiibo                         | Toggle Luigi amiibo
3ds_remake:amiibo/mario                                 | Yes         |                                                | Toggle Mario amiibo                         | Toggle Mario amiibo
3ds_remake:amiibo/toad                                  | Yes         |                                                | Toggle Toad amiibo                          | Toggle Toad amiibo
3ds_remake:blockade_spawns                              | Yes         | Door                                           | Camera focus on spawning blockade           | 
3ds_remake:dog_house                                    | Yes         | Entity dog_house                               | Camera focus on sparkling dog house         | 
3ds_remake:future_e_gadd                                | Yes         |                                                | Call from Evershade Valley                  | luigis_mansion:underground_lab
3ds_remake:gallery/found                                | Yes         |                                                | Install the gameBoy Horror Part             | Clear gallery + add Scan Furniture GameBoy Horror option
3ds_remake:gallery/no_found                             | Yes         |                                                | Go Find the GameBoy Horror Part             | 
3ds_remake:go_to_mansion/hidden                         | Yes         |                                                | The (3DS) Hidden Mansion option             | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load 3ds_remake:hidden mansion) / luigis_mansion:go_to_mansion/failure
3ds_remake:gooigi_results                               | Yes         |                                                | How well did Gooigi do?                     | Map credits + delete mansion data
3ds_remake:hidden/blackout_lightning                    | Yes         |                                                | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout flag set to 1b
3ds_remake:hidden/blackout_lightning/particles          | No          |                                                | Lamp particles                              | Creates particles at l
3ds_remake:hidden/blackout_lightning/reset              | No          |                                                | Mansion cleanup                             | Resets all rooms
3ds_remake:hidden/blackout_lightning/sound              | No          |                                                | Lamp sounds                                 | Plays sounds at lights
3ds_remake:hidden/blow_up_moon                          | Yes         |                                                | You shot the moon in the Observatory        | Clear Observatory
3ds_remake:hidden/first_entrance                        | Yes         | Field player                                   | Look around the foyer                       | 
3ds_remake:hidden/move_storage_room_wall                | Yes         |                                                | Moving the fake wall                        | Technical flag moved_wall set
3ds_remake:hidden/release_boos                          | Yes         |                                                | Pressed the Boo hatch button                | luigis_mansion:released_boos_call + technical flag released_boos set
3ds_remake:portrait_battle/clear                        | Yes         |                                                | Complete a portrait battle                  | Get portraits, save score, warp to Gallery or 3ds_remake:portrait_battle/start (choice)
3ds_remake:portrait_battle/start                        | Yes         |                                                | Start a portrait battle                     | 
3ds_remake:portrificationizing/convert_time             | No          |                                                | Portrificationizing step                    | Converts a single into into several to depict the time value correctly
3ds_remake:scan/entity/jarvis                           | Yes         | Fields scanned_entity and scanning_player      | Scan Jarvis                                 | 
3ds_remake:scan/scanner/1                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/2                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/3                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/4                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/5                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/6                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/7                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/8                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/9                               | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/10                              | Yes         | Field scanning_player                          |                                             | 
3ds_remake:scan/scanner/gooigi                          | Yes         | Field scanning_player                          | Scan furniture as Gooigi                    | 
3ds_remake:toad_heal                                    | Yes         |                                                | Toad Amiibo result                          | Spawns a huge heart at all players in the room
3ds_remake:training_room                                | Yes         |                                                | 3DS Remake training program                 | Warp to Underground Lab or Gallery (conditional) + clear Training Room
e3_demo:amiibo/e_gadd                                   | Yes         |                                                | Toggle E. Gadd amiibo                       | Toggle E. Gadd amiibo
e3_demo:e_gadd_call                                     | Yes         |                                                | Time is up, back to the lab                 | Warp to Ghost Portrificaionizer Room + e3_demo:just_money / e3_demo:portrait_ghosts
e3_demo:exterior/leaving_the_lab                        | Yes         | Loaded exterior                                | Entering the mansion E3 demo variant        | Warp to mansion
e3_demo:first_entrance                                  | Yes         | Field player                                   | Look around the entrance                    | 
e3_demo:first_key                                       | Yes         | Reach 751.0 11 9.0                             | Key in the entrance                         | Spawns key for door lock "living_room"
e3_demo:go_to_mansion/original                          | Yes         |                                                | The Original Mansion option                 | (Warp to exterior + e3_demo:exterior/leaving_the_lab + load e3_demo:original mansion) / luigis_mansion:go_to_mansion/failure
e3_demo:just_money                                      | Yes         |                                                | Nothing to portrificationize                | Save progress (choice) + save high score + warp to exterior + luigis_mansion:credits
e3_demo:meet_e_gadd                                     | Yes         | Field walking_player                           | First entrance of the Living Room           | Warp to Underground Lab + luigis_mansion:the_mansion
e3_demo:portrait_ghosts                                 | Yes         |                                                | Go portrificationize those ghosts           | Forced portrificationizing triggering
e3_demo:portrificationizing                             | Yes         |                                                | Portrificationizing                         | Get portraits, save progress (choice) + (warp to Underground Lab + luigis_mansion:undergound_lab) / (save high score + warp to exterior + luigis_mansion:credits)
e3_demo:portrificationizing/get_ghost_coin              | No          |                                                | Portrificationizing step                    | Gets the Ghost Coin count values
extensive_training:amiibo/koopa                         | Yes         |                                                | Toggle Koopa amiibo                         | Toggle Koopa amiibo
extensive_training:training_room/endless                | Yes         |                                                | Endless training room program               | Warp to Underground Lab, saves score
extensive_training:training_room/pvp                    | Yes         |                                                | PVP training room program                   | Warp to Underground Lab or extensive_training:training_room/pvp (choice)
extensive_training:training_room/pvp_defeat             | No          | Run as player                                  | You are out of the contest                  | Sets animation, shows message, prevents ghosts targeting player
extensive_training:training_room/speedrun               | Yes         |                                                | Speedrun training room program              | Warp to Underground Lab, saves score (conditional)
```

If valid start = false, it should only ever be called via a function call, not a dialog instance
Fields refering to an entity use their ID score, unless otherwise specified
```
ID                                                     | Valid start | Requirements                                    | Description                                 | Results in...
luigis_mansion:area_1_key                              | Yes         |                                                 | Clear area 1 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:area_2_key                              | Yes         |                                                 | Clear area 2 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:area_3_key                              | Yes         |                                                 | Clear area 3 call                           | Warp to Ghost Portrificationizer Room + return / talk dialog
luigis_mansion:astral_hall_ambush                      | Yes         | Door, entity flame_2                            | Trigger Astrall Hall ghosts                 | Astral Hall wave + 1
luigis_mansion:blackout                                | Yes         |                                                 | Blackout call                               | 
luigis_mansion:bogmire                                 | Yes         | Portrait ghost                                  | Bogmire appears                             | Graveyard wave + 1
luigis_mansion:bogmire_opening                         | Yes         | Two ghosts, one with not_this_ghost tag         | Bogmire battle opening                      | 
luigis_mansion:bogmire_ready                           | Yes         | Entity bogmires_gravestone                      | Gravestone starts glowing                   | 
luigis_mansion:book_of_riddles                         | Yes         |                                                 | Book in Study                               | 
luigis_mansion:boolossus                               | Yes         | Intro Boolossus                                 | Boos on the Balcony                         | Balcony wave + 1
luigis_mansion:boolossus_opening                       | Yes         | Merged Boolossus                                | Boolossus battle opening                    | 
luigis_mansion:boss_clear                              | Yes         |                                                 | Delay between boss capture and warp         | 
luigis_mansion:bowser_collapses                        | Yes         | Fields bowser and bowser_head                   | King Boo captured, Bowser collapses         | King Boo Battle wave + 1
luigis_mansion:bowser_corrects_head                    | Yes         | Field bowser                                    | Bowser turns his head back forward          | 
luigis_mansion:caught_boo                              | Yes         |                                                 | Caught Boo call                             | Save progress (choice) + unlock washroom_1 when counter is at 5
luigis_mansion:caught_king_boo                         | Yes         |                                                 | Recover Mario's Painting call               | Warp to Ghost Portrificationizer Room + ending dialog
luigis_mansion:chauncey                                | Yes         | Ghost                                           | Hit Chauncey with a ball                    | Nursery wave + 1
luigis_mansion:chauncey_lets_play                      | Yes         |                                                 | Chauncey wakes up                           | Technical flag chauncey_spoke set
luigis_mansion:chauncey_opening                        | Yes         |                                                 | Chauncey boss opening                       | 
luigis_mansion:chauncey_rocking_horse                  | No          |                                                 | Spawn rocking horse                         | Spawns an attacking opening rocking horse
luigis_mansion:chaunceys_door                          | Yes         | Entity chaunceys_door                           | Camera focus on door with cries             | Technical flag chauncey_cried set
luigis_mansion:close_pipe                              | Yes         | Waterfall                                       | Camera focus on the waterfall               | Technical flag closed_pipe set
luigis_mansion:collect_item_freeze                     | Yes         | Field collecting_player                         | Freeze game during collect item             | 
luigis_mansion:collect_item_freeze/not_frozen_item     | No          | Macros namespace and id                         | Unfreeze some items                         | Prevents items in the no_collect_animation from being frozen
luigis_mansion:credits                                 | Yes         | Loaded exterior                                 | Game credits                                | luigis_mansion:mansion_rank
luigis_mansion:darkness_is_their_cheese                | Yes         |                                                 | Book in Study                               | 
luigis_mansion:door/locked                             | Yes         | Fields player, door                             | Bashing a door                              | 
luigis_mansion:door/unlock                             | Yes         | Fields player, door                             | Ulocking a door                             | Door unlocked + opened
luigis_mansion:e_gadds_guide_to_ghosts                 | Yes         |                                                 | Book in Study                               | 
luigis_mansion:exterior/leaving_the_lab                | Yes         | Loaded exterior, field player                   | E. Gadd waves you goodbye                   | Warp to mansion
luigis_mansion:exterior/opening                        | Yes         | Loaded exterior, field player                   | Opening scene                               | Warp to mansion + first_entrance tag
luigis_mansion:exterior/opening_cleared                | Yes         | Loaded exterior, field player                   | Opening scene when rank is loaded           | Warp to Underground Lab + first_entrance tag
luigis_mansion:fall_through_chimney                    | Yes         | Field player                                    | Blackness and bash from chimney             | 
luigis_mansion:falling_chandelier                      | Yes         | Entity chandelier                               | Camera focus on chandelier                  | 
luigis_mansion:fire_element_medal                      | Yes         |                                                 | Fire element call                           | 
luigis_mansion:first_key                               | Yes         | Reach 751.0 11 9.0                              | Key in the foyer                            | Spawns key for door lock "parlor"
luigis_mansion:gallery/talk                            | Yes         |                                                 | Welcome to the Gallery                      | 
luigis_mansion:gallery/repeat                          | Yes         |                                                 | Done appreciating art?                      | Warp to Underground Lab (choice)
luigis_mansion:ghost_art                               | Yes         | Field scanned_entity (uuid)                     | Camera focus on ghost art furniture         | Spawns all ghosts with the tag "ghost_art_spawn" in the same room
luigis_mansion:ghost_gauntlet                          | Yes         |                                                 | Enter Vincent Van Gore                      | Technical flag vincent_van_gore_spoke set
luigis_mansion:ghost_portrificationizer_room/ending    | Yes         |                                                 | Mansion disappeared, finish up              | Forced portrificationizing triggering
luigis_mansion:ghost_portrificationizer_room/repeat    | Yes         |                                                 | Want to leave?                              | Warp to Underground Lab, Gallery (choice)
luigis_mansion:ghost_portrificationizer_room/return    | Yes         |                                                 | After boss capture                          | 
luigis_mansion:ghost_portrificationizer_room/talk      | Yes         |                                                 | Fine piece of work took 20 years            | Clear Ghost Portrificationizer Room
luigis_mansion:go_to_mansion/failure                   | Yes         |                                                 | Cannot change mansion                       | 
luigis_mansion:go_to_mansion/hidden                    | Yes         |                                                 | The (GCN) Hidden Mansion option             | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load luigis_mansion:hidden mansion) / luigis_mansion:go_to_mansion/failure
luigis_mansion:go_to_mansion/normal                    | Yes         |                                                 | The Mansion option                          | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load luigis_mansion:normal mansion) / luigis_mansion:go_to_mansion/failure
luigis_mansion:grabbing_ghosts                         | Yes         |                                                 | Ghost who hold you call                     | 
luigis_mansion:guest_room_flips                        | Yes         | Player in mansion                               | Shaking mansion                             | 
luigis_mansion:hidden/blackout_lightning               | Yes         |                                                 | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout field set to 1b
luigis_mansion:hidden/blackout_lightning/particles     | No          |                                                 | Lamp particles                              | Creates particles at lights
luigis_mansion:hidden/blackout_lightning/reset         | No          |                                                 | Mansion cleanup                             | Resets all rooms
luigis_mansion:hidden/blackout_lightning/sound         | No          |                                                 | Lamp sounds                                 | Plays sounds at lights
luigis_mansion:hidden/blow_up_moon                     | Yes         |                                                 | You shot the moon in the Observatory        | Clear Observatory
luigis_mansion:hidden/end_blackout_clear               | No          |                                                 | Turns lights back on                        | Clears all lit rooms and breaker room
luigis_mansion:hidden/end_blackout                     | Yes         |                                                 | Flipping the breaker switch                 | End blackout
luigis_mansion:hidden/first_entrance                   | Yes         | Field player                                    | Look around the foyer                       | Tag first_entrance removed
luigis_mansion:hidden/move_storage_room_wall           | Yes         |                                                 | Moving the fake wall                        | Technical flag moved_wall set
luigis_mansion:hidden/release_boos                     | Yes         |                                                 | Pressed the Boo hatch button                | Warp to Undergound Lab + luigis_mansion:released_boos_call + technical flag released_boos set
luigis_mansion:ice_element_medal                       | Yes         |                                                 | Ice element call                            | 
luigis_mansion:jarvis                                  | Yes         |                                                 | Jarvis popped out                           | Jarvis gets kick_players_out tag (choice) + technical flag jarvis_spoke set
luigis_mansion:jarvis_results                          | Yes         | Field result (int)                              | Jarvis freezing game results                | Jarvis gets kick_players_out tag (conditional)
luigis_mansion:king_boo                                | Yes         | King Boo, Mario                                 | King Boo in the Secret Altar                | Secret Altar wave + 1
luigis_mansion:king_boo_appears                        | Yes         | King Boo                                        | King Boo comes out of Bowser                | 
luigis_mansion:king_boo_opening                        | Yes         | Ghost                                           | King Boo battle opening                     | 
luigis_mansion:king_boo_opening_angle                  | No          | Run as Luigi                                    | Luigi crawl direction calculation           | Calculates which direction Luigi crawls towards
luigis_mansion:king_boo_warp                           | Yes         | King Boo                                        | Warped back to the start by the king        | Warped to mansion default position
luigis_mansion:lydias_child_care_diary                 | Yes         |                                                 | Book in the Study                           | 
luigis_mansion:madame_clairvoya                        | Yes         | Madame Clairvoya                                | TELL ME THE FUTURE!                         | 
luigis_mansion:mansion_rank                            | Yes         | Loaded exterior                                 | Mansion rank reveal                         | Warped to Undergound Lab + map credits / 3ds_remake:gooigi_results
luigis_mansion:mansion_rank/clear_mansion              | No          |                                                 | Delete data                                 | Mansion data removed
luigis_mansion:mansion_rank/description                | No          | Field rank (char)                               | Rank top text                               | Spawns header based on rank
luigis_mansion:mansion_rank/music                      | No          | Field rank (char)                               | Rank music                                  | Plays music based on rank
luigis_mansion:mansion_rank/select                     | No          |                                                 | Rank selection                              | Selects rank based on money
luigis_mansion:mansion_rank/title                      | No          | Field rank (char)                               | Rank left text                              | Spawns title based on rank
luigis_mansion:mansion_rank/total                      | No          | Field total (int)                               | Rank total G                                | Gets total money
luigis_mansion:mario_to_normal                         | Yes         |                                                 | Unportrificationizing Mario                 | Warp to exterior + luigis_mansion:credits
luigis_mansion:mario_item/glove                        | Yes         | Madame Clairvoya                                | Show the glove to Madame Clairvoya          | Next mario_item/item dialog + technical flag shown_marios_glove set
luigis_mansion:mario_item/hat                          | Yes         | Madame Clairvoya                                | Show the hat to Madame Clairvoya            | Next mario_item/item dialog + technical flag shown_marios_hat set
luigis_mansion:mario_item/item_1                       | Yes         | Madame Clairvoya                                | First item for Madame Clairvoya             | 
luigis_mansion:mario_item/item_2                       | Yes         | Madame Clairvoya                                | Second item for Madame Clairvoya            | 
luigis_mansion:mario_item/item_3                       | Yes         | Madame Clairvoya                                | Third item for Madame Clairvoya             | 
luigis_mansion:mario_item/item_4                       | Yes         | Madame Clairvoya                                | Fourth item for Madame Clairvoya            | 
luigis_mansion:mario_item/item_5                       | Yes         | Madame Clairvoya                                | Last item for Madame Clairvoya              | 
luigis_mansion:mario_item/letter                       | Yes         | Madame Clairvoya                                | Show the letter to Madame Clairvoya         | Next mario_item/item dialog + technical flag shown_marios_letter set
luigis_mansion:mario_item/shoe                         | Yes         | Madame Clairvoya                                | Show the shoe to Madame Clairvoya           | Next mario_item/item dialog + technical flag shown_marios_shoe set
luigis_mansion:mario_item/star                         | Yes         | Madame Clairvoya                                | Show the star to Madame Clairvoya           | Next mario_item/item dialog + technical flag shown_marios_star set
luigis_mansion:marios_painting                         | Yes         | Mario, field observing_player                   | Spot Mario's Painting in the altar          | 
luigis_mansion:marios_painting_repeat                  | Yes         | Mario, field observing_player                   | Check back on Mario again                   | 
luigis_mansion:meet_e_gadd                             | Yes         | Field walking_player                            | First entrance of the Parlor                | Warp to Underground Lab + luigis_mansion:the_mansion
luigis_mansion:melody_pianissima_composer              | Yes         |                                                 | What did the composer have in mind?         | Conservatory wave + 1 or set to -1 (choice) + technical flag melody_pianissima_spoke set
luigis_mansion:melody_pianissima_game                  | Yes         |                                                 | In what game did that piece play?           | Conservatory wave + 1 or set to -1 (choice) + technical flag melody_pianissima_spoke set
luigis_mansion:moldy_old_journal                       | Yes         |                                                 | Book in Nana's Room                         | 
luigis_mansion:mysterious_power                        | Yes         | Mysterious Power                                | Warped back to the start by boos            | Warped to mansion default position
luigis_mansion:mysterious_power_repeat                 | Yes         | Mysterious Power                                | Warped back to the start again              | Warped to mansion default position
luigis_mansion:nevilles_big_baby_care_diary            | Yes         |                                                 | Book in the Study                           | 
luigis_mansion:normal/blackout_lightning               | Yes         |                                                 | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout field set to 1b
luigis_mansion:normal/blackout_lightning/particles     | No          |                                                 | Lamp particles                              | Creates particles at lights
luigis_mansion:normal/blackout_lightning/reset         | No          |                                                 | Mansion cleanup                             | Resets all rooms
luigis_mansion:normal/blackout_lightning/sound         | No          |                                                 | Lamp sounds                                 | Plays sounds at lights
luigis_mansion:normal/blow_up_moon                     | Yes         |                                                 | You shot the moon in the Observatory        | Clear Observatory
luigis_mansion:normal/end_blackout_clear               | No          |                                                 | Turns lights back on                        | Clears all lit rooms and breaker room
luigis_mansion:normal/end_blackout                     | Yes         |                                                 | Flipping the breaker switch                 | End blackout
luigis_mansion:normal/first_entrance                   | Yes         | Field player                                    | Look around the foyer                       | Tag first_entrance removed
luigis_mansion:normal/move_storage_room_wall           | Yes         |                                                 | Moving the fake wall                        | Technical flag moved_wall set
luigis_mansion:normal/release_boos                     | Yes         |                                                 | Pressed the Boo hatch button                | luigis_mansion:released_boos_call + technical flag released_boos set
luigis_mansion:observatory_path                        | Yes         | Mario item                                      | Observatory path spawned in                 | Technical flag observatory_path set
luigis_mansion:observe_moon                            | Yes         | Fields observing_player and observing_position  | Look through the telescope                  | Observatory wave + 1
luigis_mansion:portrait_ghosts                         | Yes         |                                                 | Portrait ghosts call                        | 
luigis_mansion:portraits                               | Yes         | Entity talking_portrait_1 through 5             | WHO PUT OUT MY CANDLES!?                    | Parlor wave + 1
luigis_mansion:portrificationizing                     | Yes         |                                                 | Portrificationizing the ghosts              | Get portraits + luigis_mansion:score_results
luigis_mansion:release_boos_spawn                      | No          |                                                 | Released Boos spawning                      | Spawns the 50 Boos and King Boo from the escape cutscene
luigis_mansion:released_boos_call                      | Yes         |                                                 | Thanks for flushing them out...             | luigis_mansion:released_boos_talk
luigis_mansion:released_boos_talk                      | Yes         |                                                 | I call it the Boo Radar!                    | luigis_mansion:underground_lab + obtain item Boo Radar
luigis_mansion:room_clear_chest_spawns                 | Yes         | Field scanned_entity                            | Camera focus on room clear chest            | 
luigis_mansion:search_fake_wall                        | Yes         | Field scanning_player                           | Huh? (same as scan huh but no scanning)     | 
luigis_mansion:scan/entity/biff_atlas                  | Yes         | Fields scanned_entity and scanning_player       | Scan Biff Atlas                             | 
luigis_mansion:scan/entity/blue_clockwork_soldier      | Yes         | Fields scanned_entity and scanning_player       | Scan blue Clockwork Soldier                 | 
luigis_mansion:scan/entity/chauncey                    | Yes         | Fields scanned_entity and scanning_player       | Scan Chauncey                               | 
luigis_mansion:scan/entity/floating_whirlindas_female  | Yes         | Fields scanned_entity and scanning_player       | Scan Miss. Whirlinda                        | 
luigis_mansion:scan/entity/floating_whirlindas_male    | Yes         | Fields scanned_entity and scanning_player       | Scan Mr. Whirlinda                          | 
luigis_mansion:scan/entity/green_clockwork_soldier     | Yes         | Fields scanned_entity and scanning_player       | Scan green Clockwork Soldier                | 
luigis_mansion:scan/entity/henry                       | Yes         | Fields scanned_entity and scanning_player       | Scan Henry                                  | 
luigis_mansion:scan/entity/lydia                       | Yes         | Fields scanned_entity and scanning_player       | Scan Lydia                                  | 
luigis_mansion:scan/entity/madame_clairvoya            | Yes         | Fields scanned_entity and scanning_player       | Scan Madame Clairvoya                       | 
luigis_mansion:scan/entity/melody_pianissima           | Yes         | Fields scanned_entity and scanning_player       | Scan Melody Pianissima                      | 
luigis_mansion:scan/entity/miss_petunia                | Yes         | Fields scanned_entity and scanning_player       | Scan Miss. Petunia                          | 
luigis_mansion:scan/entity/mr_luggs                    | Yes         | Fields scanned_entity and scanning_player       | Scan Mr. Luggs                              | 
luigis_mansion:scan/entity/nana                        | Yes         | Fields scanned_entity and scanning_player       | Scan Nana                                   | 
luigis_mansion:scan/entity/neville                     | Yes         | Fields scanned_entity and scanning_player       | Scan Neville                                | 
luigis_mansion:scan/entity/orville                     | Yes         | Fields scanned_entity and scanning_player       | Scan Orville                                | 
luigis_mansion:scan/entity/pink_clockwork_soldier      | Yes         | Fields scanned_entity and scanning_player       | Scan pink Clockwork Soldier                 | 
luigis_mansion:scan/entity/shivers                     | Yes         | Fields scanned_entity and scanning_player       | Scan Shivers                                | 
luigis_mansion:scan/entity/sir_weston                  | Yes         | Fields scanned_entity and scanning_player       | Scan Sir weston                             | 
luigis_mansion:scan/entity/spooky                      | Yes         | Fields scanned_entity and scanning_player       | Scan Spooky                                 | 
luigis_mansion:scan/entity/sue_pea                     | Yes         | Fields scanned_entity and scanning_player       | Scan Sue Pea                                | 
luigis_mansion:scan/entity/uncle_grimmly               | Yes         | Fields scanned_entity and scanning_player       | Scan Uncle Grimmly                          | 
luigis_mansion:scan/entity/vincent_van_gore            | Yes         | Fields scanned_entity and scanning_player       | Scan Vincent Van Gore                       | 
luigis_mansion:scan/get_scanned_entity                 | No          | Macro scanned_entity                            | Get scanned entity                          | Tags entity matching the UUID of the scanned_entity field as scanned_entity
luigis_mansion:scan/scanner/a_classic_wonder_how_much  | Yes         | Field scanning_player                           | Classic, how much money?                    | 
luigis_mansion:scan/scanner/adds_to_the_atmosphere     | Yes         | Field scanning_player                           | Adds to atmosphere                          | 
luigis_mansion:scan/scanner/always_been_a_good_runner  | Yes         | Field scanning_player                           | I'm a good runner                           | 
luigis_mansion:scan/scanner/always_wanted_one_of_these | Yes         | Field scanning_player                           | Always wanted one of these                  | 
luigis_mansion:scan/scanner/animal_hide                | Yes         | Field scanning_player                           | Treat an animal that way? No!!              | 
luigis_mansion:scan/scanner/are_there_goodies          | Yes         | Field scanning_player                           | Are there any goodies?                      | 
luigis_mansion:scan/scanner/beautiful_candlelight      | Yes         | Field scanning_player                           | Candlelight makes rooms beautiful           | 
luigis_mansion:scan/scanner/bet_something_colds_there  | Yes         | Field scanning_player                           | Something cold in there                     | 
luigis_mansion:scan/scanner/boos_realistic_mansion     | Yes         | Field scanning_player                           | Realistic fake mansion                      | 
luigis_mansion:scan/scanner/break_if_i_sit_on_it       | Yes         | Field scanning_player                           | Will break if sat on                        | 
luigis_mansion:scan/scanner/broken_things              | Yes         | Field scanning_player                           | I hate broken things                        | 
luigis_mansion:scan/scanner/can_plan_for_this          | Yes         | Field scanning_player                           | Can't plan for this                         | 
luigis_mansion:scan/scanner/candle_on_table_is_weird   | Yes         | Field scanning_player                           | Candle on the table is weird                | 
luigis_mansion:scan/scanner/cant_reach_that_directly   | Yes         | Field scanning_player                           | I can't reach that directly                 | 
luigis_mansion:scan/scanner/cant_read_from_here        | Yes         | Field scanning_player                           | Can't read from here                        | 
luigis_mansion:scan/scanner/chore_to_keep_this_clean   | Yes         | Field scanning_player                           | Chore to keep this place clean              | 
luigis_mansion:scan/scanner/cold_breath                | Yes         | Field scanning_player                           | Looks cold, hey my breath!                  | 
luigis_mansion:scan/scanner/cold_night_fire            | Yes         | Field scanning_player                           | Fire on a cold night feels good             | 
luigis_mansion:scan/scanner/could_gaze_at_for_hours    | Yes         | Field scanning_player                           | Could gaze at for hours                     | 
luigis_mansion:scan/scanner/curl_up_sleep_until_dawn   | Yes         | Field scanning_player                           | Sleep until dawn                            | 
luigis_mansion:scan/scanner/cute_red_polka_dots        | Yes         | Field scanning_player                           | Cute red polka dots                         | 
luigis_mansion:scan/scanner/dimply_delightful          | Yes         | Field scanning_player                           | Delightful                                  | 
luigis_mansion:scan/scanner/disturbing                 | Yes         | Field scanning_player                           | Disturbing                                  | 
luigis_mansion:scan/scanner/do_boos_wash_their_faces   | Yes         | Field scanning_player                           | Do Boos wash faces?                         | 
luigis_mansion:scan/scanner/do_it_yourself_books       | Yes         | Field scanning_player                           | Get some do-it-yourself books               | 
luigis_mansion:scan/scanner/dont_care_pointy_things    | Yes         | Field scanning_player                           | Pointy objects                              | 
luigis_mansion:scan/scanner/door_wont_open             | Yes         | Field scanning_player                           | This door won't open                        | 
luigis_mansion:scan/scanner/doors_should_open          | Yes         | Field scanning_player                           | Doors should open, right?                   | 
luigis_mansion:scan/scanner/dreadful_picture_candle    | Yes         | Field scanning_player                           | Dreadful picture, candle might be important | 
luigis_mansion:scan/scanner/eek_oh_its_a_chair         | Yes         | Field scanning_player                           | Eeek! Oh, it's a chair                      | 
luigis_mansion:scan/scanner/exquisite                  | Yes         | Field scanning_player                           | Exquisite                                   | 
luigis_mansion:scan/scanner/fabulous                   | Yes         | Field scanning_player                           | Fabulous!                                   | 
luigis_mansion:scan/scanner/fall_if_shaken             | Yes         | Field scanning_player                           | Those will fall if shaken                   | 
luigis_mansion:scan/scanner/feel_like_spinning         | Yes         | Field scanning_player                           | I want to spin that                         | 
luigis_mansion:scan/scanner/flower_season              | Yes         | Field scanning_player                           | Flower season                               | 
luigis_mansion:scan/scanner/frozen_solid               | Yes         | Field scanning_player                           | Frozen solid, I'm getting cold              | 
luigis_mansion:scan/scanner/full_of_moth_holes         | Yes         | Field scanning_player                           | Full of moth holes                          | 
luigis_mansion:scan/scanner/fun_to_twirl               | Yes         | Field scanning_player                           | Looks fun to twirl                          | 
luigis_mansion:scan/scanner/ghosts_waste_water         | Yes         | Field scanning_player                           | Don't waste water                           | 
luigis_mansion:scan/scanner/give_that_quick_vacuuming  | Yes         | Field scanning_player                           | Give it a quick vacuum                      | 
luigis_mansion:scan/scanner/good_spot_to_hide_savings  | Yes         | Field scanning_player                           | Good spot to hide savings                   | 
luigis_mansion:scan/scanner/good_to_relight            | Yes         | Field scanning_player                           | Would relighting do any good?               | 
luigis_mansion:scan/scanner/got_the_hand_of_that_thing | Yes         | Field scanning_player                           | Got a hang of that thing yet?               | 
luigis_mansion:scan/scanner/handy_in_case_of_fire      | Yes         | Field scanning_player                           | Handy in case of fire                       | 
luigis_mansion:scan/scanner/hats_should_be_hand_washed | Yes         | Field scanning_player                           | Hats should be hand washed                  | 
luigis_mansion:scan/scanner/here_lies_mr_bones         | Yes         | Field scanning_player                           | What's written on that sign? MR. BONES      | 
luigis_mansion:scan/scanner/hmm_weird                  | Yes         | Field scanning_player                           | Weird                                       | 
luigis_mansion:scan/scanner/hope_its_sturdier          | Yes         | Field scanning_player                           | Doesn't look sturdy                         | 
luigis_mansion:scan/scanner/huh                        | Yes         | Field scanning_player                           | Huh?                                        | 
luigis_mansion:scan/scanner/i_had_one_of_these         | Yes         | Field scanning_player                           | I had one of these!                         | 
luigis_mansion:scan/scanner/i_have_no_use_for_this     | Yes         | Field scanning_player                           | No use for this                             | 
luigis_mansion:scan/scanner/i_liked_bottom_bunk_better | Yes         | Field scanning_player                           | I liked the bottom bunk better              | 
luigis_mansion:scan/scanner/id_put_in_the_bathroom     | Yes         | Field scanning_player                           | Belongs in the bathroom                     | 
luigis_mansion:scan/scanner/if_antique_eat_my_hat      | Yes         | Field scanning_player                           | If an antique, I'll eat my hat!             | 
luigis_mansion:scan/scanner/if_only_theres_cookies     | Yes         | Field scanning_player                           | If only there were cookies                  | 
luigis_mansion:scan/scanner/im_so_finicky_about_hats   | Yes         | Field scanning_player                           | Finicky about hats                          | 
luigis_mansion:scan/scanner/im_tired_bed_looks_comfy   | Yes         | Field scanning_player                           | Comfy bed                                   | 
luigis_mansion:scan/scanner/interesting_shape          | Yes         | Field scanning_player                           | Interesting shape                           | 
luigis_mansion:scan/scanner/just_in_the_way            | Yes         | Field scanning_player                           | This is in the way                          | 
luigis_mansion:scan/scanner/just_not_my_style          | Yes         | Field scanning_player                           | Not my style                                | 
luigis_mansion:scan/scanner/like_real_person_creepy    | Yes         | Field scanning_player                           | Like a real person                          | 
luigis_mansion:scan/scanner/long_and_slender           | Yes         | Field scanning_player                           | Why is it long and slender?                 | 
luigis_mansion:scan/scanner/look_tough_wearing_this    | Yes         | Field scanning_player                           | Look tough wearing this                     | 
luigis_mansion:scan/scanner/looks_comfortable          | Yes         | Field scanning_player                           | Comfortable, stick with my buds             | 
luigis_mansion:scan/scanner/looks_fancy                | Yes         | Field scanning_player                           | Fancy                                       | 
luigis_mansion:scan/scanner/looks_old_wonder_how_much  | Yes         | Field scanning_player                           | Looks old, how much money?                  | 
luigis_mansion:scan/scanner/looks_pretty_normal        | Yes         | Field scanning_player                           | Looks normal                                | 
luigis_mansion:scan/scanner/looks_pricey               | Yes         | Field scanning_player                           | Pricey                                      | 
luigis_mansion:scan/scanner/looks_too_ordinary         | Yes         | Field scanning_player                           | TOO ordinary                                | 
luigis_mansion:scan/scanner/lovely_crystal_ball        | Yes         | Field scanning_player                           | Lovely crystal ball                         | 
luigis_mansion:scan/scanner/made_in_japan              | Yes         | Field scanning_player                           | Something is written here? Japan            | 
luigis_mansion:scan/scanner/mario_can_lift_this        | Yes         | Field scanning_player                           | Mario can lift this                         | 
luigis_mansion:scan/scanner/never_could_play_piano     | Yes         | Field scanning_player                           | Can't play piano                            | 
luigis_mansion:scan/scanner/never_pass_the_white_glove | Yes         | Field scanning_player                           | Not passing white-glove test                | 
luigis_mansion:scan/scanner/nice_and_clean_i_like_it   | Yes         | Field scanning_player                           | Nice and clean                              | 
luigis_mansion:scan/scanner/no_shortage_toilet_paper   | Yes         | Field scanning_player                           | No toilet paper shortage                    | 
luigis_mansion:scan/scanner/not_interested_in_bikes    | Yes         | Field scanning_player                           | Eh, bikes                                   | 
luigis_mansion:scan/scanner/not_interesting            | Yes         | Field scanning_player                           | Not interesting                             | 
luigis_mansion:scan/scanner/not_much_use_as_of_late    | Yes         | Field scanning_player                           | Unused as of late                           | 
luigis_mansion:scan/scanner/not_open_without_asking    | Yes         | Field scanning_player                           | Don't open without asking                   | 
luigis_mansion:scan/scanner/not_so_scary               | Yes         | Field scanning_player                           | Not so scary                                | 
luigis_mansion:scan/scanner/not_watered_in_a_long_time | Yes         | Field scanning_player                           | Not watered in a long time                  | 
luigis_mansion:scan/scanner/nothing_unusual_boring     | Yes         | Field scanning_player                           | Nothing unusual, boring                     | 
luigis_mansion:scan/scanner/odds_and_ends_everywhere   | Yes         | Field scanning_player                           | Pile odds and ends everywhere, filthy       | 
luigis_mansion:scan/scanner/oh_whats_this              | Yes         | Field scanning_player                           | Oh, what's this?                            | 
luigis_mansion:scan/scanner/old_and_fragile            | Yes         | Field scanning_player                           | Old and fragile                             | 
luigis_mansion:scan/scanner/old_but_still_nice_tone    | Yes         | Field scanning_player                           | Old, still nice tone                        | 
luigis_mansion:scan/scanner/picture_wouldnt_call_art   | Yes         | Field scanning_player                           | Picture, not art                            | 
luigis_mansion:scan/scanner/place_for_shadow_puppets   | Yes         | Field scanning_player                           | Fun shadow puppet place                     | 
luigis_mansion:scan/scanner/player                     | Yes         | Fields scanned_entity and scanning_player       | Scan a player                               | Different message based on health, selected item, catching ghosts, distance, and nearby coins
luigis_mansion:scan/scanner/poor_thing                 | Yes         | Field scanning_player                           | Poor thing                                  | 
luigis_mansion:scan/scanner/profound_sadness           | Yes         | Field scanning_player                           | Makes me feel sadness                       | 
luigis_mansion:scan/scanner/quite_taken_by_this        | Yes         | Field scanning_player                           | Quite taken with this                       | 
luigis_mansion:scan/scanner/raise_carrior_pigeons_here | Yes         | Field scanning_player                           | Raise pigeons here                          | 
luigis_mansion:scan/scanner/really_just_a_photograph   | Yes         | Field scanning_player                           | Just a photograph                           | 
luigis_mansion:scan/scanner/should_i_play              | Yes         | Field scanning_player                           | Should I play?                              | 
luigis_mansion:scan/scanner/simple_dash_of_elegance    | Yes         | Field scanning_player                           | Simple design with dash of elegance         | 
luigis_mansion:scan/scanner/sit_on_i_have_standards    | Yes         | Field scanning_player                           | Hunk of junk of a chair! I have standards!  | 
luigis_mansion:scan/scanner/someone_should_cool_it     | Yes         | Field scanning_player                           | Looks hot, cool it off                      | 
luigis_mansion:scan/scanner/someone_tying_to_show_off  | Yes         | Field scanning_player                           | Showing off?                                | 
luigis_mansion:scan/scanner/something_fishy_here       | Yes         | Field scanning_player                           | Fishy here                                  | 
luigis_mansion:scan/scanner/something_in_there         | Yes         | Field scanning_player                           | Something may be in there                   | 
luigis_mansion:scan/scanner/straighten_this_mess       | Yes         | Field scanning_player                           | Need time to straighten this mess           | 
luigis_mansion:scan/scanner/talk_about_filthy          | Yes         | Field scanning_player                           | Yuck! Filthy!                               | 
luigis_mansion:scan/scanner/tall_angel_statue          | Yes         | Field scanning_player                           | Tall angel statue                           | 
luigis_mansion:scan/scanner/thats_interior_decorating  | Yes         | Field scanning_player                           | Interior decorating                         | 
luigis_mansion:scan/scanner/throw_a_few_quick_jabs     | Yes         | Field scanning_player                           | A few quick jabs                            | 
luigis_mansion:scan/scanner/used_recently              | Yes         | Field scanning_player                           | Used recently                               | 
luigis_mansion:scan/scanner/very_elegant               | Yes         | Field scanning_player                           | Very elegant                                | 
luigis_mansion:scan/scanner/visit_outer_space          | Yes         | Field scanning_player                           | I want to visit outer space                 | 
luigis_mansion:scan/scanner/wanted_for_quite_a_while   | Yes         | Field scanning_player                           | Wanting one for a while                     | 
luigis_mansion:scan/scanner/what_in_the_world          | Yes         | Field scanning_player                           | What in the world?                          | 
luigis_mansion:scan/scanner/what_kind_of_picture       | Yes         | Field scanning_player                           | What kind of picture?                       | 
luigis_mansion:scan/scanner/whats_this                 | Yes         | Field scanning_player                           | What's this?                                | 
luigis_mansion:scan/scanner/whats_this_an_antique      | Yes         | Field scanning_player                           | That's an antique?                          | 
luigis_mansion:scan/scanner/who_designed_this          | Yes         | Field scanning_player                           | Who designed this?!                         | 
luigis_mansion:scan/scanner/who_is_this_supposed_to_be | Yes         | Field scanning_player                           | Who is this?                                | 
luigis_mansion:scan/scanner/why_only_this_ones_frozen  | Yes         | Field scanning_player                           | Why only this one frozen?                   | 
luigis_mansion:scan/scanner/won_championship_for_this  | Yes         | Field scanning_player                           | Win a championship for this?                | 
luigis_mansion:scan/scanner/wonder_how_old_this_is     | Yes         | Field scanning_player                           | How old is this?                            | 
luigis_mansion:scan/scanner/would_fetch_pretty_penny   | Yes         | Field scanning_player                           | Pretty penny                                | 
luigis_mansion:score_results                           | Yes         |                                                 | Ghost and money totals                      | (Save progress (choice) + Warp to Underground Lab + luigis_mansion:underground_lab)/(Saves high score + trigger the ending dialog)
luigis_mansion:score_results/display_total_score       | No          |                                                 | Score result step                           | Dislays the total score, not resetting the counter
luigis_mansion:score_results/get_high_score            | No          | Macro data_index                                | Score result step                           | Fetches the previous high score object
luigis_mansion:score_results/get_money                 | No          | Macros namespace and id                         | Score result step                           | Gets the money count values of the provided item
luigis_mansion:score_results/get_pearls                | No          |                                                 | Score result step                           | Gets the pearl count values
luigis_mansion:score_results/get_data                  | No          | Macros namespace and id                         | Score result step                           | Gets the portraits and money to display/count
luigis_mansion:score_results/get_data/hidden           | No          |                                                 | Score result step                           | Gets the values for the hidden mansion
luigis_mansion:score_results/get_data/normal           | No          |                                                 | Score result step                           | Gets the values for the normal mansion
luigis_mansion:score_results/get_total_score           | No          |                                                 | Score result step                           | Dislays the total score, resetting the counter
luigis_mansion:score_results/get_total_score_loop      | No          |                                                 | Score result step                           | Loop for going over all players' total score
luigis_mansion:score_results/move_down                 | No          | Macro counter, executor entity                  | Score result step                           | Teleports executor down based on counter
luigis_mansion:score_results/save_high_score           | No          |                                                 | Score result step                           | Save new high score
luigis_mansion:score_results/spawn_portraits           | No          |                                                 | Score result step                           | Spawns a portrait
luigis_mansion:score_results/spawn_portraits_new_area  | No          |                                                 | Score result step                           | Spawns portraits of all areas
luigis_mansion:sir_weston                              | Yes         |                                                 | HOT! HOT! OH VERY HOT!                      | Technical flag sir_weston_spoke set
luigis_mansion:sue_pea                                 | Yes         | Luigi                                           | Don't try to wake me...                     | Technical flag sue_pea_spoke set
luigis_mansion:the_book_of_pericles                    | Yes         |                                                 | Book in the Study                           | 
luigis_mansion:the_mansion                             | Yes         |                                                 | So you believe the mansion exists...        | Warp to Training Room + clear Underground Lab
luigis_mansion:title_screen                            | Yes         |                                                 | The title screen                            | Open title menu, or trigger opening dialog if ignored
luigis_mansion:toad_1                                  | Yes         |                                                 | Toad in the Foyer                           | Clear room 1 and 2 (choice) + technical flag toad_1_spoke set + Save progress (choice)
luigis_mansion:toad_1_repeat                           | Yes         |                                                 | Talking with Toad in Foyer again            | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_2                                  | Yes         |                                                 | Toad on Balcony                             | Clear room 6
luigis_mansion:toad_2_repeat                           | Yes         |                                                 | Talking with Toad on Balcony again          | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_3                                  | Yes         |                                                 | Toad in Washroom                            | Clear room 19 (choice)
luigis_mansion:toad_3_locked_door                      | Yes         |                                                 | Erm... OCCUPIED!                            | 
luigis_mansion:toad_3_repeat                           | Yes         |                                                 | Talking with Toad in Washroom again         | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_4                                  | Yes         |                                                 | Toad in Courtyard                           | Technical flag toad_4_happy set (choice)
luigis_mansion:toad_4_look                             | Yes         |                                                 | Something terrible is in that well...       | 
luigis_mansion:toad_4_repeat                           | Yes         |                                                 | Talking with Toad in Courtyard again        | Save progress (choice) + 3ds_remake:toad_heal
luigis_mansion:toad_5                                  | Yes         |                                                 | Toad on the phone                           | Technical flag telephone_1 and telephone_2 (choice) set, enables approaching furniture tagged telephone_2 or telephone_3 based on choice
luigis_mansion:training_room/option                    | Yes         |                                                 | Multiple programs available, choose         | Any valid training room dialog
luigis_mansion:training_room/program                   | Yes         |                                                 | Vanilla training room program               | Warp to Underground lab or Gallery (conditional choice) + clear Training Room
luigis_mansion:twins                                   | Yes         |                                                 | The twins appear                            | The Twins' Room wave + 1 (choice)
luigis_mansion:uncle_grimmly                           | Yes         |                                                 | E. Gadd on the phone                        | Telephone Room wave + 1 + technical flag telephone_3 set
luigis_mansion:underground_lab                         | Yes         |                                                 | Where to, Luigi?                            | Any go_to_mansion dialog, any amiibo dialog, warp to Ghost Portrificationizer Room, Gallery or Training Room (choice)
luigis_mansion:vincent_van_gore                        | Yes         |                                                 | Only one of my creations eezt left?         | 
luigis_mansion:water_element_medal                     | Yes         |                                                 | Water element call                          | 
3ds_remake:amiibo/boo                                  | Yes         |                                                 | Toggle Boo amiibo                           | Toggle Boo amiibo
3ds_remake:amiibo/luigi                                | Yes         |                                                 | Toggle Luigi amiibo                         | Toggle Luigi amiibo
3ds_remake:amiibo/mario                                | Yes         |                                                 | Toggle Mario amiibo                         | Toggle Mario amiibo
3ds_remake:amiibo/toad                                 | Yes         |                                                 | Toggle Toad amiibo                          | Toggle Toad amiibo
3ds_remake:blockade_spawns                             | Yes         | Door                                            | Camera focus on spawning blockade           | 
3ds_remake:blockade_disappears                         | Yes         | Door                                            | Camera focus on despawning blockade         | 
3ds_remake:front_door                                  | Yes         | Field player                                    | Wanna leave the mansion?                    | Warp to lab (choice)
3ds_remake:future_e_gadd                               | Yes         |                                                 | Call from Evershade Valley                  | luigis_mansion:underground_lab
3ds_remake:gallery/found                               | Yes         |                                                 | Install the gameBoy Horror Part             | Clear gallery + add Scan Furniture GameBoy Horror option
3ds_remake:gallery/no_found                            | Yes         |                                                 | Go Find the GameBoy Horror Part             | 
3ds_remake:go_to_mansion/hidden                        | Yes         |                                                 | The (3DS) Hidden Mansion option             | (Warp to exterior + luigis_mansion:exterior/leaving_the_lab + load 3ds_remake:hidden mansion) / luigis_mansion:go_to_mansion/failure
3ds_remake:gooigi_results                              | Yes         |                                                 | How well did Gooigi do?                     | Map credits + delete mansion data
3ds_remake:hidden/blackout_lightning                   | Yes         |                                                 | Lightning causes blackout                   | luigis_mansion:blackout + mansion blackout flag set to 1b
3ds_remake:hidden/blackout_lightning/particles         | No          |                                                 | Lamp particles                              | Creates particles at l
3ds_remake:hidden/blackout_lightning/reset             | No          |                                                 | Mansion cleanup                             | Resets all rooms
3ds_remake:hidden/blackout_lightning/sound             | No          |                                                 | Lamp sounds                                 | Plays sounds at lights
3ds_remake:hidden/blow_up_moon                         | Yes         |                                                 | You shot the moon in the Observatory        | Clear Observatory
3ds_remake:hidden/end_blackout_clear                   | No          |                                                 | Turns lights back on                        | Clears all lit rooms and breaker room
3ds_remake:hidden/end_blackout                         | Yes         |                                                 | Flipping the breaker switch                 | End blackout
3ds_remake:hidden/first_entrance                       | Yes         | Field player                                    | Look around the foyer                       | 
3ds_remake:hidden/move_storage_room_wall               | Yes         |                                                 | Moving the fake wall                        | Technical flag moved_wall set
3ds_remake:hidden/release_boos                         | Yes         |                                                 | Pressed the Boo hatch button                | luigis_mansion:released_boos_call + technical flag released_boos set
3ds_remake:locked_area_door                            | Yes         | Field player                                    | Try opening locked area door                | 
3ds_remake:portrait_battle/clear                       | Yes         |                                                 | Complete a portrait battle                  | Get portraits, save score, warp to Gallery or 3ds_remake:portrait_battle/start (choice)
3ds_remake:portrait_battle/start                       | Yes         |                                                 | Start a portrait battle                     | 
3ds_remake:scan/entity/jarvis                          | Yes         | Fields scanned_entity and scanning_player       | Scan Jarvis                                 | 
3ds_remake:scan/gooigi                                 | Yes         | Field scanning_player                           | Scan furniture as Gooigi                    | 
3ds_remake:scan/scanner/air_flow                       | Yes         | Field scanning_player                           | Air flow is important                       | 
3ds_remake:scan/scanner/blueprint                      | Yes         | Field scanning_player                           | Some kind of blueprint?                     | 
3ds_remake:scan/scanner/calculations                   | Yes         | Field scanning_player                           | Lots of complicated calculations            | 
3ds_remake:scan/scanner/carefully_balanced             | Yes         | Field scanning_player                           | Very carefully balanced                     | 
3ds_remake:scan/scanner/generator                      | Yes         | Field scanning_player                           | A generator he build himself?               | 
3ds_remake:scan/scanner/huge_monitor                   | Yes         | Field scanning_player                           | A huge monitor for what?                    | 
3ds_remake:scan/scanner/mysterious_door                | Yes         | Field scanning_player                           | This door looks mysterious                  | 
3ds_remake:scan/scanner/painting_inspiration           | Yes         | Field scanning_player                           | Inspires me to paint                        | 
3ds_remake:scan/scanner/research_papers                | Yes         | Field scanning_player                           | Heavy eyes just from reading the covers     | 
3ds_remake:scan/scanner/shouldnt_touch                 | Yes         | Field scanning_player                           | I probably shouldn't touch                  | 
3ds_remake:score_results/convert_time                  | No          |                                                 | Score result step                           | Converts a single int into several to depict the time value correctly
3ds_remake:score_results/create_area_scores            | No          |                                                 | Score result step                           | Crates new entries in area high scores until the current area is reached
3ds_remake:score_results/get_data/hidden               | No          |                                                 | Score result step                           | Gets the values for the 3DS hidden mansion
3ds_remake:score_results/get_area_records              | No          | Macros data_index and area                      | Score result step                           | Fetches the "only" and "total" scores for the current area
3ds_remake:score_results/get_ghosts_caught             | No          |                                                 | Score result step                           | Fetches the total amounts of ghosts caught in the current mansion
3ds_remake:score_results/get_ghosts_caught_loop        | No          |                                                 | Score result step                           | Looping over each player to get the total ghosts caught
3ds_remake:score_results/get_ghosts_caught             | No          |                                                 | Score result step                           | Fetches the total amounts of collected money in the current mansion
3ds_remake:score_results/get_ghosts_caught_loop        | No          |                                                 | Score result step                           | Looping over each player to get the total collected money
3ds_remake:score_results/save_high_score               | No          |                                                 | Score result step                           | Saves the value, lowest value, lowest health and time for the data index to high scores
3ds_remake:score_results/save_only_score               | No          | Macro area                                      | Score result step                           | Saves the "only" score for the current area
3ds_remake:score_results/save_total_score              | No          | Macro area                                      | Score result step                           | Saves the "total" score for the current area
3ds_remake:toad_heal                                   | Yes         |                                                 | Toad Amiibo result                          | Spawns a huge heart at all players in the room
3ds_remake:training_room                               | Yes         |                                                 | 3DS Remake training program                 | Warp to Underground Lab or Gallery (conditional) + clear Training Room
3ds_remake:wind_warp_sparkles                          | Yes         | Furniture with wind warp sparkles, cleared only | Camera focus on enabled wind warp           | 
e3_demo:amiibo/e_gadd                                  | Yes         |                                                 | Toggle E. Gadd amiibo                       | Toggle E. Gadd amiibo
e3_demo:e_gadd_call                                    | Yes         |                                                 | Time is up, back to the lab                 | Warp to Ghost Portrificaionizer Room + e3_demo:just_money / e3_demo:portrait_ghosts
e3_demo:ending                                         | Yes         |                                                 | Trigger credits                             | Warp to exterior + luigis_mansion:credits
e3_demo:exterior/leaving_the_lab                       | Yes         | Loaded exterior                                 | Entering the mansion E3 demo variant        | Warp to mansion
e3_demo:first_entrance                                 | Yes         | Field player                                    | Look around the entrance                    | 
e3_demo:first_key                                      | Yes         | Reach 751.0 11 9.0                              | Key in the entrance                         | Spawns key for door lock "living_room"
e3_demo:go_to_mansion/original                         | Yes         |                                                 | The Original Mansion option                 | (Warp to exterior + e3_demo:exterior/leaving_the_lab + load e3_demo:original mansion) / luigis_mansion:go_to_mansion/failure
e3_demo:just_money                                     | Yes         |                                                 | Nothing to portrificationize                | Save progress (choice) + save high score + warp to exterior + luigis_mansion:credits
e3_demo:meet_e_gadd                                    | Yes         | Field walking_player                            | First entrance of the Living Room           | Warp to Underground Lab + luigis_mansion:the_mansion
e3_demo:portrait_ghosts                                | Yes         |                                                 | Go portrificationize those ghosts           | Forced portrificationizing triggering
e3_demo:score_results/get_data/original                | No          |                                                 | Score result step                           | Get values for the original mansion
extensive_training:amiibo/koopa                        | Yes         |                                                 | Toggle Koopa amiibo                         | Toggle Koopa amiibo
extensive_training:training_room/endless               | Yes         |                                                 | Endless training room program               | Warp to Underground Lab, saves score
extensive_training:training_room/pvp                   | Yes         |                                                 | PVP training room program                   | Warp to Underground Lab or extensive_training:training_room/pvp (choice)
extensive_training:training_room/pvp_defeat            | No          | Run as player                                   | You are out of the contest                  | Sets animation, shows message, prevents ghosts targeting player
extensive_training:training_room/speedrun              | Yes         |                                                 | Speedrun training room program              | Warp to Underground Lab, saves score (conditional)
```

/datum/job/adventurer/courtagent
	title = "Nightlord Agent"
	tutorial = "A secret codeword. A quick handshake. A flash of a subtle gaze. \
	All of these are your keys to letting the Nightlord know you are one of theirs. \
	An agent hired by the Palace to watch over the citizens as one of their own, \
	you are there to blend into the crowd and report back any wrongdoings that might be transpiring. \
	You are in invaluable to the protection of New Palmos, but be careful, as rats are considered disposable pests by many."
	job_flags = (JOB_EQUIP_RANK | JOB_NEW_PLAYER_JOINABLE)
	total_positions = 0
	spawn_positions = 2
	min_pq = 10

	outfit = null
	outfit_female = null

	always_show_on_latechoices = FALSE
	job_reopens_slots_on_death = FALSE
	shows_in_list = FALSE
	can_have_apprentices = FALSE

/datum/job/adventurer/courtagent

//Hooking in here does not mess with their equipment procs
/datum/job/adventurer/courtagent/after_spawn(mob/living/spawned, client/player_client)
	if(ishuman(spawned))
		GLOB.roundstart_court_agents += spawned.real_name
	..()
	if(advclass_cat_rolls)
		hugboxify_for_class_selection(spawned)

Config = {}

Config.Invincible = true 
Config.Frozen = true 
Config.Stoic = true
Config.FadeIn = true
Config.DistanceSpawn = 20.0

Config.GenderNumbers = {
	['male'] = 4,
	['female'] = 5
}

Config.PedList = {
    {
		model = `cs_manuel`, 
		coords = vector4(-261.3852, -964.6974, 30.2240, 54.6353), 
		gender = 'male',
		scenario = "CODE_HUMAN_CROSS_ROAD_WAIT"

	},
}

Config.SelectJob = {
	{ title = 'Unemployed', job = 'unemployed', img = 'unemployed', icon = 'user' },
	{ title = 'Police', job = 'police', img = 'police', icon = 'fa-solid fa-handcuffs' },
	{ title = 'Ambulance', job = 'ambulance', img = 'ambulance', icon = 'ambulance' },
	{ title = 'Fire', job = 'fire', img = 'fire', icon = 'fire-extinguisher' },
	{ title = 'Soldier', job = 'soldier', img = 'soldier', icon = 'shield' },
}
Config = {}

-- PEDS

Config.Invincible = true 
Config.Frozen = true 
Config.Stoic = true
Config.FadeIn = true
Config.DistanceSpawn = 20.0
Config.EyeTarget = 'qtarget' -- ox_target
Config.ProgressTime = 5

Config.GenderNumbers = {
	['male'] = 4,
	['female'] = 5
}

Config.PedList = {
    [1] = {
		model = `cs_manuel`, 
		coords = vector4(-534.2907, -1715.0126, 19.1900, 257.9014), 
		gender = 'male',
		scenario = "CODE_HUMAN_CROSS_ROAD_WAIT",
		SelectJob = {
			{ 
				title 	= 'Unemployed', 
				job 	= 'unemployed', 
				img 	= 'unemployed', 
				icon 	= 'user',
				des 	= 'คนว่างงาน \nเป็นประชาชนทั่วไป'
			},
			{ 
				title 	= 'Police', 
				job 	= 'police', 
				img 	= 'police', 
				icon 	= 'fa-solid fa-handcuffs',
				des 	= 'ตำรวจ \nเป็นหน่วยงานที่คอยดูเเลความสงบภายในประเทศ'
			},
			{ 
				title 	= 'Ambulance', 
				job 	= 'ambulance', 
				img 	= 'ambulance', 
				icon 	= 'ambulance',
				des 	= 'หมอ \nเป็นหน่วยงานที่คอยดูเเลรักษาคนป่วยหรือสลบภายในประเทศ'
			},
			{ 
				title 	= 'Fire', 
				job 	= 'fire', 
				img 	= 'fire', 
				icon 	= 'fire-extinguisher',
				des 	= 'นักดับเพลิง \nเป็นหน่วยงานที่คอยดูเเลเหตุเพลิงไหม้ ภายในประเทศ'
			},
			{ 
				title 	= 'Soldier', 
				job 	= 'soldier', 
				img 	= 'soldier', 
				icon 	= 'shield',
				des 	= 'หทาร \nเป็นหน่วยงานที่คอยดูเเลรักษาความสงบภายในประเทศ'
			},
		}
	},
	[2] = {
		model = `cs_manuel`, 
		coords = vector4(-533.6335, -1712.4568, 19.2932, 264.0615), 
		gender = 'male',
		scenario = "CODE_HUMAN_CROSS_ROAD_WAIT",
		SelectJob = {
			{ 
				title 	= 'Unemployed', 
				job 	= 'unemployed', 
				img 	= 'unemployed', 
				icon 	= 'user',
				des 	= 'คนว่างงาน \nเป็นประชาชนทั่วไป'
			},
			{ 
				title 	= 'Police', 
				job 	= 'police', 
				img 	= 'police', 
				icon 	= 'fa-solid fa-handcuffs',
				des 	= 'ตำรวจ \nเป็นหน่วยงานที่คอยดูเเลความสงบภายในประเทศ'
			},
			{ 
				title 	= 'Ambulance', 
				job 	= 'ambulance', 
				img 	= 'ambulance', 
				icon 	= 'ambulance',
				des 	= 'หมอ \nเป็นหน่วยงานที่คอยดูเเลรักษาคนป่วยหรือสลบภายในประเทศ'
			},
			{ 
				title 	= 'Fire', 
				job 	= 'fire', 
				img 	= 'fire', 
				icon 	= 'fire-extinguisher',
				des 	= 'นักดับเพลิง \nเป็นหน่วยงานที่คอยดูเเลเหตุเพลิงไหม้ ภายในประเทศ'
			},
			{ 
				title 	= 'Soldier', 
				job 	= 'soldier', 
				img 	= 'soldier', 
				icon 	= 'shield',
				des 	= 'หทาร \nเป็นหน่วยงานที่คอยดูเเลรักษาความสงบภายในประเทศ'
			},
		}
	},
}

Config.Notify = function(msg,type)
	lib.notify({
		title = 'JOB CENTER',
		description = msg,
		position = 'top',
		icon = 'fa fa-check',
		type = type
	})
end

Config.Lang = {
	details 	= 'รายละเอียด : ',
	menu		= 'Job Center ',
	menu_orther	= 'กดยืนยันเพื่อเป็น ',
	confirm 	= 'ยืนยันเเล้ว',
	cancel 		= 'ยกเลิกเเล้ว',
	progress 	= 'กำลังรอการยืนยัน',
}

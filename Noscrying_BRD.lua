texts = require('texts')
local res = require('resources')
function get_sets()
	send_command('bind f7 gs c toggle Weapons set')
	send_command('bind !f7 gs c toggle Sub Weapons') --, ALT
	send_command('bind ^f7 gs c toggle Refresh staff idle') --, CTRL
	send_command('bind f9 gs c toggle TP set') 
	send_command('bind !f9 gs c toggle Tank_Mode') 
	send_command('bind f10 gs c toggle run set')
	send_command('bind f12 gs c toggle TH set')
	send_command('bind ^numpad1 gs c toggle Buff set')
	send_command('bind !numpad3 gs c toggle Echo Drops')
	send_command('bind !numpad1 gs c toggle Holy Water')
	send_command('bind !pause input //send Nolyte /Savage Blade')
	send_command('bind !pageup input //send Kiokura /Savage Blade')	
	send_command('bind !end input //send Kiokura /LeadenSalute')	
	send_command('bind !pagedown input //send @others /Savage Blade')
	
	Run_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Refresh_Index = 1
	Buff_Index = 1	

	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}
	
	Weapons_Set_Names = {'Carnwenhan','Naegling',"Twashtar"} --'Tauret'
	sets.weapons = {}
	sets.weapons.Tauret = {
    main="Tauret",
	}
	sets.weapons.Naegling = {
    main="Naegling",
	sub="Fusetto +2",
	}
	sets.weapons.Twashtar = {
    main="Twashtar",priority=19,
	sub="Fusetto +2",priority=1,
	}
	sets.weapons.Carnwenhan = {
    main="Carnwenhan",priority=19,
    sub="Twashtar",	priority=1,
	}

	sets["Carnwenhan"] = {
	main="Carnwenhan",
	}
	sets["Miracle Cheer"] = {
	range="Miracle Cheer"
	}	
	Sub_Weapons_Set_Names = {'Gleti','TP_Bonus','Ammurapi'} --'Kali'
	sets.Sub_Weapons = {}	
	sets.Sub_Weapons.Ammurapi = {
	sub="Ammurapi Shield",
	}
	sets.Sub_Weapons.Gleti = {
    sub="Gleti's Knife",
	}
	sets.Sub_Weapons.TP_Bonus = {
	sub="Fusetto +2",
	}

	Refresh_Set_Names = {"Mpaca Refresh Idle"} --'Kali'
	sets.Refresh = {}	
	sets.Refresh["Mpaca Refresh Idle"] = {
	main="Mpaca's Staff",
	sub="Enki Strap"
	}
	
	sets.DD_Mode = {}
	sets.DD_Mode.index = {"STP/MA",'DT/Acc',"MEVA"}
	DD_Mode_ind = 1	
	sets.DD_Mode["STP/MA"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
	legs="Nyame Flanchard",
    --legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Suppanomimi",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}
	sets.DD_Mode["DT/Acc"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Suppanomimi",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}	
	sets.DD_Mode["MEVA"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Carrier's Sash",
    left_ear="Eabani Earring",
    right_ear="Sanare Earring",
    left_ring="Moonlight Ring",
    right_ring="Purity Ring",
    back="Null Shawl",
	}	
	
	sets.Tank_Mode = {}
	sets.Tank_Mode.index = {"STP/MA",'DT/Acc'}
	Tank_Mode_ind = 1	

	sets.Tank_Mode["STP/MA"]  = {	
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}
	sets.Tank_Mode["DT/Acc"]  = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Telos Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}  	
	
-- Aftermath
	
	sets["Carnwenhan Aftermath"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Null Masque",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}	
	sets["Twashtar Aftermath"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Blistering Sallet +1",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Suppanomimi",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back="Null Shawl",
	}	
	
-- Aftermath

	Run_Set_Names = {"DT/Regen","EVA/DT","Refresh"}
	sets.run = {}
	sets.run["DT/Regen"] =  {
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Null Masque",
    body="Fili Hongreline +2",
    hands="Nyame Gauntlets",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Alabaster Earring",
    right_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    left_ring="Chirich Ring +1",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.run["EVA/DT"] = { --, 53PDT, 
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Fili Cothurnes +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Shadow Ring",
    right_ring="Murky Ring",
    back="Null Shawl",
	}
	sets.run["Refresh"] =  {
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Null Masque",
    body="Artsieq Jubbah",
    hands="Fili Manchettes +2",
	legs="Assiduity Pants +1",
    feet="Fili Cothurnes +2",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear={ name="Arete del Luna +1", augments={'Path: A',}},
    right_ear="Fili Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Null Shawl",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    hands={ name="Chironic Gloves", augments={'Pet: Phys. dmg. taken -3%','STR+7','Weapon skill damage +7%','Accuracy+11 Attack+11',}},
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}
	sets.ws['Circle Blade']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    hands={ name="Chironic Gloves", augments={'Pet: Phys. dmg. taken -3%','STR+7','Weapon skill damage +7%','Accuracy+11 Attack+11',}},
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}
	sets.ws['Mercy Stroke']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    hands={ name="Chironic Gloves", augments={'Pet: Phys. dmg. taken -3%','STR+7','Weapon skill damage +7%','Accuracy+11 Attack+11',}},
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Cessance Earring",
    left_ring="Epaminondas's Ring",
    right_ring="Sroda Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws["Rudra's Storm"]	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Justaucorps +3", augments={'Enhances "Troubadour" effect',}},
    hands={ name="Chironic Gloves", augments={'Pet: Phys. dmg. taken -3%','STR+7','Weapon skill damage +7%','Accuracy+11 Attack+11',}},
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet="Nyame Sollerets",
	--neck="Rep. Plat. Medal",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ilabrat Ring",
	--back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Evisceration']	= {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body={ name="Bihu Justaucorps +3", augments={'Enhances "Troubadour" effect',}},
    hands="Bunzi's Gloves",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist="Fotia Belt",
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Ilabrat Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}	
	sets.ws['Mordant Rime']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    --hands={ name="Chironic Gloves", augments={'Pet: Phys. dmg. taken -3%','STR+7','Weapon skill damage +7%','Accuracy+11 Attack+11',}},
	hands="Regal Gloves",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear="Regal Earring",
    left_ring="Ilabrat Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
    --back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}		
	sets.ws['Aeolian Edge']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head="Bunzi's Hat",
    body={ name="Nyame Mail", augments={'Path: B',}},
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet={ name="Nyame Sollerets", augments={'Path: B',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Gust Slash']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Arvina Ringlet +1",
    back="Argocham. Mantle",
	}		
	sets.ws['Exenterator']	= {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Blistering Sallet +1",
    body={ name="Bihu Justaucorps +3", augments={'Enhances "Troubadour" effect',}},
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Ilabrat Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}		
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja.enmity = {
    head="Halitus Helm",
    body="Emet Harness",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Unmoving Collar +1",
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",	--, 4
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}	
	sets.ja['Nightingale'] = {
    feet={ name="Bihu Slippers", augments={'Enhances "Nightingale" effect',}},
	main="Carnwenhan",
	} 	
	sets.ja['Pianissimo'] = {
    range="Miracle Cheer",
	} 
	sets.ja['Troubadour'] = {
    body={ name="Bihu Justaucorps +3", augments={'Enhances "Troubadour" effect',}},
	main="Carnwenhan",
	} 	
	sets.ja['Soul Voice'] = {
    range="Miracle Cheer",
	main="Carnwenhan",
	legs="Bard's Cannions +2",
	}
	sets.ja['Marcato'] = {
	main="Carnwenhan",
	}
	sets.ja['Sentinel'] = set_combine(sets.ja.enmity, {
	})
	
	sets.ja.waltz = {		
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Adamantite Armor",
    legs="Dashing Subligar",
    hands="Fili Manchettes +2",
    feet="Fili Cothurnes +2",
    waist="Shetal Stone",
    left_ear="Enchntr. Earring +1",
    right_ear="Handler's Earring",
	left_ring="Asklepian Ring",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}

	
	sets.idle = {}
	sets.idle.normal = {
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Nyame Helm",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Loricate Torque +1",
    waist="Null Belt",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Ilabrat Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	} 					-- Leave this empty.
	
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = { 			--, 80 FC
    range="Miracle Cheer",priority=20,
	head="Bunzi's Hat", 				--, 10
    body="Inyanga Jubbah +2", 			--, 14
    hands="Leyline Gloves", 			--, 8
    legs="Ayanmo Cosciales +2", 		--, 6
    feet="Fili Cothurnes +2", 			--, 10
    neck="Voltsurge Torque", 			--, 4
    waist="Witful Belt", 				--, 3
    left_ear="Enchanter's Earring +1", 	--, 2
    right_ear="Loquacious Earring", 	--, 3
    left_ring="Weatherspoon Ring +1", 	--, 6
    right_ring="Kishar Ring", 			--, 4
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}}, --, 10
	}
	sets.precast.Hordelullaby = set_combine(sets.precast.fastcast, {
	range="Blurred Harp +1",
	})
	sets.precast["Honor March"] = set_combine(sets.precast.fastcast, {
	range="Marsyas",
	})
	-- sets.precast["Mage's Ballad"] = set_combine(sets.precast.fastcast, {
	-- range="Miracle Cheer",
	-- })	
    sets.midcast = {}               -- leave this empty
	sets.midcast.macc = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.midcast.EnfeebDuration = set_combine(sets.midcast.macc, {
	range="Marsyas",
    feet="Brioso Slippers +3",
	})
	sets.midcast.EnfeebPotency = set_combine(sets.midcast.macc, {
    feet="Brioso Slippers +3",
	})
	sets.midcast.Banish = {
    range="Gjallarhorn",
    head="Ipoca Beret",
    body="Adamantite Armor",
    hands="Fili Manchettes +2",
	legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Jokushu Chain",
    waist="Null Belt",
    left_ear="Crepuscular Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	}
	sets.midcast.MultiSong = {
	range="Daurdabla",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Bunzi's Pants",
    feet="Fili Cothurnes +2",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Shadow Ring",
    right_ring="Moonbeam Ring",
    back="Moonbeam Cape",
	}
	sets.midcast.enmity = {
    head="Halitus Helm",
    body="Emet Harness",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Unmoving Collar +1",
    waist="Warwolf Belt",
    left_ear="Cryptic Earring",	--, 4
    right_ear="Trux Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}
	sets.midcast.selfsongs = {
	range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Witful Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Murky Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast["Honor March"] = set_combine(sets.midcast.selfsongs, {
	range="Marsyas",
    hands="Fili Manchettes +2",
	})
	sets.midcast.Ballad = set_combine(sets.midcast.selfsongs, {
	legs="Fili Rhingrave +2",
	})
	sets.midcast.Minuet = set_combine(sets.midcast.selfsongs, {
    body="Fili Hongreline +2",
	})
	sets.midcast.Minne = set_combine(sets.midcast.selfsongs, {
    legs="Mousai Seraweels +1",
	})
	sets.midcast.Mambo = set_combine(sets.midcast.selfsongs, {
    feet="Mousai Crackows +1",
	})
	sets.midcast.Scherzo = set_combine(sets.midcast.selfsongs, {
    feet="Fili Cothurnes +2",
	})
	sets.midcast.Threnody = set_combine(sets.midcast.selfsongs, {
    body="Mousai Manteel +1",
	})
	sets.midcast.Carol = set_combine(sets.midcast.selfsongs, {
    hands="Mousai Gages +1",
	})
	sets.midcast.MazurkaRecast = {
    range="Miracle Cheer",
    head="Bunzi's Hat",
    body="Fili Hongreline +2",
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    legs="Fili Rhingrave +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Embla Sash",
    left_ear="Loquac. Earring",
    right_ear="Enchntr. Earring +1",
    left_ring="Weather. Ring +1",
    right_ring="Kishar Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},	
	}
	sets.midcast.HordeLullabyII = set_combine(sets.midcast.macc, { 
	-- String Skill 486+
	-- Horde Lullaby II Area of Effect
	-- String 	Skill  	Radius (Yalms)
	-- 			0~404 	4
	-- 			405 	5
	-- 			486 	6
	-- 			567 	7
	
    --range="Daurdabla",
	range="Blurred Harp +1",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Inyan. Dastanas +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Null Belt",
	left_ear="Regal Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Null Shawl",
	})
	sets.midcast.HordeLullaby = set_combine(sets.midcast.macc, {
    range="Blurred Harp +1",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Null Belt",
    left_ear="Crep. Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Murky Ring",
    back="Null Shawl",
	})
	
	sets.midcast.cura = { --, +57% Cure (50% Cap), -50% PDT, -32% MDT
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +10
    body="Bunzi's Robe", --, +15
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}, --, +17
    legs="Bunzi's Pants",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}}, --, +15
	neck="Loricate Torque +1",
    waist="Flume Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Murky Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Cursna = {
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    hands="Inyan. Dastanas +2",
    feet="Gendewitha Galoshes +1", 	--, 10
    neck="Debilis Medallion", 		--, 15
    left_ring="Haoma's Ring", 		--, 15
    right_ring="Menelaus's Ring", 	--, 20
    back="Oretania's Cape +1", 		--, 5
	}
	sets.midcast.enhancing = {
    head="Fili Calot +2",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands="Inyan. Dastanas +2",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Hoxne Torque",
    waist="Embla Sash",
    left_ear="Andoaa Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Merciful Cape",
	}
	sets.midcast.enhancingduration = {
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Hoxne Torque",
    waist="Embla Sash",
    left_ear="Andoaa Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    right_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
    back="Merciful Cape",
	}
	sets.midcast.regen = set_combine(sets.run["EVA/DT"], {
    head={ name="Taeon Chapeau", augments={'Mag. Evasion+16','Spell interruption rate down -9%','"Regen" potency+3',}},
    body={ name="Taeon Tabard", augments={'Mag. Evasion+19','Spell interruption rate down -9%','"Regen" potency+3',}},
    hands={ name="Taeon Gloves", augments={'Mag. Evasion+15','Spell interruption rate down -10%','"Regen" potency+3',}},
    legs={ name="Taeon Tights", augments={'Mag. Evasion+17','Spell interruption rate down -9%','"Regen" potency+3',}},
    feet={ name="Taeon Boots", augments={'Mag. Evasion+18','Spell interruption rate down -9%','"Regen" potency+3',}},
    waist="Embla Sash",
	})
	sets.midcast.TreasureHunter = {
    head="Wh. Rarab Cap +1",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    waist="Chaac Belt",
	}
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.Sleep = set_combine(sets.run["DT/Regen"], {
	range="Prime Horn",
	})	
	sets.buff.Phalanx = {
    head={ name="Taeon Chapeau", augments={'Spell interruption rate down -8%','Phalanx +3',}},
    body={ name="Taeon Tabard", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    hands={ name="Taeon Gloves", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    legs={ name="Taeon Tights", augments={'Spell interruption rate down -10%','Phalanx +3',}},
    feet={ name="Taeon Boots", augments={'Spell interruption rate down -10%','Phalanx +3',}},
	}
    sets.aftercast = {}             -- leave this empty
	
remedy_box = texts.new('', {
    pos = {x = 598, y = 930},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
panacea_box = texts.new('', {
    pos = {x = 598, y = 880},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
holywater_box = texts.new('', {
    pos = {x = 598, y = 830},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile_box = texts.new('', {
    pos = {x = 590, y = 965},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
vile1_box = texts.new('', {
    pos = {x = 572, y = 980},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
InstantWarp_box = texts.new('', {
    pos = {x = 680, y = 1068},
    text = {
        font = 'Consolas',
        size = 8,
        stroke = {width = 2},
    },
	bg = {
		alpha = 0,
	},	
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
Food_box = texts.new('', {
    pos = {x = 1080, y = 1088},
    text = {
        font = 'Consolas',
        size = 10,
        stroke = {width = 2},
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
		draggable = false,
    }
})
SneakInvisible_box = texts.new('${text}', {
    pos = {
        x = 530,
        y = 1050,
    },
    text = {
        font = 'Consolas',
        size = 10,
        red = 255,
        green = 255,
        blue = 255,
    },
    flags = {
        right = false,
        bottom = false,
        bold = true,
        draggable = false,
    }
})

remedy_box:show()
panacea_box:show()
holywater_box:show()
vile_box:show()
vile1_box:show()
InstantWarp_box:show()
Food_box:show()
SneakInvisible_box:show()

update_item_boxes()
count_item()
end

function precast(spell)
    if  spell.type == 'BardSong' or spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
		 if spell.name:match("Horde Lullaby") then
			equip(sets.precast.Hordelullaby)
		end
	end
	if spell.name == "Honor March" then
		equip(sets.precast["Honor March"])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])  
	end
end


function midcast(spell)
    if spell.interrupted then
        enable('range','ammo')
    end

    local equip_set = sets.midcast.BardSong  -- default fallback
    local lock_instrument = false

    -- Honor March must use Marsyas
    if spell.name == "Honor March" then
        equip_set = sets.midcast["Honor March"]
        lock_instrument = true

    -- Self-targeted songs
    elseif spell.type == 'BardSong' and (spell.target.type == 'SELF' or spell.target.type == 'PLAYER') then
        if DD_Mode then
            equip_set = sets.midcast.selfsongs
            lock_instrument = true
        elseif Tank_Mode then
            equip_set = set_combine(sets.midcast.selfsongs, sets.midcast.enmity)
            lock_instrument = true
        end

    -- Monster-targeted songs (Enfeebling/Buff)
    elseif spell.type == 'BardSong' and spell.target.type == 'MONSTER' then
        if DD_Mode then
            equip_set = sets.midcast.macc
        elseif Tank_Mode then
            equip_set = set_combine(sets.midcast.macc, sets.midcast.enmity)
        end
    end

    -- Song-specific overrides
    if T{"Army's Paeon","Army's Paeon II"}:contains(spell.name) then
        equip_set = sets.midcast.MultiSong
    elseif spell.name:match("Knight's Minne") then
        equip_set = sets.midcast.Minne
    elseif spell.name:match("Chocobo Mazurka") or spell.name:match("Goddess's Hymnus") then
        equip_set = sets.midcast.MazurkaRecast
    elseif spell.name:match("Valor Minuet") or spell.name:match("Blade Madrigal") then
        equip_set = sets.midcast.Minuet
    elseif spell.name:match("Mambo") then
        equip_set = sets.midcast.Mambo
    elseif spell.name:match("Elegy") or spell.name:match("Requiem") or spell.name:match("Virelai") then
        equip_set = sets.midcast.EnfeebDuration
    elseif spell.name:match("Nocturne") or spell.name:match("Threnody") then
        equip_set = sets.midcast.EnfeebPotency
    elseif spell.name == "Horde Lullaby II" then
        equip_set = sets.midcast.HordeLullabyII
    elseif spell.name == "Horde Lullaby" then
        equip_set = sets.midcast.HordeLullaby
    elseif spell.name == "Foe Lullaby II" then
        equip_set = sets.midcast.FoeLullaby
    elseif string.find(spell.english,'Carol') then
        equip_set = sets.midcast.Carol
    elseif string.find(spell.english,'Threnody') then
        equip_set = sets.midcast.Threnody
    elseif string.find(spell.english,'Etude') then
        equip_set = sets.midcast.Etude
    elseif spell.name:match("Sentinel's Scherzo") then
        equip_set = sets.midcast.Scherzo
    elseif spell.skill == 'Healing Magic' then
        equip_set = sets.midcast.cura
    elseif spell.skill == 'Enfeebling Magic' or spell.skill == 'Dark Magic' then
        equip_set = sets.midcast.macc
    end

    -- Equip the chosen set
    equip(equip_set)

    -- Lock instrument if needed
    if lock_instrument then
        disable('range','ammo')
    end
end

function aftercast(spell)
	idle()
    if spell.type == 'BardSong' then
        enable('range','ammo')
    end
	update_item_boxes()
end

function buff_change(buff,gain,lose)
    if buff == "doom" then --, Auto equips doom set, cause I'm lazy from killing Shinryu
        if gain then
            equip(sets.buff.Holywater)
             disable('ring1','ring2','waist','neck','feet')
        else
            enable('ring1','ring2','waist','neck','feet')
            status_change(player.status)
        end
    end
	if buff == "sleep" then
		if gain then
            equip(sets.buff.Sleep)
             	disable('range')
        	else
            	enable('range')
            status_change(player.status)
		end
	end
	if buff == "Troubadour" then
		if gain then
            equip(sets["Carnwenhan"])
	elseif lose then
			equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
            status_change(player.status)
		end
	end
end

-- function buff_change(buff,lose)
	-- if buff == "Troubadour" then
		-- if lose then
			-- equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
			-- enable('main')
            -- status_change(player.status)
		-- end
	-- end
-- end

function idle()
	if player.status =="Engaged" then --, When drawing weapon
		if DD_Mode == false then
			equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]]) --, Equips the last gearset you changed to, is not static
		elseif DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
				if buffactive["Aftermath: Lv.3"] and player.equipment.main == "Carnwenhan" then
					equip(sets["Carnwenhan Aftermath"])
			elseif buffactive["Aftermath: Lv.3"] and player.equipment.main == "Twashtar" then
					equip(sets["Twashtar Aftermath"])
				end
			end
		end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end


function status_change(new,old)
	idle()
	update_item_boxes()
end

Tank_Mode = true
DD_Mode = true

function self_command(command) --, Allows of use of various commands
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if DD_Mode == true then --, Checks whether or not the DD_Mode Mode is active,
			DD_Mode_ind = DD_Mode_ind + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end 
			windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
			--end
		elseif DD_Mode == false then
			if Tank_Mode == true then
				Tank_Mode_ind = Tank_Mode_ind + 1
				if Tank_Mode_ind > #sets.Tank_Mode.index then Tank_Mode_ind = 1 end
				windower.add_to_chat('Tank mode --> ' .. sets.Tank_Mode.index[Tank_Mode_ind] ..'')
				--if player.status == 'Engaged' then
					equip(sets.Tank_Mode[sets.Tank_Mode.index[Tank_Mode_ind]])
				end
			end		
		end
	if command == 'toggle Tank_Mode set' then
		DD_Mode_ind = DD_Mode_ind + 1
		if DD_Mode_ind > #sets.DD_Mode.index then DD_Mode_ind = 1 end
		windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_ind] ..'')
		if player.status == 'Engaged' then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_ind]])
		end
	elseif command == 'toggle Tank_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Tank Mode: [On] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
		status_change(player.status)
	end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Run mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub Weapons' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.Sub_Weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Refresh staff idle' then
        windower.add_to_chat("Equipped Mpaca's Idle staff")
		equip(sets.Refresh["Mpaca Refresh Idle"])
	end
	if command == 'toggle TH set' then
        equip(sets.midcast.TreasureHunter)
    end
	if command == 'toggle Buff set' then
    windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
		equip(sets.buff[Buff_Set_Names[Buff_Index]])
	end
	if command == 'toggle Holy Water' then
        windower.add_to_chat("Using Holy Water")
		send_command ("input /item 'Holy Water' <me>")
	end
	if command == 'toggle Echo Drops' then
        windower.add_to_chat("Using Echo Drops")
		send_command ("input /item 'Echo Drops' <me>")
    end
    if cmd == 'darkthorn' then
        send_command("input /ma 'Magic Finale' <bt>")
    end
end
function count_item(name)
    local item = res.items:with('en', name)
    if not item then return 0 end

    local inv = windower.ffxi.get_items('inventory')
    local count = 0

    for i = 1, inv.max do
        local slot = inv[i]
        if slot and slot.id == item.id then
            count = count + slot.count
        end
    end

    return count
end
function update_item_boxes()

    remedy_box:text(('Rem: %d'):format(count_item('Remedy')))
    panacea_box:text(('Pan: %d'):format(count_item('Panacea')))
    holywater_box:text(('HW: %d'):format(count_item('Holy Water')))
    vile_box:text(('VElix: %d'):format(count_item('Vile Elixir')))
    vile1_box:text(('VElix +1: %d'):format(count_item('Vile Elixir +1')))
    InstantWarp_box:text(('Warp: %d'):format(count_item('Instant Warp')))
    Food_box:text(('Grape Daifuku: %d'):format(count_item('Grape Daifuku')))
	SneakInvisible_box:text(
		('Silent Oil : %d\nPrism Powder: %d'):format(
			count_item('Silent Oil'),
			count_item('Prism Powder')
		))

end

function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind ^f7')

send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')

send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind ^f10')

send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind ^f12')

send_command('unbind Numpad1')
send_command('unbind !Numpad1')
send_command('unbind ^Numpad1')

send_command('unbind Numpad3')
send_command('unbind !Numpad3')
send_command('unbind ^Numpad3')

send_command('unbind Numpad0')
send_command('unbind !Numpad0')
send_command('unbind ^Numpad0')
send_command('unbind Numpad0')

remedy_box:destroy()
panacea_box:destroy()
holywater_box:destroy()
vile_box:destroy()
vile1_box:destroy()
InstantWarp_box:destroy()
Food_box:destroy()
SneakInvisible_box:destroy()
end

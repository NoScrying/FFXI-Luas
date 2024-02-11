function get_sets()
	send_command('bind f7 gs c toggle Weapons set')
	send_command('bind !f7 gs c toggle Sub Weapons') --, ALT
	send_command('bind ^f7 gs c toggle Refresh staff idle') --, CTRL
	send_command('bind f9 gs c toggle TP set')
	send_command('bind !f9 gs c toggle DD_Mode') 
	send_command('bind f10 gs c toggle run set')
	send_command('bind f12 gs c toggle TH set')
	send_command('bind !numpad1 gs c toggle Buff set') 
	
	Run_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	Refresh_Index = 1
	Buff_Index = 1	

	Weapons_Set_Names = {'Carnwenhan','Naegling',"Gleti"} --'Tauret'
	sets.weapons = {}
	sets.weapons.Tauret = {
    main="Tauret",
	}
	sets.weapons.Naegling = {
    main="Naegling",
	}
	sets.weapons.Gleti = {
    main="Gleti's Knife",
	}
	sets.weapons.Carnwenhan = {
    main="Carnwenhan",
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
	
	sets.Enmity_Mode = {} 				-- Leave this empty.
	sets.Enmity_Mode.index = {"STP/MA",'DT/Acc'}
	Enmity_Mode_Index = 1
	
	sets.Enmity_Mode["STP/MA"]  = {	
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Blistering Sallet +1",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}
	sets.Enmity_Mode["DT/Acc"]  = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Nyame Helm",
    body="Ashera Harness",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}  	
	sets.Aftermath = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Blistering Sallet +1",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}	

	sets.DD_Mode = {}
	sets.DD_Mode.index = {"STP/MA",'DT/Acc'}
	DD_Mode_Index = 1
	
	sets.DD_Mode["STP/MA"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Blistering Sallet +1",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}
	sets.DD_Mode["DT/Acc"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Nyame Helm",
    body="Ashera Harness",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}
	
	Run_Set_Names = {"DT/Regen","EVA/DT","Refresh"}
	sets.run = {}
	sets.run["DT/Regen"] =  {
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Nyame Helm",
    body="Fili Hongreline +2",
    hands="Nyame Gauntlets",
    legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}
	sets.run["EVA/DT"] = { --, 53PDT, 
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Nyame Helm", --, 7
    body="Nyame Mail", --, 9
    hands="Nyame Gauntlets", --, 7
    legs="Nyame Flanchard", --, 8
    feet="Fili Cothurnes +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Svelt. Gouriz +1",
    left_ear="Infused Earring",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",	--, 10
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}}, --, 7 
    back="Moonbeam Cape",
	}
	sets.run["Refresh"] =  {
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
    head="Fili Calot +2",
    body="Artsieq Jubbah",
    hands="Fili Manchettes +2",
	legs="Assiduity Pants +1",
    feet="Fili Cothurnes +2",
    neck="Sibyl Scarf",
    waist="Flume Belt",
    left_ear="Halasz Earring",
    right_ear="Fili Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +3", augments={'Enhances "Troubadour" effect',}},
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
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
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
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
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
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
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
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
    hands="Nyame Gauntlets",
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
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
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
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
    neck="Sibyl Scarf",
    waist="Orpheus's Sash",
    left_ear="Regal Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Arvina Ringlet +1",
    back="Aurist's Cape +1",
	}	
	sets.ws['Gust Slash']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head="Bunzi's Hat",
    body="Bunzi's Robe",
    hands="Bunzi's Gloves",
    legs="Bunzi's Pants",
    feet="Bunzi's Sabots",
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
	} 	
	sets.ja['Troubadour'] = {
    body={ name="Bihu Justaucorps +3", augments={'Enhances "Troubadour" effect',}},
	main="Carnwenhan",
	} 	
	sets.ja['Soul Voice'] = {
	legs="Bard's Cannions +2",
	}
	sets.ja['Sentinel'] = set_combine(sets.ja.enmity, {
	})
	
	sets.ja.waltz = {		
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
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
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Elite Royal Collar",
    waist="Flume Belt",
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring={ name="Dark Ring", augments={'Phys. dmg. taken -6%','Magic dmg. taken -3%',}},
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	} 					-- Leave this empty.
	
	
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = { 			--, 80 FC
    range={ name="Linos", augments={'Evasion+15','"Regen"+1','AGI+8',}},
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
	
    sets.midcast = {}               -- leave this empty
	sets.midcast.macc = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Crepuscular Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Banish = {
    range="Gjallarhorn",
    head="Ipoca Beret",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
	legs="Fili Rhingrave +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Crepuscular Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.MultiSong = {
	range="Daurdabla",
    head="Fili Calot +2",
    body="Nyame Mail",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Defending Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
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
	--range="Daurdabla",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Defending Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast["Honor March"] = set_combine(sets.midcast.selfsongs, {
	range="Marsyas",
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
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
	left_ear="Regal Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	})
	sets.midcast.HordeLullaby = set_combine(sets.midcast.macc, {
    range="Blurred Harp +1",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist={ name="Acuity Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Defending Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	})
	
	sets.midcast.cura = { --, +57% Cure (50% Cap), -50% PDT, -32% MDT
    head={ name="Vanya Hood", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, --, +10
    body="Bunzi's Robe", --, +15
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}}, --, +17
    legs="Bunzi's Pants",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}}, --, +15
    neck="Willpower Torque",
    waist="Flume Belt",
    left_ear="Magnetic Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Defending Ring",
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
    neck="Melic Torque",
    waist="Embla Sash",
    left_ear="Andoaa Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Merciful Cape",
	}
	sets.midcast.enhancingduration = {
    head={ name="Telchine Cap", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck="Melic Torque",
    waist="Embla Sash",
    left_ear="Andoaa Earring",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
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
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
    waist="Gishdubar Sash",	
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	}
	sets.buff.Sleep = set_combine(sets.run["DT/Regen"], {
	range="Prime Horn",
	})	
    sets.aftercast = {}             -- leave this empty
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
	if spell.type == 'BardSong' and spell.target.type == 'SELF' or spell.target.type == 'PLAYER'then
		if DD_Mode == true then
        equip(sets.midcast.selfsongs)
			elseif  Enmity_Mode == true then
			equip(set_combine (sets.midcast.selfsongs, sets.midcast.enmity))
		end
	end
	if spell.type == 'BardSong' and spell.target.type == 'MONSTER' then
		if DD_Mode == true then
		equip(sets.midcast.macc)
			elseif Enmity_Mode == true then
			equip(set_combine (sets.midcast.macc, sets.midcast.enmity))	
			end
		end	

	if spell.name:match("Valor Minuet") or spell.name:match("Blade Madrigal") then
        equip(sets.midcast.Minuet)
	end	
	if spell.name:match("Mage's Ballad") then
        equip(sets.midcast.Ballad)
	end	
	if spell.name == "Army's Paeon" or spell.name == "Army's Paeon II" or spell.name == "Valor Minuet" then
        equip(sets.midcast.MultiSong)
	end	
	if spell.name:match("Knight's Minne") then
        equip(sets.midcast.Minne)
	end	
	if spell.name:match("Dragonfoe Mambo") or spell.name:match("Sheepfoe Mambo") then
        equip(sets.midcast.Mambo)
	end	
	if spell.name == "Horde Lullaby II" then
        equip(sets.midcast.HordeLullabyII)
	end	
	if spell.name == "Horde Lullaby" then
        equip(sets.midcast.HordeLullaby)
	end	
	if string.find(spell.english,'Carol') then
        equip(sets.midcast.Carol)
	end	
	if string.find(spell.english,'Threnody') then
        equip(sets.midcast.Threnody)
	end	
	if spell.name:match("Sentinel's Scherzo") then
        equip(sets.midcast.Scherzo)
	end	
	if spell.name:match("Honor March") then
		equip(sets.midcast["Honor March"])
	end
	if spell.skill == 'Healing Magic' then
		equip(sets.midcast.cura)
	end
	if spell.name:match("Paralyna") or spell.name:match("Silena") or spell.name:match("Stona") or spell.name:match("Viruna") or spell.name:match("Poisona") then
		equip(sets.run["EVA/DT"])
			elseif spell.name == "Cursna" then
				equip(set_combine(sets.run["EVA/DT"], sets.midcast.Cursna))
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen)
	end
	if spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancing)
			if spell.name:match("Haste") or spell.name:match("Auspice") or spell.name:match("Reraise") or spell.name:match("Protect") or spell.name:match("Shell") then
			equip(sets.midcast.enhancingduration)
		end
	end
	if spell.name:match('Banish') then
		equip(sets.midcast.Banish)
	end

	if spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.macc)
	end
    if spell.name:match('Curing') or spell.name:match('Divine') then
        equip(sets.ja.waltz)
	end
	if spell.name == "Banishga" or spell.name == "Flash" then
        equip(sets.midcast.enmity)
	end	
end

	



function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
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
            equip(sets.weapons.Carnwenhan)
             	disable('main')
        	else
			equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
            	enable('main')
            status_change(player.status)
		end
	end
end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if DD_Mode == true then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_Index]]) --, Equips the last gearset you changed to, is not static
		end
	if player.status =="Engaged" then	
		if Enmity_Mode == true then
			equip(sets.Enmity_Mode[sets.Enmity_Mode.index[Enmity_Mode_Index]])
		end
	end
end
	if player.status =='Idle' then --, When holstering weapon
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
end

 
function status_change(new,old)
	idle()
end

Enmity_Mode = true
DD_Mode = true

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if DD_Mode == true then --, Checks whether or not the DD_Mode Mode is active,
			DD_Mode_Index = DD_Mode_Index + 1 --, Cycles through the Index, starts at 1 when Enmityitching or starting game
			if DD_Mode_Index > #sets.DD_Mode.index then DD_Mode_Index = 1 end 
			windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_Index] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_Index]])
			--end
		elseif DD_Mode == false then
			if Enmity_Mode == true then
				Enmity_Mode_Index = Enmity_Mode_Index + 1
				if Enmity_Mode_Index > #sets.Enmity_Mode.index then Enmity_Mode_Index = 1 end
				windower.add_to_chat('Enmity mode --> ' .. sets.Enmity_Mode.index[Enmity_Mode_Index] ..'')
				--if player.status == 'Engaged' then
					equip(sets.Enmity_Mode[sets.Enmity_Mode.index[Enmity_Mode_Index]])
				end
			end		
		end
	if command == 'toggle DD_Mode set' then
		DD_Mode_Index = DD_Mode_Index + 1
		if DD_Mode_Index > #sets.DD_Mode.index then DD_Mode_Index = 1 end
		windower.add_to_chat('DD mode --> ' .. sets.DD_Mode.index[DD_Mode_Index] ..'')
		if player.status == 'Engaged' then
			equip(sets.DD_Mode[sets.DD_Mode.index[DD_Mode_Index]])
		end
	elseif command == 'toggle DD_Mode' then
		if DD_Mode == true then
			DD_Mode = false
			windower.add_to_chat('<----- Enmity Mode: [On] ----->')
        else
			DD_Mode = true
			windower.add_to_chat('<----- DD Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle Enmity_Mode' then
		if Enmity_Mode == true then
			Enmity_Mode = false
			windower.add_to_chat('<----- Enmity Mode: [Off] ----->')
        else
			Enmity_Mode = true
			windower.add_to_chat('<----- Enmity Mode: [On] ----->')
		end
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
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
end


function file_unload() --, Unbinds defined keybinds when changing jobs, can also use "send_command('clearbinds')" to wipe any and all
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind ^f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind !numpad1')
send_command('unbind ^numpad1')
send_command('unbind !numpad0')
send_command('unbind !numpad7')
end

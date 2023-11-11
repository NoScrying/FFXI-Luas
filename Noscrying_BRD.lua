function get_sets()
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub Weapons') -- F10 = Cycle through
	send_command('bind f9 gs c toggle TP set')
	send_command('bind !f9 gs c toggle DW_Mode') 
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through	
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through	
	
	Run_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1

	Weapons_Set_Names = {'Carnwenhan','Naegling', } --'Tauret'
	sets.weapons = {}
	sets.weapons.Tauret = {
    main="Tauret",
	}
	sets.weapons.Naegling = {
    main="Naegling",
	}
	-- sets.weapons.Naegling = {
    -- main="Fusetto",
	-- sub="Qutrub Knife",
	-- }
	sets.weapons.Carnwenhan = {
    main="Carnwenhan",
	}
	
	Sub_Weapons_Set_Names = {'Ternion','TP_Bonus','Kali' } --''
	sets.Sub_Weapons = {}	
	sets.Sub_Weapons.Kali = {
	sub="Kali",
	}
	sets.Sub_Weapons.Ternion = {
	sub="Ternion Dagger +1",
	}
	sets.Sub_Weapons.TP_Bonus = {
	sub="Fusetto +2",
	}
	
	sets.SW_Mode = {} 				-- Leave this empty.
	sets.SW_Mode.index = {"Single Wield",'DT'}
	SW_Mode_Index = 1
	
	sets.SW_Mode["Single Wield"]  = {	
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Aya. Zucchetto +2",
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
	sets.SW_Mode.DT = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Fili Calot +2",
    body="Ashera Harness",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Nyame Sollerets",
    neck="Warder's Charm +1",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}  	
	sets.Aftermath = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Aya. Zucchetto +2",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Crep. Earring",
    right_ear="Dedition Earring",
    left_ring="Moonlight Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%','DEX+6'}},
	}	

	sets.DW_Mode = {}
	sets.DW_Mode.index = {"Dual Wield",'DT'}
	DW_Mode_Index = 1
	
	sets.DW_Mode["Dual Wield"] = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Aya. Zucchetto +2",
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
	
    -- range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    -- head={ name="Blistering Sallet +1", augments={'Path: A',}},
    -- body="Ayanmo Corazza +2",
    -- hands="Bunzi's Gloves",
    -- legs="Fili Rhingrave +2",
    -- feet="Nyame Sollerets",
    -- neck="Bard's Charm +1",
    -- waist="Shetal Stone",
    -- left_ear="Suppanomimi",
    -- right_ear="Eabani Earring",
    -- -- left_ear="Brutal Earring",
    -- -- right_ear="Cessance Earring",
    -- left_ring="Chirich Ring +1",
    -- right_ring="Lehko's Ring",
    -- back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.DW_Mode.DT = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Fili Calot +2",
    body="Ashera Harness",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Suppanomimi",
    right_ear="Eabani Earring",
    left_ring="Moonlight Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	
	Run_Set_Names = {"DT/Regen","EVA/DT"}
	sets.run = {}
	sets.run["DT/Regen"] =  {
    range={ name="Linos", augments={'Evasion+15','"Fast Cast"+4','AGI+8',}},
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
	sets.run["EVA/DT"] = {
    range={ name="Linos", augments={'Evasion+15','"Fast Cast"+4','AGI+8',}},
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Fili Cothurnes +2",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Flume Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Eabani Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws['Savage Blade']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +2", augments={'Enhances "Troubadour" effect',}},
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}
	sets.ws['Circle Blade']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +2", augments={'Enhances "Troubadour" effect',}},
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}
	sets.ws['Mercy Stroke']	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Jstcorps. +2", augments={'Enhances "Troubadour" effect',}},
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck="Rep. Plat. Medal",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Ifrit Ring +1",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}
	sets.ws["Rudra's Storm"]	= {
    range={ name="Linos", augments={'Attack+20','Weapon skill damage +3%','Quadruple Attack +3',}},
    head={ name="Lustratio Cap +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    body={ name="Bihu Justaucorps +2", augments={'Enhances "Troubadour" effect',}},
    hands="Nyame Gauntlets",
    legs={ name="Lustr. Subligar +1", augments={'Accuracy+20','DEX+8','Crit. hit rate+3%',}},
    feet={ name="Lustra. Leggings +1", augments={'HP+65','STR+15','DEX+15',}},
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Kentarch Belt +1", augments={'Path: A',}},
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'DEX+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}	
	sets.ws['Evisceration']	= {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    body="Nyame Mail",
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
    body={ name="Bihu Jstcorps. +2", augments={'Enhances "Troubadour" effect',}},
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
    head="Nyame Helm",
    body="Nyame Mail",
    hands="Nyame Gauntlets",
    legs="Nyame Flanchard",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Eschan Stone",
    left_ear="Ishvara Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Epaminondas's Ring",
    right_ring="Arvina Ringlet +1",
    back="Argocham. Mantle",
	}		
	sets.ws['Exenterator']	= {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},
    head="Aya. Zucchetto +2",
    body="Ashera Harness",
    hands="Bunzi's Gloves",
    legs={ name="Telchine Braconi", augments={'Accuracy+20','"Store TP"+6','DEX+10',}},
    feet="Nyame Sollerets",
    neck={ name="Bard's Charm +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Brutal Earring",
    right_ear="Cessance Earring",
    left_ring="Ilabrat Ring",
    right_ring="Lehko's Ring",
    back={ name="Intarabus's Cape", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%','STR+10'}},
	}		
	
	sets.ja = {} 					-- Leave this empty.
	sets.ja['Nightingale'] = {
    feet={ name="Bihu Slippers", augments={'Enhances "Nightingale" effect',}},
	} 	
	sets.ja['Troubadour'] = {
    body={ name="Bihu Justaucorps +2", augments={'Enhances "Troubadour" effect',}},
	} 	
	sets.ja['Soul Voice'] = {
	legs="Bard's Cannions +2",
	}
	
	sets.idle = {}
	sets.idle.normal = {
    range={ name="Linos", augments={'Accuracy+15','"Dbl.Atk."+3','Quadruple Attack +3',}},  
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
	sets.precast.fastcast = {
    range={ name="Linos", augments={'Evasion+12','"Fast Cast"+4','VIT+6',}},
	head="Bunzi's Hat",
    body="Inyanga Jubbah +2",
    hands="Leyline Gloves",
    legs="Ayanmo Cosciales +2",
    feet="Fili Cothurnes +2",
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Enchanter's Earring +1",
    right_ear="Loquacious Earring",
    left_ring="Weatherspoon Ring +1",
    right_ring="Kishar Ring",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
    sets.midcast = {}               -- leave this empty
	sets.midcast.enemysongs = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.selfsongs = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Defending Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Ballad = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Fili Rhingrave +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Plat. Mog. Belt",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Defending Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Minuet = {
    range="Gjallarhorn",
	--range="Daurdabla",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.macc = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
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
    right_ear="Tuisto Earring",
    left_ring="Moonlight Ring",
    right_ring={ name="Gelatinous Ring +1", augments={'Path: A',}},
    back="Moonbeam Cape",
	}
	sets.midcast.Minne = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Mousai Seraweels +1",
    feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Mambo = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Mousai Crackows +1",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Scherzo = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Threnody = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Mousai Manteel +1",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Carol = {
    range="Gjallarhorn",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Mousai Gages +1",
    legs="Inyanga Shalwar +2",
    feet="Fili Cothurnes +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.HordeLullaby = {
    range="Blurred Harp +1",
    head="Fili Calot +2",
    body="Fili Hongreline +2",
    hands="Fili Manchettes +2",
    legs="Inyanga Shalwar +2",
    --feet="Mousai Crackows +1",
	feet="Brioso Slippers +2",
    neck="Mnbw. Whistle +1",
    waist="Harfner's Sash",
    left_ear="Enchntr. Earring +1",
    right_ear={ name="Fili Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+7','Mag. Acc.+7',}},
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}},
	}
	
	sets.midcast.cure = {
    head="Vanya Hood",
    body="Bunzi's Robe",
    hands="Inyan. Dastanas +2",
    legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    neck="Phalaina Locket",
    waist="Hachirin-no-Obi",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Tempered Cape +1",
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
    range={ name="Linos", augments={'Evasion+12','"Fast Cast"+4','VIT+6',}},
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
	sets.midcast.TreasureHunter = {
    head="Wh. Rarab Cap +1",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    waist="Chaac Belt",
	}
	
    sets.aftercast = {}             -- leave this empty
end

function precast(spell)
    if  spell.type == 'BardSong' or spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
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
        equip(sets.midcast.selfsongs)
			elseif spell.type == 'BardSong' and spell.target.type == 'MONSTER' then
				equip(sets.midcast.enemysongs)
	end	
	if spell.name:match("Valor Minuet") then
        equip(sets.midcast.Minuet)
	end	
	if spell.name:match("Mage's Ballad") then
        equip(sets.midcast.Ballad)
	end	
	if spell.name == "Army's Paeon" or spell.name == "Army's Paeon II" then
        equip(sets.midcast.MultiSong)
	end	
	-- if spell.name:match("Knight's Minne") then
        -- equip(sets.midcast.Minne)
	-- end	
	-- if spell.name:match("Dragonfoe Mambo") or spell.name:match("Sheepfoe Mambo") then
        -- equip(sets.midcast.Mambo)
	-- end	
	if spell.name:match("Horde Lullaby") then
        equip(sets.midcast.HordeLullaby)
	end	
	-- if string.find(spell.english,'Carol') then
        -- equip(sets.midcast.Carol)
	-- end	
	-- if string.find(spell.english,'Threnody') then
        -- equip(sets.midcast.Threnody)
	-- end	
	if spell.name:match("Sentinel's Scherzo") then
        equip(sets.midcast.Scherzo)
	end	
	if spell.skill == 'Healing Magic' then
		equip(sets.midcast.cure)
	end
	if spell.skill == 'Enhancing Magic' then
		equip(sets.midcast.enhancing)
			if spell.name:match("Haste") or spell.name:match("Auspice") or spell.name:match("Reraise") or spell.name:match("Protect") or spell.name:match("Shell") or spell.name:match("Regen") then
			equip(sets.midcast.enhancingduration)
		end
	end
end
	



function aftercast(spell)
	idle()
end

function buff_change(buff,gain)

end

function idle() --, Engaged/Idle sets do not have to be here, can also be under self_command or anywhere really.
	if player.status =="Engaged" then --, When drawing weapon
		if DW_Mode == true then
			equip(sets.DW_Mode[sets.DW_Mode.index[DW_Mode_Index]]) --, Equips the last gearset you changed to, is not static
				if buffactive["Aftermath: Lv.3"] then
					equip(sets.Aftermath)				
		elseif SW_Mode == true then
			equip(sets.SW_Mode[sets.SW_Mode.index[SW_Mode_Index]])
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

SW_Mode = true
DW_Mode = true

function self_command(command)
	if command == 'toggle TP set' then --, When using the command as specified at the top of this lua, then executes these functions
		if DW_Mode == true then --, Checks whether or not the DW_Mode Mode is active,
			DW_Mode_Index = DW_Mode_Index + 1 --, Cycles through the Index, starts at 1 when switching or starting game
			if DW_Mode_Index > #sets.DW_Mode.index then DW_Mode_Index = 1 end 
			windower.add_to_chat('DW mode --> ' .. sets.DW_Mode.index[DW_Mode_Index] ..'') --, Sends a message ingame, not visible to others.
			--if player.status == 'Engaged' then
				equip(sets.DW_Mode[sets.DW_Mode.index[DW_Mode_Index]])
			--end
		elseif DW_Mode == false then
			if SW_Mode == true then
				SW_Mode_Index = SW_Mode_Index + 1
				if SW_Mode_Index > #sets.SW_Mode.index then SW_Mode_Index = 1 end
				windower.add_to_chat('SW mode --> ' .. sets.SW_Mode.index[SW_Mode_Index] ..'')
				--if player.status == 'Engaged' then
					equip(sets.SW_Mode[sets.SW_Mode.index[SW_Mode_Index]])
				end
			end		
		end
	if command == 'toggle DDW_Mode set' then
		DW_Mode_Index = DW_Mode_Index + 1
		if DW_Mode_Index > #sets.DW_Mode.index then DW_Mode_Index = 1 end
		windower.add_to_chat('DW mode --> ' .. sets.DW_Mode.index[DW_Mode_Index] ..'')
		if player.status == 'Engaged' then
			equip(sets.DW_Mode[sets.DW_Mode.index[DW_Mode_Index]])
		end
	elseif command == 'toggle DW_Mode' then
		if DW_Mode == true then
			DW_Mode = false
			windower.add_to_chat('<----- DW Mode: [Off] ----->')
        else
			DW_Mode = true
			windower.add_to_chat('<----- DW Mode: [On] ----->')
		end
		status_change(player.status)
	elseif command == 'toggle SW_Mode' then
		if SW_Mode == true then
			SW_Mode = false
			windower.add_to_chat('<----- SW Mode: [Off] ----->')
        else
			SW_Mode = true
			windower.add_to_chat('<----- SW Mode: [On] ----->')
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
	if command == 'toggle TH set' then
        equip(sets.midcast.TreasureHunter)
    end
end


function user_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
end
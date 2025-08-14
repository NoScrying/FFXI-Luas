function get_sets()
	send_command('bind f9 gs c toggle melee set')
	send_command('bind f10 gs c toggle Run set')
	send_command('bind f7 gs c toggle Main set')
	send_command('bind f12 gs c toggle TH set') 
	send_command('bind !numpad1 gs c toggle Buff set')
	send_command('bind End input //send Nolyte /ws "Savage Blade" <t>')
	
	Melee_Index = 1
	Main_Index = 1
	Run_Index = 1
	TH_Index = 1
	Buff_Index = 1
	
	sets["WarpRing"] = {
	left_ring= "Warp Ring"
	}
	sets["DemRing"] = {
	left_ring= "Dim. Ring (Dem)"
	}	
	
	Melee_Set_Names = {'DT'}--,"Refresh"
	sets.melee = {} 
	sets.melee.DT = {
	ammo="Homiliary",
    head="Null Masque",
    body="Ayanmo Corazza +2",
    hands="Bunzi's Gloves",
    legs="Ebers Pantaloons +2",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Cessance Earring",
    right_ear="Brutal Earring",
    left_ring="Ayanmo Ring",
    right_ring="Ilabrat Ring",
    back="Null Shawl",
	}
	sets.melee.Refresh =  {
    ammo="Homiliary",
    head="Null Masque",
    body="Arbatel Gown +2",
    hands="Nyame Gauntlets",
    legs="Assid. Pants +1",
    feet="Arbatel Loafers +2",
    neck="Null Loop",
    waist="Embla Sash",
    left_ear="Crep. Earring",
    right_ear="Savant's Earring",
    left_ring={name = "Stikini Ring +1", bag = "Wardrobe 1"},
	right_ring={name = "Stikini Ring +1", bag = "Wardrobe 2"},
    back="Moonbeam Cape",
	}


	Run_Set_Names = {'Refresh','DT'}--,'DT'
	sets.Run = {}
	sets.Run.Refresh =  {
    ammo="Homiliary",
    head="Null Masque",
    body="Piety Bliaut +3",
    hands="Nyame Gauntlets",
    legs="Assid. Pants +1",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Null Belt",
    left_ear="Eabani Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Shneddick Ring",
    right_ring="Stikini Ring +1",
    back="Null Shawl",
	}
	sets.Run.DT =  {
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Assid. Pants +1",
    feet="Nyame Sollerets",
    neck="Sibyl Scarf",
    waist="Null Belt",
    left_ear="Eabani Earring",
    right_ear="Odnowa Earring +1",
    left_ring="Shneddick Ring",
    right_ring="Stikini Ring +1",
    back="Null Shawl",
	}
	
	TH_Set_Names = {'TH4'}
	sets.TH = {}
	sets.TH.TH4 = {
    ammo="Per. Lucky Egg",
    head="Wh. Rarab Cap +1",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs="Arbatel Pants +2",
    feet={ name="Chironic Slippers", augments={'Mag. Acc.+1','Damage taken-1%','"Treasure Hunter"+2',}},
    neck="Null Loop",
    waist="Orpheus's Sash",
    left_ear="Friomisi Earring",
    right_ear="Regal Earring",
    left_ring="Freke Ring",
    right_ring="Weather. Ring +1",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	Main_Set_Names = {}--Bunzi,  'Malignance',
	sets.Main = {}
	
	sets.ws = {}
	
	sets.ja = {} 
	sets.ja['Sublimation'] = {
	waist="Embla Sash",
	}
	sets.ja['Benediction'] = {
	waist="Piety Bliaut +3",
	}	
	sets.idle = {} 
	
	sets.precast = {} 
	sets.precast.fastcast = {
	ammo="Homiliary",
    head="Bunzi's Hat",
    body="Inyanga Jubbah +2",
    hands={ name="Gende. Gages +1", augments={'Phys. dmg. taken -3%','Song spellcasting time -5%',}},
    legs="Aya. Cosciales +2",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    neck="Voltsurge Torque",
    waist="Witful Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Rahab Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.precast['Dispelga'] = set_combine(sets.precast.fastcast,{ main = "Daybreak" })
	
    sets.midcast = {}               -- leave this empty  
	sets.midcast.DT = {	
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Bunzi's Pants",
    legs="Ebers Pant. +2",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Kishar Ring",
    back="Null Shawl",
	}
	sets.midcast.enfeebling = {
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Ebers Pant. +2",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Kishar Ring",
    back="Null Shawl",
	}
	sets.midcast.MACC = {
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Ebers Pant. +2",
    feet="Nyame Sollerets",
    neck="Null Loop",
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Kishar Ring",
    back="Null Shawl",
	}
	
	sets.midcast.Drain = {	
    ammo="Ghastly Tathlum +1",
    head="Arbatel Bonnet +2",
    body="Arbatel Gown +2",
    hands="Arbatel Bracers +2",
    legs="Ebers Pantaloons +2",
    feet="Agwu's Pigaches",
    neck="Erra Pendant",
    waist="Orpheus's Sash",
    left_ear="Malignance Earring",
    right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Enmity-3',}},
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	
	
	sets.midcast.enhancingduration = {
    ammo="Homiliary",
    head="Null Masque",
    body="Eber's Bliaut +1",
    hands="Inyan. Dastanas +2",
    legs={ name="piety pantaloons +1", augments={'Enhances "Afflatus Misery" effect',}},
    feet="Theo. Duckbills +1",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.enhancingskill = {
    ammo="Homiliary",
    head="Bunzi's Hat",
    body="Eber's Bliaut +1",
    hands="Inyan. Dastanas +2",
    legs={ name="piety pantaloons +1", augments={'Enhances "Afflatus Misery" effect',}},
    feet="Theo. Duckbills +1",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}	
 	sets.midcast.regen = {
	ammo="Homiliary",
    head="Inyanga Tiara +2",
    body={ name="Piety Bliaut +3", augments={'Enhances "Benediction" effect',}},
    hands="Ebers Mitts +1",
    legs="Theo. Pants +1",
    feet="Theo. Duckbills +1",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Witful Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Defending Ring",
    right_ring="Kishar Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}	
	
	sets.midcast.refresh = {
	ammo="Homiliary",
	head="Amalric Coif +1",
    body={ name="Telchine Chas.", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +10',}},
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +9',}},
     legs={ name="Telchine Braconi", augments={'"Cure" potency +8%','Enh. Mag. eff. dur. +10',}},
    feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Gishdubar Sash",
    left_ear="Magnetic Earring",
    right_ear="Halasz Earring",
    left_ring="Defending Ring",
    right_ring={ name="Mephitas's Ring +1", augments={'Path: A',}},
    back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10','Phys. dmg. taken-10%',}},
	}
	sets.midcast.Aquaveil = {
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Inyan. Dastanas +2",
    legs="Shedir Seraweels",
    feet="Theo. Duckbills +1",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Siegel Sash",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}	
	sets.midcast.Erase = {
    ammo="Homiliary",
    head="Null Masque",
    body="Adamantite Armor",
    hands="Nyame Gauntlets",
    legs="Bunzi's Pants",
    feet="Theo. Duckbills +1",
    neck="Clr. Torque +1",
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}
	sets.midcast.cure = {
    ammo="Homiliary",
    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    body="Ebers Bliaut +1",
    hands={ name="Telchine Gloves", augments={'"Cure" potency +7%','Enh. Mag. eff. dur. +7',}},
    legs="Ebers Pant. +2",
    feet={ name="Kaykaus Boots", augments={'Mag. Acc.+15','"Cure" potency +5%','"Fast Cast"+3',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Null Belt",
    left_ear="Magnetic Earring",
    right_ear="Nourish. Earring",
    left_ring="Defending Ring",
    right_ring="Ayanmo Ring",
    back={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','Mag. Evasion+10','"Fast Cast"+10','Spell interruption rate down-10%',}},
	}

	
    sets.aftercast = {}             -- leave this empty
	
	ElementalGear = {}
	ElementalGear.Obi = "Hachirin-no-Obi"
	ElementalGear.Cape = "Twilight Cape"
	sets.midcast.CureWithLightWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi}
	sets.midcast.NukeWithMatchingWeather = {back=ElementalGear.Cape,waist=ElementalGear.Obi,feet=ElementalGear.Feet}
	
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring +1",
    right_ring="Purity Ring",
	}
	sets.buff.CursnaOthers = {
    neck="Malison Medallion",
    feet="Gendewitha Galoshes +1",
    left_ring="Haoma's Ring",
    right_ring="Menelaus's Ring",
	}
	sets.buff.CursnaSelf = {
    neck="Nicander's Necklace",
    waist="Gishdubar Sash",
    feet="Gendewitha Galoshes +1",
    left_ring="Haoma's Ring",
    right_ring="Menelaus's Ring",
	}

end

function precast(spell)
    if  spell.action_type == 'Magic' then
        equip(sets.precast.fastcast)
	end
    if sets.ja[spell.name] then
        equip(sets.ja[spell.name])
	end
    if sets.ws[spell.name] then
        equip(sets.ws[spell.name])        
    end         
end

function midcast(spell)
    if  spell.action_type == 'Magic' then
		equip(sets.midcast.DT)
	end
	if spell.name:match('Regen') then
		equip(sets.midcast.regen) else	
			if T{"Aquaveil","Refresh","Stoneskin"}:contains(spell.name) then
				equip(sets.midcast.Aquaveil) else
					if T{"Erase"}:contains(spell.name) then
						equip(sets.midcast.Erase) else						
							if  T{"Phalanx","Bar"}:contains(spell.name) then
								equip(sets.midcast.enhancingskill) else
							if spell.skill == 'Enhancing Magic'  then
								equip(sets.midcast.enhancingduration)
						end
					end
				end
			end
		end
	if spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.enfeebling) else
	if T{"Sleep","Sleep II","Sleepga","Sleepga II","Break","Bind","Blind","Frazzle","Dispel","Silence"}:contains(spell.name) then
		equip (sets.midcast.MACC)
	end
end
	if spell.skill == 'Healing Magic' then
		equip(sets.midcast.cure)
			if buffactive == "Rapture" then
				equip(sets.ja['Rapture'])
		    if world.weather_element == spell.element or world.day_element == spell.element then
				equip(sets.midcast.NukeWithMatchingWeather)
		end
	end
end
	if spell.name:match('Cursna') and spell.target.type == 'SELF' then
		equip(sets.buff.CursnaSelf)	else
	if spell.name:match('Cursna') and spell.target.type == 'PLAYER' then
		equip(sets.buff.CursnaOthers)
	end
end
end

		

function aftercast(spell)
	idle()
	equip(sets.Main[Main_Set_Names[Main_Index]])
end
 
function buff_change(buff,gain)

end
 
function status_change(new,old)
	idle()
end


function idle()
    if player.status=='Engaged' then
        equip(sets.melee[Melee_Set_Names[Melee_Index]]) 
	end
	if player.status=='Engaged' and player.sub_job =='NIN' or player.sub_job == 'DNC' then 
        equip(sets.melee.DW)
	end
	if player.status =='Idle' then
		equip(sets.Run[Run_Set_Names[Run_Index]])
	end
end

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
    if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('Armor is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement mode is now: '..Run_Set_Names[Run_Index])
		equip(sets.Run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle Main set' then
        Main_Index = Main_Index +1
    if Main_Index > #Main_Set_Names then Main_Index = 1 end
        windower.add_to_chat('Main Weapon is now: '..Main_Set_Names[Main_Index])
        equip(sets.Main[Main_Set_Names[Main_Index]])
    end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH4 equipped')
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
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
end

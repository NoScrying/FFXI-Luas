function get_sets()
	send_command('bind f9 gs c toggle melee set') -- F9 = Cycle through
	send_command('bind !f9 gs c toggle Defensive set') -- F9 = Cycle through
	send_command('bind f10 gs c toggle run set') -- F10 = Cycle through
	send_command('bind f12 gs c toggle TH set') -- F10 = Cycle through
	send_command('bind f7 gs c toggle Weapons set') -- F10 = Cycle through
	send_command('bind !f7 gs c toggle Sub_Weapons set') -- F10 = Cycle through
	send_command('bind numpad1 gs c toggle Buff set') -- F12 = Cycle through
	
	Buff_Index = 1	
	Melee_Index = 1
	Defensive_Index = 1
	Run_Index = 1
	TH_Index = 1
	Weapons_Index = 1
	Sub_Weapons_Index = 1
	
	Weapons_Set_Names = {'Masamune','Shining_One'}
	sets.weapons = {}
	sets.weapons.Masamune = {
    main="Masamune",
	sub="Utu Grip",
	}
	sets.weapons.Shining_One = {
    main="Shining One",
	sub="Utu Grip",
	}

	Sub_Weapons_Set_Names = {'Norifusa','Soboro'}--'Kaja_Greatsword','Lycurgos',
	sets.sub_weapons = {}
	sets.sub_weapons.Norifusa = {
    main="Norifusa",
	sub="Utu Grip",
	}
	sets.sub_weapons.Soboro = {
    main="Soboro Sukehiro",
	sub="Utu Grip",
	}
	
	Melee_Set_Names = {'normal', 'Hybrid'}--'Subtle_Blow',
	sets.melee = {} 					-- Leave this empty.
	sets.melee.normal = {
    ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body="Kasuga Domaru +2",
    hands={ name="Tatena. Gote +1", augments={'Path: A',}},
    --hands={ name="Valorous Mitts", augments={'"Store TP"+7','Accuracy+14',}},
    legs="Kasuga Haidate +2",
    feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','DEX+12','Accuracy+20',}},
    --neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
	neck="Moonbeam Nodowa",
    --waist="Ioskeha Belt +1",  
	waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    --right_ear="Crepuscular Earring",
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    --left_ring="Ilabrat Ring",
	left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Hybrid = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Kasuga Domaru +2",
    hands="Kendatsuba Tekko +1",
    legs="Kasuga Haidate +2",
    feet="Kendatsuba Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Cessance Earring",
    right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},
	}
	sets.melee.Subtle_Blow = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Ken. Samue +1",
    hands="Ken. Tekko +1",
    legs="Ken. Hakama +1",
    feet="Ken. Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}

	Defensive_Set_Names = {'Subtle_Blow','Counter'}
	sets.Defensive = {} 					-- Leave this empty.
	sets.Defensive.Subtle_Blow = {
    ammo="Aurgelmir Orb",
    head="Flam. Zucchetto +2",
    body="Ken. Samue +1",
    hands="Ken. Tekko +1",
    legs="Ken. Hakama +1",
    feet="Ken. Sune-Ate +1",
    neck="Moonbeam Nodowa",
    waist="Ioskeha Belt +1",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Chirich Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','Phys. dmg. taken-10%',}},	
	}
	sets.Defensive.Counter = {
    ammo="Aurgelmir Orb",
    head="Kasuga Kabuto +2",
    body="Sacro Breastplate",
    hands="Hizamaru Kote +2",
    legs="Kasuga Haidate +2",
    feet={ name="Ryuo Sune-Ate +1", augments={'STR+12','DEX+12','Accuracy+20',}},
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Cornelia's Belt",
    left_ear="Cessance Earring",
    right_ear="Crep. Earring",
    left_ring="Hizamaru Ring",
    right_ring="Chirich Ring +1",
    back={ name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10','System: 1 ID: 640 Val: 2',}},
	}
	
	Run_Set_Names = {'DT'}
	sets.run = {}
	sets.run.DT =  {
    ammo="Aurgelmir Orb",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Sacro Breastplate",
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    legs="Kasuga Haidate +2",
    feet="Danzo Sune-Ate",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	
	TH_Set_Names = {'TH'}
	sets.TH = {}
	sets.TH.TH = {
    head="White Rarab Cap +1",
	hands={ name="Valorous Mitts", augments={'"Mag.Atk.Bns."+1','Attack+11','"Treasure Hunter"+1','Accuracy+8 Attack+8','Mag. Acc.+3 "Mag.Atk.Bns."+3',}},
	ammo="Perfect Lucky Egg",
    waist="Chaac Belt",
	}
	
	sets.ws = {} 					-- Leave this empty.
	sets.ws.lugra = {
	right_ear={ name="Lugra Earring +1", augments={'Path: A',}},
	}
	
	sets.ws['Impulse Drive']	= {
	ammo="Knobkierrie",
    head={ name="Blistering Sallet +1", augments={'Path: A',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Gekko']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Rana']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Fudo']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Kasha']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Jinpu']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sacro Breastplate",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Hecate's Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Koki']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sacro Breastplate",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Hecate's Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Weatherspoon Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Kagero']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sacro Breastplate",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Hecate's Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Yukikaze']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist="Orpheus's Sash",
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Goten']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    body="Sacro Breastplate",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck="Fotia Gorget",
    waist="Orpheus's Sash",
    left_ear="Hecate's Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Ageha']	= {
    ammo="Knobkierrie",
    head="Flam. Zucchetto +2",
    body="Flamma Korazin +2",
    hands="Flam. Manopolas +2",
    legs="Flamma Dirs +2",
    feet="Flam. Gambieras +2",
    neck="Voltsurge Torque",
    waist="Eschan Stone",
    left_ear="Crep. Earring",
    right_ear={ name="Kasuga Earring", augments={'System: 1 ID: 1676 Val: 0','Accuracy+6','Mag. Acc.+6',}},
    left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    right_ring="Crepuscular Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}
	sets.ws['Tachi: Shoha']	= {
	ammo="Knobkierrie",
    head={ name="Valorous Mask", augments={'AGI+14','Weapon skill damage +5%','Quadruple Attack +1','Mag. Acc.+20 "Mag.Atk.Bns."+20',}},
    --body={ name="Valorous Mail", augments={'Weapon skill damage +4%','STR+13','Attack+5',}},
    body="Kasuga Domaru +2",
    hands="Kasuga Kote +2",
    legs="Hizamaru Hizayoroi +2",
    feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
    neck={ name="Sam. Nodowa +1", augments={'Path: A',}},
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Thrud Earring",
    right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    left_ring="Sroda Ring",
    right_ring="Epaminondas's Ring",
    back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%','Phys. dmg. taken-10%',}},
	}


	sets.ja = {} 					-- Leave this empty
	sets.ja['Meditate'] = {
	back={ name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','"Dbl.Atk."+10',}},
    hands={ name="Sakonji Kote", augments={'Enhances "Blade Bash" effect',}},
	} 		
	sets.ja['Provoke'] = {
    body="Emet Harness",
    feet="Hermes' Sandals",
    neck="Warder's Charm",
    waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    left_ear="Hecate's Earring",
    right_ear="Eris' Earring",
    left_ring="Supershear Ring",
    right_ring="Provocare Ring",
	}	
	
	sets.idle = {} 					-- Leave this empty
	sets.idle.regen = {
    ammo="Aurgelmir Orb",
    head={ name="Rao Kabuto", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    body="Sacro Breastplate",
    hands={ name="Rao Kote", augments={'Pet: HP+100','Pet: Accuracy+15','Pet: Damage taken -3%',}},
    legs="Kasuga Haidate +2",
    feet="Danzo Sune-Ate",
    neck={ name="Bathy Choker +1", augments={'Path: A',}},
    waist="Platinum Moogle Belt",
    left_ear="Odnowa Earring +1",
    right_ear="Infused Earring",
    left_ring="Defending Ring",
    right_ring="Chirich Ring +1",
    back="Moonbeam Cape",
	}
	sets.precast = {}               -- leave this empty
	sets.precast.fastcast = {
	ammo="Impatiens",
    head={ name="Carmine Mask", augments={'Accuracy+15','Mag. Acc.+10','"Fast Cast"+3',}},
    hands={ name="Leyline Gloves", augments={'Accuracy+15','Mag. Acc.+15','"Mag.Atk.Bns."+15','"Fast Cast"+3',}},
    neck="Voltsurge Torque",
    body="Sacro Breastplate",
	legs="Carmine Cuisses +1",
	feet={ name="Carmine Greaves", augments={'Accuracy+10','DEX+10','MND+15',}},
	left_ring="Lebeche Ring",
	right_ring="Weatherspoon Ring",
    left_ear="Malignance Earring",	
    right_ear="Loquacious Earring",
	} 		
    sets.midcast = {}               -- leave this empty  
	
	Buff_Set_Names = {'Holywater'}
	sets.buff = {} 					-- Leave this empty.
	sets.buff.reive = {
	neck="Ygnas\'s Resolve +1",
	}
	sets.buff.Holywater = {
    neck="Nicander's Necklace",
    left_ring="Blenmot's Ring",
    right_ring="Purity Ring",
	}
	sets.buff.adoulin = {
	body="Councilor\'s Garb"
	}

	sets.adoulin = {}
	sets.adoulin.movement = {body="Councilor's Garb",}   --auto swaps when in adoulin 
 

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
			if player.tp >= 2500 then
				equip (sets.ws.lugra)
			end	
		end
    end

function midcast(spell)

end

function aftercast(spell)
	idle()
end

function buff_change(buff,gain)
    if buff == 'Reive Mark' then
        if gain then
            equip(sets.buff.reive)
            disable("neck")
        else
            enable("neck")
            equip(sets.Idle)
        end
	end
end


function idle()
	if player.status =='Engaged' then
		equip(sets.melee[Melee_Set_Names[Melee_Index]])
	end
	if player.status =='Engaged' and buffactive['Seigan'] then
		equip(sets.Defensive[Defensive_Set_Names[Defensive_Index]])
	end
	if player.status =='Idle' then
        equip(sets.idle.regen) 
    end
end

 function status_change(new,old)
	idle()
end 

function self_command(command)
	if command == 'toggle melee set' then
        Melee_Index = Melee_Index +1
        if Melee_Index > #Melee_Set_Names then Melee_Index = 1 end
        windower.add_to_chat('TP mode is now: '..Melee_Set_Names[Melee_Index])
        equip(sets.melee[Melee_Set_Names[Melee_Index]])
    end
	if command == 'toggle Defensive set' then
        Defensive_Index = Defensive_Index +1
        if Defensive_Index > #Defensive_Set_Names then Defensive_Index = 1 end
                windower.add_to_chat('Defensive mode is now: '..Defensive_Set_Names[Defensive_Index])
        equip(sets.Defensive[Defensive_Set_Names[Defensive_Index]])
    end
	if command == 'toggle run set' then
        Run_Index = Run_Index +1
        if Run_Index > #Run_Set_Names then Run_Index = 1 end
        windower.add_to_chat('Movement is now: '..Run_Set_Names[Run_Index])
		equip(sets.run[Run_Set_Names[Run_Index]])
	end
	if command == 'toggle TH set' then
        TH_Index = TH_Index +1
    if TH_Index > #TH_Set_Names then TH_Index = 1 end
        windower.add_to_chat('TH mode is now: '..TH_Set_Names[TH_Index])
        equip(sets.TH[TH_Set_Names[TH_Index]])
    end
	if command == 'toggle Weapons set' then
        Weapons_Index = Weapons_Index +1
        if Weapons_Index > #Weapons_Set_Names then Weapons_Index = 1 end
        windower.add_to_chat('Weapon is now: '..Weapons_Set_Names[Weapons_Index])
		equip(sets.weapons[Weapons_Set_Names[Weapons_Index]])
	end
	if command == 'toggle Sub_Weapons set' then
        Sub_Weapons_Index = Sub_Weapons_Index +1
        if Sub_Weapons_Index > #Sub_Weapons_Set_Names then Sub_Weapons_Index = 1 end
        windower.add_to_chat('Sub Weapon is now: '..Sub_Weapons_Set_Names[Sub_Weapons_Index])
		equip(sets.sub_weapons[Sub_Weapons_Set_Names[Sub_Weapons_Index]])
	end
	if command == 'toggle Buff set' then
        Buff_Index = Buff_Index +1
    if Buff_Index > #Buff_Set_Names then Buff_Index = 1 end
        windower.add_to_chat('Buff mode is now: '..Buff_Set_Names[Buff_Index])
        equip(sets.buff[Buff_Set_Names[Buff_Index]])
    end
end

function file_unload()
send_command('unbind f9')
send_command('unbind !f9')
send_command('unbind f10')
send_command('unbind !f10')
send_command('unbind f12')
send_command('unbind !f12')
send_command('unbind f7')
send_command('unbind !f7')
send_command('unbind numpad1')
end

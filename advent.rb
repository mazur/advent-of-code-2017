def test(test_method, str, expected)
  return send(test_method, str) == expected
end

def one_one(str)
  res = 0;
  numbers = str.chars.map(&:to_i)

  for i in 0..numbers.length-1
    res += numbers[i] if numbers[i] === numbers[(i+1)%numbers.length]
  end

  return res
end


puts "First (1/2)"
puts "---"
puts test(:one_one, '1122', 3)
puts test(:one_one, '1111', 4)
puts test(:one_one, '1234', 0)
puts test(:one_one, '91212129', 9)
puts one_one '823936645345581272695677318513459491834641129844393742672553544439126314399846773234845535593355348931499496184839582118817689171948635864427852215325421433717458975771369522138766248225963242168658975326354785415252974294317138511141826226866364555761117178764543435899886711426319675443679829181257496966219435831621565519667989898725836639626681645821714861443141893427672384716732765884844772433374798185955741311116365899659833634237938878181367317218635539667357364295754744829595842962773524584225427969467467611641591834876769829719248136613147351298534885563144114336211961674392912181735773851634298227454157885241769156811787611897349965331474217223461176896643242975397227859696554492996937235423272549348349528559432214521551656971136859972232854126262349381254424597348874447736545722261957871275935756764184378994167427983811716675476257858556464755677478725146588747147857375293675711575747132471727933773512571368467386151966568598964631331428869762151853634362356935751298121849281442128796517663482391226174256395515166361514442624944181255952124524815268864131969151433888721213595267927325759562132732586252438456569556992685896517565257787464673718221817783929691626876446423134331749327322367571432532857235214364221471769481667118117729326429556357572421333798517168997863151927281418238491791975399357393494751913155219862399959646993428921878798119215675548847845477994836744929918954159722827194721564121532315459611433157384994543332773796862165243183378464731546787498174844781781139571984272235872866886275879944921329959736315296733981313643956576956851762149275521949177991988236529475373595217665112434727744235789852852765675189342753695377219374791548554786671473733124951946779531847479755363363288448281622183736545494372344785112312749694167483996738384351293899149136857728545977442763489799693492319549773328626918874718387697878235744154491677922317518952687439655962477734559232755624943644966227973617788182213621899579391324399386146423427262874437992579573858589183571854577861459758534348533553925167947139351819511798829977371215856637215221838924612644785498936263849489519896548811254628976642391428413984281758771868781714266261781359762798'
puts "---"

def one_two(str)
  res = 0;
  numbers = str.chars.map(&:to_i)

  for i in 0..numbers.length-1
    res += numbers[i] if numbers[i] === numbers[(i + (numbers.length/2))%numbers.length]
  end

  return res
end

puts "First (2/2)"
puts "---"
puts test(:one_two, '1212', 6)
puts test(:one_two, '1221', 0)
puts test(:one_two, '123425', 4)
puts test(:one_two, '123123', 12)
puts test(:one_two, '12131415', 4)
puts one_two '823936645345581272695677318513459491834641129844393742672553544439126314399846773234845535593355348931499496184839582118817689171948635864427852215325421433717458975771369522138766248225963242168658975326354785415252974294317138511141826226866364555761117178764543435899886711426319675443679829181257496966219435831621565519667989898725836639626681645821714861443141893427672384716732765884844772433374798185955741311116365899659833634237938878181367317218635539667357364295754744829595842962773524584225427969467467611641591834876769829719248136613147351298534885563144114336211961674392912181735773851634298227454157885241769156811787611897349965331474217223461176896643242975397227859696554492996937235423272549348349528559432214521551656971136859972232854126262349381254424597348874447736545722261957871275935756764184378994167427983811716675476257858556464755677478725146588747147857375293675711575747132471727933773512571368467386151966568598964631331428869762151853634362356935751298121849281442128796517663482391226174256395515166361514442624944181255952124524815268864131969151433888721213595267927325759562132732586252438456569556992685896517565257787464673718221817783929691626876446423134331749327322367571432532857235214364221471769481667118117729326429556357572421333798517168997863151927281418238491791975399357393494751913155219862399959646993428921878798119215675548847845477994836744929918954159722827194721564121532315459611433157384994543332773796862165243183378464731546787498174844781781139571984272235872866886275879944921329959736315296733981313643956576956851762149275521949177991988236529475373595217665112434727744235789852852765675189342753695377219374791548554786671473733124951946779531847479755363363288448281622183736545494372344785112312749694167483996738384351293899149136857728545977442763489799693492319549773328626918874718387697878235744154491677922317518952687439655962477734559232755624943644966227973617788182213621899579391324399386146423427262874437992579573858589183571854577861459758534348533553925167947139351819511798829977371215856637215221838924612644785498936263849489519896548811254628976642391428413984281758771868781714266261781359762798'
puts "---"

def two_one(str)
  res = 0;
  matrix = str.split("\n").map { |s| s.split(' ').map(&:to_i) }

  matrix.each { |row| res += row.max - row.min }

  return res
end

puts "Second (1/2)"
puts "---"
puts test(:two_one, '5 1 9 5
7 5 3
2 4 6 8', 18)

puts two_one '104	240	147	246	123	175	372	71	116	230	260	118	202	270	277	292
740	755	135	205	429	822	844	90	828	115	440	805	526	91	519	373
1630	991	1471	1294	52	1566	50	1508	1367	1489	55	547	342	512	323	51
1356	178	1705	119	1609	1409	245	292	1434	694	405	1692	247	193	1482	1407
2235	3321	3647	212	1402	3711	3641	1287	2725	692	1235	3100	123	144	104	101
1306	1224	1238	186	751	734	1204	1275	366	149	1114	166	1118	239	153	943
132	1547	1564	512	2643	2376	2324	2159	1658	107	1604	145	2407	131	2073	1878
1845	91	1662	108	92	1706	1815	1797	1728	1150	1576	83	97	547	1267	261
78	558	419	435	565	107	638	173	93	580	338	52	633	256	377	73
1143	3516	4205	3523	148	401	3996	3588	300	1117	2915	1649	135	134	182	267
156	2760	1816	2442	2985	990	2598	1273	167	821	138	141	2761	2399	1330	1276
3746	3979	2989	161	4554	156	3359	173	3319	192	3707	264	762	2672	4423	2924
3098	4309	4971	5439	131	171	5544	595	154	571	4399	4294	160	6201	4329	5244
728	249	1728	305	2407	239	691	2241	2545	1543	55	2303	1020	753	193	1638
260	352	190	877	118	77	1065	1105	1085	1032	71	87	851	56	1161	667
1763	464	182	1932	1209	640	545	931	1979	197	1774	174	2074	1800	939	161'

puts "---"

def get_evenly_divisible_in(row)
  for i in 0..row.length-1
    for j in 1..row.length-1
      next if row[i] == row[j]
      return row[i]/row[j] if row[i] % row[j] === 0
      return row[j]/row[i] if row[j] % row[i] === 0
    end
  end
end

def two_two(str)
  res = 0;
  matrix = str.split("\n").map { |s| s.split(' ').map(&:to_i) }

  matrix.each { | row | res += get_evenly_divisible_in(row) }

  return res
end

puts "Second (2/2)"
puts "---"
puts test(:two_two, '5 9 2 8
9 4 7 3
3 8 6 5', 9)

puts two_two '104	240	147	246	123	175	372	71	116	230	260	118	202	270	277	292
740	755	135	205	429	822	844	90	828	115	440	805	526	91	519	373
1630	991	1471	1294	52	1566	50	1508	1367	1489	55	547	342	512	323	51
1356	178	1705	119	1609	1409	245	292	1434	694	405	1692	247	193	1482	1407
2235	3321	3647	212	1402	3711	3641	1287	2725	692	1235	3100	123	144	104	101
1306	1224	1238	186	751	734	1204	1275	366	149	1114	166	1118	239	153	943
132	1547	1564	512	2643	2376	2324	2159	1658	107	1604	145	2407	131	2073	1878
1845	91	1662	108	92	1706	1815	1797	1728	1150	1576	83	97	547	1267	261
78	558	419	435	565	107	638	173	93	580	338	52	633	256	377	73
1143	3516	4205	3523	148	401	3996	3588	300	1117	2915	1649	135	134	182	267
156	2760	1816	2442	2985	990	2598	1273	167	821	138	141	2761	2399	1330	1276
3746	3979	2989	161	4554	156	3359	173	3319	192	3707	264	762	2672	4423	2924
3098	4309	4971	5439	131	171	5544	595	154	571	4399	4294	160	6201	4329	5244
728	249	1728	305	2407	239	691	2241	2545	1543	55	2303	1020	753	193	1638
260	352	190	877	118	77	1065	1105	1085	1032	71	87	851	56	1161	667
1763	464	182	1932	1209	640	545	931	1979	197	1774	174	2074	1800	939	161'

puts "---"

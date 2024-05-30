cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  anxiety--phenotype-specified---primary:
    run: anxiety--phenotype-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  anxiety--phenotype-tranxene---primary:
    run: anxiety--phenotype-tranxene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-specified---primary/output
  anxiety--phenotype-attack---primary:
    run: anxiety--phenotype-attack---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tranxene---primary/output
  anxiety--phenotype-adolescence---primary:
    run: anxiety--phenotype-adolescence---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-attack---primary/output
  anxiety--phenotype-fearfulness---primary:
    run: anxiety--phenotype-fearfulness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-adolescence---primary/output
  anxiety--phenotype-xanxiety---primary:
    run: anxiety--phenotype-xanxiety---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-fearfulness---primary/output
  xpanic-anxiety--phenotype---primary:
    run: xpanic-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-xanxiety---primary/output
  anxiety--phenotype-xmixed---primary:
    run: anxiety--phenotype-xmixed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: xpanic-anxiety--phenotype---primary/output
  xphobic-anxiety--phenotype---primary:
    run: xphobic-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-xmixed---primary/output
  phenotype-anxiety---primary:
    run: phenotype-anxiety---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: xphobic-anxiety--phenotype---primary/output
  anxiety--phenotype-xpredom---primary:
    run: anxiety--phenotype-xpredom---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: phenotype-anxiety---primary/output
  phobiapublic-anxiety--phenotype---primary:
    run: phobiapublic-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-xpredom---primary/output
  anxiety--phenotype-edisylate---primary:
    run: anxiety--phenotype-edisylate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: phobiapublic-anxiety--phenotype---primary/output
  xobsessive-anxiety--phenotype---primary:
    run: xobsessive-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-edisylate---primary/output
  anxiety--phenotype-neurosis---primary:
    run: anxiety--phenotype-neurosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: xobsessive-anxiety--phenotype---primary/output
  anxiety--phenotype-phobia---primary:
    run: anxiety--phenotype-phobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-neurosis---primary/output
  compulsive-anxiety--phenotype---primary:
    run: compulsive-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-phobia---primary/output
  anxiety--phenotype-washing---primary:
    run: anxiety--phenotype-washing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: compulsive-anxiety--phenotype---primary/output
  anxiety--phenotype-agoraphobia---primary:
    run: anxiety--phenotype-agoraphobia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-washing---primary/output
  anxiety--phenotype-speaking---primary:
    run: anxiety--phenotype-speaking---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-agoraphobia---primary/output
  anxiety--phenotype-rumination---primary:
    run: anxiety--phenotype-rumination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-speaking---primary/output
  anxiety--phenotype-xgeneralized---primary:
    run: anxiety--phenotype-xgeneralized---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-rumination---primary/output
  anxiety--phenotype-separation---primary:
    run: anxiety--phenotype-separation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-xgeneralized---primary/output
  ritual-anxiety--phenotype---primary:
    run: ritual-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-separation---primary/output
  paroxysmal-anxiety--phenotype---primary:
    run: paroxysmal-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ritual-anxiety--phenotype---primary/output
  other-anxiety--phenotype---primary:
    run: other-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: paroxysmal-anxiety--phenotype---primary/output
  depressive-anxiety--phenotype---primary:
    run: depressive-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: other-anxiety--phenotype---primary/output
  anxiety--phenotype-anxiousness---primary:
    run: anxiety--phenotype-anxiousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: depressive-anxiety--phenotype---primary/output
  nervous-anxiety--phenotype---primary:
    run: nervous-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-anxiousness---primary/output
  anxious-anxiety--phenotype---primary:
    run: anxious-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: nervous-anxiety--phenotype---primary/output
  anxiety--phenotype-[d]nervousness---primary:
    run: anxiety--phenotype-[d]nervousness---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: anxious-anxiety--phenotype---primary/output
  anxiety--phenotype-selfhelp---primary:
    run: anxiety--phenotype-selfhelp---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-[d]nervousness---primary/output
  phobic-anxiety--phenotype---primary:
    run: phobic-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-selfhelp---primary/output
  anxiety--phenotype-hydroxyzine---primary:
    run: anxiety--phenotype-hydroxyzine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: phobic-anxiety--phenotype---primary/output
  anxiety--phenotype-ucerax---primary:
    run: anxiety--phenotype-ucerax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-hydroxyzine---primary/output
  anxiety--phenotype-alupram---primary:
    run: anxiety--phenotype-alupram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-ucerax---primary/output
  anxiety--phenotype-dichloralphenazone---primary:
    run: anxiety--phenotype-dichloralphenazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-alupram---primary/output
  anxiety--phenotype-225mg---primary:
    run: anxiety--phenotype-225mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-dichloralphenazone---primary/output
  anxiety--phenotype-loprazolam---primary:
    run: anxiety--phenotype-loprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-225mg---primary/output
  anxiety--phenotype-375mg---primary:
    run: anxiety--phenotype-375mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-loprazolam---primary/output
  anxiety--phenotype-almazine---primary:
    run: anxiety--phenotype-almazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-375mg---primary/output
  anxiety--phenotype-192mg---primary:
    run: anxiety--phenotype-192mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-almazine---primary/output
  anxiety--phenotype-paxane---primary:
    run: anxiety--phenotype-paxane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-192mg---primary/output
  anxiety--phenotype-anxon---primary:
    run: anxiety--phenotype-anxon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-paxane---primary/output
  anxiety--phenotype-gelthix---primary:
    run: anxiety--phenotype-gelthix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-anxon---primary/output
  anxiety--phenotype-chlormezanone---primary:
    run: anxiety--phenotype-chlormezanone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-gelthix---primary/output
  anxiety--phenotype-medazepam---primary:
    run: anxiety--phenotype-medazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-chlormezanone---primary/output
  anxiety--phenotype-atarax---primary:
    run: anxiety--phenotype-atarax---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-medazepam---primary/output
  stesolid-anxiety--phenotype---primary:
    run: stesolid-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-atarax---primary/output
  anxiety--phenotype-chlordiazepoxide---primary:
    run: anxiety--phenotype-chlordiazepoxide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: stesolid-anxiety--phenotype---primary/output
  anxiety--phenotype-melatonin---primary:
    run: anxiety--phenotype-melatonin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-chlordiazepoxide---primary/output
  anxiety--phenotype-dipotassium---primary:
    run: anxiety--phenotype-dipotassium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-melatonin---primary/output
  anxiety--phenotype-elixir---primary:
    run: anxiety--phenotype-elixir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-dipotassium---primary/output
  anxiety--phenotype-zolpidem---primary:
    run: anxiety--phenotype-zolpidem---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-elixir---primary/output
  anxiety--phenotype-143mg---primary:
    run: anxiety--phenotype-143mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-zolpidem---primary/output
  anxiety--phenotype-tapclob---primary:
    run: anxiety--phenotype-tapclob---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-143mg---primary/output
  anxiety--phenotype-prazepam---primary:
    run: anxiety--phenotype-prazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tapclob---primary/output
  anxiety--phenotype-650mg---primary:
    run: anxiety--phenotype-650mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-prazepam---primary/output
  anxiety--phenotype-buspirone---primary:
    run: anxiety--phenotype-buspirone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-650mg---primary/output
  anxiety--phenotype-ativan---primary:
    run: anxiety--phenotype-ativan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-buspirone---primary/output
  anxiety--phenotype-ketazolam---primary:
    run: anxiety--phenotype-ketazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-ativan---primary/output
  anxiety--phenotype-400microgram---primary:
    run: anxiety--phenotype-400microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-ketazolam---primary/output
  anxiety--phenotype-flunitrazepam---primary:
    run: anxiety--phenotype-flunitrazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-400microgram---primary/output
  anxiety--phenotype-frisium---primary:
    run: anxiety--phenotype-frisium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-flunitrazepam---primary/output
  anxiety--phenotype-atensine---primary:
    run: anxiety--phenotype-atensine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-frisium---primary/output
  anxiety--phenotype-250mg---primary:
    run: anxiety--phenotype-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-atensine---primary/output
  anxiety--phenotype-concentrate---primary:
    run: anxiety--phenotype-concentrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-250mg---primary/output
  anxiety--phenotype-alprazolam---primary:
    run: anxiety--phenotype-alprazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-concentrate---primary/output
  anxiety--phenotype-anxiol---primary:
    run: anxiety--phenotype-anxiol---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-alprazolam---primary/output
  anxiety--phenotype-dalmane---primary:
    run: anxiety--phenotype-dalmane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-anxiol---primary/output
  anxiety--phenotype-clobazam---primary:
    run: anxiety--phenotype-clobazam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-dalmane---primary/output
  anxiety--phenotype-suppository---primary:
    run: anxiety--phenotype-suppository---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-clobazam---primary/output
  anxiety--phenotype-somnite---primary:
    run: anxiety--phenotype-somnite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-suppository---primary/output
  anxiety--phenotype-zaleplon---primary:
    run: anxiety--phenotype-zaleplon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-somnite---primary/output
  anxiety--phenotype-normison---primary:
    run: anxiety--phenotype-normison---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-zaleplon---primary/output
  anxiety--phenotype-bromazepam---primary:
    run: anxiety--phenotype-bromazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-normison---primary/output
  anxiety--phenotype-solis---primary:
    run: anxiety--phenotype-solis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-bromazepam---primary/output
  anxiety--phenotype-400mg---primary:
    run: anxiety--phenotype-400mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-solis---primary/output
  anxiety--phenotype-tablet---primary:
    run: anxiety--phenotype-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-400mg---primary/output
  anxiety--phenotype-temazepam---primary:
    run: anxiety--phenotype-temazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tablet---primary/output
  anxiety--phenotype-200mg---primary:
    run: anxiety--phenotype-200mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-temazepam---primary/output
  anxiety--phenotype-oxazepam---primary:
    run: anxiety--phenotype-oxazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-200mg---primary/output
  anxiety--phenotype-hydrochloride---primary:
    run: anxiety--phenotype-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-oxazepam---primary/output
  anxiety--phenotype-rimapam---primary:
    run: anxiety--phenotype-rimapam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-hydrochloride---primary/output
  anxiety--phenotype-heminevrin---primary:
    run: anxiety--phenotype-heminevrin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-rimapam---primary/output
  anxiety--phenotype-meprobamate---primary:
    run: anxiety--phenotype-meprobamate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-heminevrin---primary/output
  anxiety--phenotype-lexotan---primary:
    run: anxiety--phenotype-lexotan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-meprobamate---primary/output
  oxanid-anxiety--phenotype---primary:
    run: oxanid-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-lexotan---primary/output
  anxiety--phenotype-triclofo---primary:
    run: anxiety--phenotype-triclofo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: oxanid-anxiety--phenotype---primary/output
  anxiety--phenotype-librium---primary:
    run: anxiety--phenotype-librium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-triclofo---primary/output
  anxiety--phenotype-tartrate---primary:
    run: anxiety--phenotype-tartrate---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-librium---primary/output
  anxiety--phenotype-triazolam---primary:
    run: anxiety--phenotype-triazolam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tartrate---primary/output
  anxiety--phenotype-evacalm---primary:
    run: anxiety--phenotype-evacalm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-triazolam---primary/output
  anxiety--phenotype-nobrium---primary:
    run: anxiety--phenotype-nobrium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-evacalm---primary/output
  anxiety--phenotype-equanil---primary:
    run: anxiety--phenotype-equanil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-nobrium---primary/output
  anxiety--phenotype-buspar---primary:
    run: anxiety--phenotype-buspar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-equanil---primary/output
  anxiety--phenotype-perizam---primary:
    run: anxiety--phenotype-perizam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-buspar---primary/output
  anxiety--phenotype-suspension---primary:
    run: anxiety--phenotype-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-perizam---primary/output
  anxiety--phenotype-125microgram---primary:
    run: anxiety--phenotype-125microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-suspension---primary/output
  hypnotic-anxiety--phenotype---primary:
    run: hypnotic-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-125microgram---primary/output
  anxiety--phenotype-flurazepam---primary:
    run: anxiety--phenotype-flurazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: hypnotic-anxiety--phenotype---primary/output
  anxiety--phenotype-valium---primary:
    run: anxiety--phenotype-valium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-flurazepam---primary/output
  anxiety--phenotype-tropium---primary:
    run: anxiety--phenotype-tropium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-valium---primary/output
  anxiety--phenotype-sonata---primary:
    run: anxiety--phenotype-sonata---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tropium---primary/output
  dialar-anxiety--phenotype---primary:
    run: dialar-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-sonata---primary/output
  anxiety--phenotype-lormetazepam---primary:
    run: anxiety--phenotype-lormetazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: dialar-anxiety--phenotype---primary/output
  anxiety--phenotype-flumazenil---primary:
    run: anxiety--phenotype-flumazenil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-lormetazepam---primary/output
  anxiety--phenotype-welldorm---primary:
    run: anxiety--phenotype-welldorm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-flumazenil---primary/output
  anxiety--phenotype-mixture---primary:
    run: anxiety--phenotype-mixture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-welldorm---primary/output
  anxiety--phenotype-dexmedetomidine---primary:
    run: anxiety--phenotype-dexmedetomidine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-mixture---primary/output
  anxiety--phenotype-500mg---primary:
    run: anxiety--phenotype-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-dexmedetomidine---primary/output
  anxiety--phenotype-diazepam---primary:
    run: anxiety--phenotype-diazepam---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-500mg---primary/output
  anxiety--phenotype-stilnoct---primary:
    run: anxiety--phenotype-stilnoct---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-diazepam---primary/output
  anxiety--phenotype-zopiclone---primary:
    run: anxiety--phenotype-zopiclone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-stilnoct---primary/output
  noctamid-anxiety--phenotype---primary:
    run: noctamid-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-zopiclone---primary/output
  rectal-anxiety--phenotype---primary:
    run: rectal-anxiety--phenotype---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: noctamid-anxiety--phenotype---primary/output
  anxiety--phenotype-tensium---primary:
    run: anxiety--phenotype-tensium---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: rectal-anxiety--phenotype---primary/output
  anxiety--phenotype-chlormethiazole---primary:
    run: anxiety--phenotype-chlormethiazole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-tensium---primary/output
  anxiety--phenotype-remno---primary:
    run: anxiety--phenotype-remno---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-chlormethiazole---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: anxiety--phenotype-remno---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}

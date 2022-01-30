class AllDogsModel {
  Message? message;
  String? status;

  AllDogsModel({this.message, this.status});

  AllDogsModel.fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? Message.fromJson(json['message']) : null;
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (message != null) {
      data['message'] = message!.toJson();
    }
    data['status'] = status;
    return data;
  }
}

class Message {
  List<String>? affenpinscher;
  List<String>? african;
  List<String>? airedale;
  List<String>? akita;
  List<String>? appenzeller;
  List<String>? australian;
  List<String>? basenji;
  List<String>? beagle;
  List<String>? bluetick;
  List<String>? borzoi;
  List<String>? bouvier;
  List<String>? boxer;
  List<String>? brabancon;
  List<String>? briard;
  List<String>? buhund;
  List<String>? bulldog;
  List<String>? bullterrier;
  List<String>? cattledog;
  List<String>? chihuahua;
  List<String>? chow;
  List<String>? clumber;
  List<String>? cockapoo;
  List<String>? collie;
  List<String>? coonhound;
  List<String>? corgi;
  List<String>? cotondetulear;
  List<String>? dachshund;
  List<String>? dalmatian;
  List<String>? dane;
  List<String>? deerhound;
  List<String>? dhole;
  List<String>? dingo;
  List<String>? doberman;
  List<String>? elkhound;
  List<String>? entlebucher;
  List<String>? eskimo;
  List<String>? finnish;
  List<String>? frise;
  List<String>? germanshepherd;
  List<String>? greyhound;
  List<String>? groenendael;
  List<String>? havanese;
  List<String>? hound;
  List<String>? husky;
  List<String>? keeshond;
  List<String>? kelpie;
  List<String>? komondor;
  List<String>? kuvasz;
  List<String>? labradoodle;
  List<String>? labrador;
  List<String>? leonberg;
  List<String>? lhasa;
  List<String>? malamute;
  List<String>? malinois;
  List<String>? maltese;
  List<String>? mastiff;
  List<String>? mexicanhairless;
  List<String>? mix;
  List<String>? mountain;
  List<String>? newfoundland;
  List<String>? otterhound;
  List<String>? ovcharka;
  List<String>? papillon;
  List<String>? pekinese;
  List<String>? pembroke;
  List<String>? pinscher;
  List<String>? pitbull;
  List<String>? pointer;
  List<String>? pomeranian;
  List<String>? poodle;
  List<String>? pug;
  List<String>? puggle;
  List<String>? pyrenees;
  List<String>? redbone;
  List<String>? retriever;
  List<String>? ridgeback;
  List<String>? rottweiler;
  List<String>? saluki;
  List<String>? samoyed;
  List<String>? schipperke;
  List<String>? schnauzer;
  List<String>? setter;
  List<String>? sheepdog;
  List<String>? shiba;
  List<String>? shihtzu;
  List<String>? spaniel;
  List<String>? springer;
  List<String>? stbernard;
  List<String>? terrier;
  List<String>? tervuren;
  List<String>? vizsla;
  List<String>? waterdog;
  List<String>? weimaraner;
  List<String>? whippet;
  List<String>? wolfhound;

  Message(
      {this.affenpinscher,
      this.african,
      this.airedale,
      this.akita,
      this.appenzeller,
      this.australian,
      this.basenji,
      this.beagle,
      this.bluetick,
      this.borzoi,
      this.bouvier,
      this.boxer,
      this.brabancon,
      this.briard,
      this.buhund,
      this.bulldog,
      this.bullterrier,
      this.cattledog,
      this.chihuahua,
      this.chow,
      this.clumber,
      this.cockapoo,
      this.collie,
      this.coonhound,
      this.corgi,
      this.cotondetulear,
      this.dachshund,
      this.dalmatian,
      this.dane,
      this.deerhound,
      this.dhole,
      this.dingo,
      this.doberman,
      this.elkhound,
      this.entlebucher,
      this.eskimo,
      this.finnish,
      this.frise,
      this.germanshepherd,
      this.greyhound,
      this.groenendael,
      this.havanese,
      this.hound,
      this.husky,
      this.keeshond,
      this.kelpie,
      this.komondor,
      this.kuvasz,
      this.labradoodle,
      this.labrador,
      this.leonberg,
      this.lhasa,
      this.malamute,
      this.malinois,
      this.maltese,
      this.mastiff,
      this.mexicanhairless,
      this.mix,
      this.mountain,
      this.newfoundland,
      this.otterhound,
      this.ovcharka,
      this.papillon,
      this.pekinese,
      this.pembroke,
      this.pinscher,
      this.pitbull,
      this.pointer,
      this.pomeranian,
      this.poodle,
      this.pug,
      this.puggle,
      this.pyrenees,
      this.redbone,
      this.retriever,
      this.ridgeback,
      this.rottweiler,
      this.saluki,
      this.samoyed,
      this.schipperke,
      this.schnauzer,
      this.setter,
      this.sheepdog,
      this.shiba,
      this.shihtzu,
      this.spaniel,
      this.springer,
      this.stbernard,
      this.terrier,
      this.tervuren,
      this.vizsla,
      this.waterdog,
      this.weimaraner,
      this.whippet,
      this.wolfhound});

  Message.fromJson(Map<String, dynamic> json) {
    if (json['affenpinscher'] != null) {
      affenpinscher = json['affenpinscher'].cast<String>();
    }
    if (json['african'] != null) {
      african = json['african'].cast<String>();
    }
    if (json['airedale'] != null) {
      airedale = json['airedale'].cast<String>();
    }
    if (json['akita'] != null) {
      akita = json['akita'].cast<String>();
    }
    if (json['appenzeller'] != null) {
      appenzeller = json['appenzeller'].cast<String>();
    }
    australian = json['australian'].cast<String>();
    if (json['basenji'] != null) {
      basenji = json['basenji'].cast<String>();
    }
    if (json['beagle'] != null) {
      beagle = json['beagle'].cast<String>();
    }
    if (json['bluetick'] != null) {
      bluetick = json['bluetick'].cast<String>();
    }
    if (json['borzoi'] != null) {
      borzoi = json['borzoi'].cast<String>();
    }
    if (json['bouvier'] != null) {
      bouvier = json['bouvier'].cast<String>();
    }
    if (json['boxer'] != null) {
      boxer = json['boxer'].cast<String>();
    }
    if (json['brabancon'] != null) {
      brabancon = json['brabancon'].cast<String>();
    }
    if (json['briard'] != null) {
      briard = json['briard'].cast<String>();
    }
    buhund = json['buhund'].cast<String>();
    bulldog = json['bulldog'].cast<String>();
    bullterrier = json['bullterrier'].cast<String>();
    cattledog = json['cattledog'].cast<String>();
    if (json['chihuahua'] != null) {
      chihuahua = json['chihuahua'].cast<String>();
    }
    if (json['chow'] != null) {
      chow = json['chow'].cast<String>();
    }
    if (json['clumber'] != null) {
      clumber = json['clumber'].cast<String>();
    }
    if (json['cockapoo'] != null) {
      cockapoo = json['cockapoo'].cast<String>();
    }
    collie = json['collie'].cast<String>();
    if (json['coonhound'] != null) {
      coonhound = json['coonhound'].cast<String>();
    }
    corgi = json['corgi'].cast<String>();
    if (json['cotondetulear'] != null) {
      cotondetulear = json['cotondetulear'].cast<String>();
    }
    if (json['dachshund'] != null) {
      dachshund = json['dachshund'].cast<String>();
    }
    if (json['dalmatian'] != null) {
      dalmatian = json['dalmatian'].cast<String>();
    }
    dane = json['dane'].cast<String>();
    deerhound = json['deerhound'].cast<String>();
    if (json['dhole'] != null) {
      dhole = json['dhole'].cast<String>();
    }
    if (json['dingo'] != null) {
      dingo = json['dingo'].cast<String>();
    }
    if (json['doberman'] != null) {
      doberman = json['doberman'].cast<String>();
    }
    elkhound = json['elkhound'].cast<String>();
    if (json['entlebucher'] != null) {
      entlebucher = json['entlebucher'].cast<String>();
    }
    if (json['eskimo'] != null) {
      eskimo = json['eskimo'].cast<String>();
    }
    finnish = json['finnish'].cast<String>();
    frise = json['frise'].cast<String>();
    if (json['germanshepherd'] != null) {
      germanshepherd = json['germanshepherd'].cast<String>();
    }
    greyhound = json['greyhound'].cast<String>();
    if (json['groenendael'] != null) {
      groenendael = json['groenendael'].cast<String>();
    }
    if (json['havanese'] != null) {
      havanese = json['havanese'].cast<String>();
    }
    hound = json['hound'].cast<String>();
    if (json['husky'] != null) {
      husky = json['husky'].cast<String>();
    }
    if (json['keeshond'] != null) {
      keeshond = json['keeshond'].cast<String>();
    }
    if (json['kelpie'] != null) {
      kelpie = json['kelpie'].cast<String>();
    }
    if (json['komondor'] != null) {
      komondor = json['komondor'].cast<String>();
    }
    if (json['kuvasz'] != null) {
      kuvasz = json['kuvasz'].cast<String>();
    }
    if (json['labradoodle'] != null) {
      labradoodle = json['labradoodle'].cast<String>();
    }
    if (json['labrador'] != null) {
      labrador = json['labrador'].cast<String>();
    }
    if (json['leonberg'] != null) {
      leonberg = json['leonberg'].cast<String>();
    }
    if (json['lhasa'] != null) {
      lhasa = json['lhasa'].cast<String>();
    }
    if (json['malamute'] != null) {
      malamute = json['malamute'].cast<String>();
    }
    if (json['malinois'] != null) {
      malinois = json['malinois'].cast<String>();
    }
    if (json['maltese'] != null) {
      maltese = json['maltese'].cast<String>();
    }
    mastiff = json['mastiff'].cast<String>();
    if (json['mexicanhairless'] != null) {
      mexicanhairless = json['mexicanhairless'].cast<String>();
    }
    if (json['mix'] != null) {
      mix = json['mix'].cast<String>();
    }
    mountain = json['mountain'].cast<String>();
    if (json['newfoundland'] != null) {
      newfoundland = json['newfoundland'].cast<String>();
    }
    if (json['otterhound'] != null) {
      otterhound = json['otterhound'].cast<String>();
    }
    ovcharka = json['ovcharka'].cast<String>();
    if (json['papillon'] != null) {
      papillon = json['papillon'].cast<String>();
    }
    if (json['pekinese'] != null) {
      pekinese = json['pekinese'].cast<String>();
    }
    if (json['pembroke'] != null) {
      pembroke = json['pembroke'].cast<String>();
    }
    pinscher = json['pinscher'].cast<String>();
    if (json['pitbull'] != null) {
      pitbull = json['pitbull'].cast<String>();
    }
    pointer = json['pointer'].cast<String>();
    if (json['pomeranian'] != null) {
      pomeranian = json['pomeranian'].cast<String>();
    }
    poodle = json['poodle'].cast<String>();
    if (json['pug'] != null) {
      pug = json['pug'].cast<String>();
    }
    if (json['puggle'] != null) {
      puggle = json['puggle'].cast<String>();
    }
    if (json['pyrenees'] != null) {
      pyrenees = json['pyrenees'].cast<String>();
    }
    if (json['redbone'] != null) {
      redbone = json['redbone'].cast<String>();
    }
    retriever = json['retriever'].cast<String>();
    ridgeback = json['ridgeback'].cast<String>();
    if (json['rottweiler'] != null) {
      rottweiler = json['rottweiler'].cast<String>();
    }
    if (json['saluki'] != null) {
      saluki = json['saluki'].cast<String>();
    }
    if (json['samoyed'] != null) {
      samoyed = json['samoyed'].cast<String>();
    }
    if (json['schipperke'] != null) {
      schipperke = json['schipperke'].cast<String>();
    }
    schnauzer = json['schnauzer'].cast<String>();
    setter = json['setter'].cast<String>();
    sheepdog = json['sheepdog'].cast<String>();
    if (json['shiba'] != null) {
      shiba = json['shiba'].cast<String>();
    }
    if (json['shihtzu'] != null) {
      shihtzu = json['shihtzu'].cast<String>();
    }
    spaniel = json['spaniel'].cast<String>();
    springer = json['springer'].cast<String>();
    if (json['stbernard'] != null) {
      stbernard = json['stbernard'].cast<String>();
    }
    terrier = json['terrier'].cast<String>();
    if (json['tervuren'] != null) {
      tervuren = json['tervuren'].cast<String>();
    }
    if (json['vizsla'] != null) {
      vizsla = json['vizsla'].cast<String>();
    }
    waterdog = json['waterdog'].cast<String>();
    if (json['weimaraner'] != null) {
      weimaraner = json['weimaraner'].cast<String>();
    }
    if (json['whippet'] != null) {
      whippet = json['whippet'].cast<String>();
    }
    wolfhound = json['wolfhound'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (affenpinscher != null) {
      data['affenpinscher'] = affenpinscher;
    }
    if (african != null) {
      data['african'] = african;
    }
    if (airedale != null) {
      data['airedale'] = airedale;
    }
    if (akita != null) {
      data['akita'] = akita;
    }
    if (appenzeller != null) {
      data['appenzeller'] = appenzeller;
    }
    data['australian'] = australian;
    if (basenji != null) {
      data['basenji'] = basenji;
    }
    if (beagle != null) {
      data['beagle'] = beagle;
    }
    if (bluetick != null) {
      data['bluetick'] = bluetick;
    }
    if (borzoi != null) {
      data['borzoi'] = borzoi;
    }
    if (bouvier != null) {
      data['bouvier'] = bouvier;
    }
    if (boxer != null) {
      data['boxer'] = boxer;
    }
    if (brabancon != null) {
      data['brabancon'] = brabancon;
    }
    if (briard != null) {
      data['briard'] = briard;
    }
    data['buhund'] = buhund;
    data['bulldog'] = bulldog;
    data['bullterrier'] = bullterrier;
    data['cattledog'] = cattledog;
    if (chihuahua != null) {
      data['chihuahua'] = chihuahua;
    }
    if (chow != null) {
      data['chow'] = chow;
    }
    if (clumber != null) {
      data['clumber'] = clumber;
    }
    if (cockapoo != null) {
      data['cockapoo'] = cockapoo;
    }
    data['collie'] = collie;
    if (coonhound != null) {
      data['coonhound'] = coonhound;
    }
    data['corgi'] = corgi;
    if (cotondetulear != null) {
      data['cotondetulear'] = cotondetulear;
    }
    if (dachshund != null) {
      data['dachshund'] = dachshund;
    }
    if (dalmatian != null) {
      data['dalmatian'] = dalmatian;
    }
    data['dane'] = dane;
    data['deerhound'] = deerhound;
    if (dhole != null) {
      data['dhole'] = dhole;
    }
    if (dingo != null) {
      data['dingo'] = dingo;
    }
    if (doberman != null) {
      data['doberman'] = doberman;
    }
    data['elkhound'] = elkhound;
    if (entlebucher != null) {
      data['entlebucher'] = entlebucher;
    }
    if (eskimo != null) {
      data['eskimo'] = eskimo;
    }
    data['finnish'] = finnish;
    data['frise'] = frise;
    if (germanshepherd != null) {
      data['germanshepherd'] = germanshepherd;
    }
    data['greyhound'] = greyhound;
    if (groenendael != null) {
      data['groenendael'] = groenendael;
    }
    if (havanese != null) {
      data['havanese'] = havanese;
    }
    data['hound'] = hound;
    if (husky != null) {
      data['husky'] = husky;
    }
    if (keeshond != null) {
      data['keeshond'] = keeshond;
    }
    if (kelpie != null) {
      data['kelpie'] = kelpie;
    }
    if (komondor != null) {
      data['komondor'] = komondor;
    }
    if (kuvasz != null) {
      data['kuvasz'] = kuvasz;
    }
    if (labradoodle != null) {
      data['labradoodle'] = labradoodle;
    }
    if (labrador != null) {
      data['labrador'] = labrador;
    }
    if (leonberg != null) {
      data['leonberg'] = leonberg;
    }
    if (lhasa != null) {
      data['lhasa'] = lhasa;
    }
    if (malamute != null) {
      data['malamute'] = malamute;
    }
    if (malinois != null) {
      data['malinois'] = malinois;
    }
    if (maltese != null) {
      data['maltese'] = maltese;
    }
    data['mastiff'] = mastiff;
    if (mexicanhairless != null) {
      data['mexicanhairless'] = mexicanhairless;
    }
    if (mix != null) {
      data['mix'] = mix;
    }
    data['mountain'] = mountain;
    if (newfoundland != null) {
      data['newfoundland'] = newfoundland;
    }
    if (otterhound != null) {
      data['otterhound'] = otterhound;
    }
    data['ovcharka'] = ovcharka;
    if (papillon != null) {
      data['papillon'] = papillon;
    }
    if (pekinese != null) {
      data['pekinese'] = pekinese;
    }
    if (pembroke != null) {
      data['pembroke'] = pembroke;
    }
    data['pinscher'] = pinscher;
    if (pitbull != null) {
      data['pitbull'] = pitbull;
    }
    data['pointer'] = pointer;
    if (pomeranian != null) {
      data['pomeranian'] = pomeranian;
    }
    data['poodle'] = poodle;
    if (pug != null) {
      data['pug'] = pug;
    }
    if (puggle != null) {
      data['puggle'] = puggle;
    }
    if (pyrenees != null) {
      data['pyrenees'] = pyrenees;
    }
    if (redbone != null) {
      data['redbone'] = redbone;
    }
    data['retriever'] = retriever;
    data['ridgeback'] = ridgeback;
    if (rottweiler != null) {
      data['rottweiler'] = rottweiler;
    }
    if (saluki != null) {
      data['saluki'] = saluki;
    }
    if (samoyed != null) {
      data['samoyed'] = samoyed;
    }
    if (schipperke != null) {
      data['schipperke'] = schipperke;
    }
    data['schnauzer'] = schnauzer;
    data['setter'] = setter;
    data['sheepdog'] = sheepdog;
    if (shiba != null) {
      data['shiba'] = shiba;
    }
    if (shihtzu != null) {
      data['shihtzu'] = shihtzu;
    }
    data['spaniel'] = spaniel;
    data['springer'] = springer;
    if (stbernard != null) {
      data['stbernard'] = stbernard;
    }
    data['terrier'] = terrier;
    if (tervuren != null) {
      data['tervuren'] = tervuren;
    }
    if (vizsla != null) {
      data['vizsla'] = vizsla;
    }
    data['waterdog'] = waterdog;
    if (weimaraner != null) {
      data['weimaraner'] = weimaraner;
    }
    if (whippet != null) {
      data['whippet'] = whippet;
    }
    data['wolfhound'] = wolfhound;
    return data;
  }
}

class TempData {
  String? names;
  List? data;

  TempData({this.names, this.data});
}

class RandomDogModel {
  String? message;
  String? status;

  RandomDogModel({this.message, this.status});

  RandomDogModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['message'] = message;
    data['status'] = status;
    return data;
  }
}

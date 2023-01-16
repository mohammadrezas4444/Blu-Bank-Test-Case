//
//  Dto.swift
//  BluTestCase
//
//  Created by Mohammad Reza Sohrabi on 1/14/23.
//

import Foundation

import Foundation
struct Ara : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Bre : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct CapitalInfo : Codable {
    let latlng : [Double]?

    enum CodingKeys: String, CodingKey {

        case latlng = "latlng"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        latlng = try values.decodeIfPresent([Double].self, forKey: .latlng)
    }

}

struct Car : Codable {
    let signs : [String]?
    let side : String?

    enum CodingKeys: String, CodingKey {

        case signs = "signs"
        case side = "side"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        signs = try values.decodeIfPresent([String].self, forKey: .signs)
        side = try values.decodeIfPresent(String.self, forKey: .side)
    }

}

import Foundation
struct Ces : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct CoatOfArms : Codable {
    let png : String?
    let svg : String?

    enum CodingKeys: String, CodingKey {

        case png = "png"
        case svg = "svg"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        png = try values.decodeIfPresent(String.self, forKey: .png)
        svg = try values.decodeIfPresent(String.self, forKey: .svg)
    }

}

struct Currencies : Codable {
    let xCD : XCD?

    enum CodingKeys: String, CodingKey {

        case xCD = "XCD"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        xCD = try values.decodeIfPresent(XCD.self, forKey: .xCD)
    }

}

struct Cym : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Demonyms : Codable {
    let eng : Eng?
    let fra : Fra?

    enum CodingKeys: String, CodingKey {

        case eng = "eng"
        case fra = "fra"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eng = try values.decodeIfPresent(Eng.self, forKey: .eng)
        fra = try values.decodeIfPresent(Fra.self, forKey: .fra)
    }

}

struct Deu : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Eng : Codable {
    let f : String?
    let m : String?

    enum CodingKeys: String, CodingKey {

        case f = "f"
        case m = "m"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        f = try values.decodeIfPresent(String.self, forKey: .f)
        m = try values.decodeIfPresent(String.self, forKey: .m)
    }

}

struct Est : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Fin : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Flags : Codable {
    let png : String?
    let svg : String?

    enum CodingKeys: String, CodingKey {

        case png = "png"
        case svg = "svg"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        png = try values.decodeIfPresent(String.self, forKey: .png)
        svg = try values.decodeIfPresent(String.self, forKey: .svg)
    }

}

struct Fra : Codable {
    let f : String?
    let m : String?

    enum CodingKeys: String, CodingKey {

        case f = "f"
        case m = "m"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        f = try values.decodeIfPresent(String.self, forKey: .f)
        m = try values.decodeIfPresent(String.self, forKey: .m)
    }

}

struct Hrv : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Hun : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Idd : Codable {
    let root : String?
    let suffixes : [String]?

    enum CodingKeys: String, CodingKey {

        case root = "root"
        case suffixes = "suffixes"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        root = try values.decodeIfPresent(String.self, forKey: .root)
        suffixes = try values.decodeIfPresent([String].self, forKey: .suffixes)
    }

}

struct Ita : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Jpn : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct CountryApiEntity : Codable {
    let name : Name?
    let tld : [String]?
    let cca2 : String?
    let ccn3 : String?
    let cca3 : String?
    let cioc : String?
    let independent : Bool?
    let status : String?
    let unMember : Bool?
    let currencies : Currencies?
    let idd : Idd?
    let capital : [String]?
    let altSpellings : [String]?
    let region : String?
    let subregion : String?
    let languages : Languages?
    let translations : Translations?
    let latlng : [Double]?
    let landlocked : Bool?
    let area : Double?
    let demonyms : Demonyms?
    let flag : String?
    let maps : Maps?
    let population : Int?
    let fifa : String?
    let car : Car?
    let timezones : [String]?
    let continents : [String]?
    let flags : Flags?
    let coatOfArms : CoatOfArms?
    let startOfWeek : String?
    let capitalInfo : CapitalInfo?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case tld = "tld"
        case cca2 = "cca2"
        case ccn3 = "ccn3"
        case cca3 = "cca3"
        case cioc = "cioc"
        case independent = "independent"
        case status = "status"
        case unMember = "unMember"
        case currencies = "currencies"
        case idd = "idd"
        case capital = "capital"
        case altSpellings = "altSpellings"
        case region = "region"
        case subregion = "subregion"
        case languages = "languages"
        case translations = "translations"
        case latlng = "latlng"
        case landlocked = "landlocked"
        case area = "area"
        case demonyms = "demonyms"
        case flag = "flag"
        case maps = "maps"
        case population = "population"
        case fifa = "fifa"
        case car = "car"
        case timezones = "timezones"
        case continents = "continents"
        case flags = "flags"
        case coatOfArms = "coatOfArms"
        case startOfWeek = "startOfWeek"
        case capitalInfo = "capitalInfo"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(Name.self, forKey: .name)
        tld = try values.decodeIfPresent([String].self, forKey: .tld)
        cca2 = try values.decodeIfPresent(String.self, forKey: .cca2)
        ccn3 = try values.decodeIfPresent(String.self, forKey: .ccn3)
        cca3 = try values.decodeIfPresent(String.self, forKey: .cca3)
        cioc = try values.decodeIfPresent(String.self, forKey: .cioc)
        independent = try values.decodeIfPresent(Bool.self, forKey: .independent)
        status = try values.decodeIfPresent(String.self, forKey: .status)
        unMember = try values.decodeIfPresent(Bool.self, forKey: .unMember)
        currencies = try values.decodeIfPresent(Currencies.self, forKey: .currencies)
        idd = try values.decodeIfPresent(Idd.self, forKey: .idd)
        capital = try values.decodeIfPresent([String].self, forKey: .capital)
        altSpellings = try values.decodeIfPresent([String].self, forKey: .altSpellings)
        region = try values.decodeIfPresent(String.self, forKey: .region)
        subregion = try values.decodeIfPresent(String.self, forKey: .subregion)
        languages = try values.decodeIfPresent(Languages.self, forKey: .languages)
        translations = try values.decodeIfPresent(Translations.self, forKey: .translations)
        latlng = try values.decodeIfPresent([Double].self, forKey: .latlng)
        landlocked = try values.decodeIfPresent(Bool.self, forKey: .landlocked)
        area = try values.decodeIfPresent(Double.self, forKey: .area)
        demonyms = try values.decodeIfPresent(Demonyms.self, forKey: .demonyms)
        flag = try values.decodeIfPresent(String.self, forKey: .flag)
        maps = try values.decodeIfPresent(Maps.self, forKey: .maps)
        population = try values.decodeIfPresent(Int.self, forKey: .population)
        fifa = try values.decodeIfPresent(String.self, forKey: .fifa)
        car = try values.decodeIfPresent(Car.self, forKey: .car)
        timezones = try values.decodeIfPresent([String].self, forKey: .timezones)
        continents = try values.decodeIfPresent([String].self, forKey: .continents)
        flags = try values.decodeIfPresent(Flags.self, forKey: .flags)
        coatOfArms = try values.decodeIfPresent(CoatOfArms.self, forKey: .coatOfArms)
        startOfWeek = try values.decodeIfPresent(String.self, forKey: .startOfWeek)
        capitalInfo = try values.decodeIfPresent(CapitalInfo.self, forKey: .capitalInfo)
    }

}

struct Kor : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Languages : Codable {
    let eng : String?

    enum CodingKeys: String, CodingKey {

        case eng = "eng"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eng = try values.decodeIfPresent(String.self, forKey: .eng)
    }

}

struct Maps : Codable {
    let googleMaps : String?
    let openStreetMaps : String?

    enum CodingKeys: String, CodingKey {

        case googleMaps = "googleMaps"
        case openStreetMaps = "openStreetMaps"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        googleMaps = try values.decodeIfPresent(String.self, forKey: .googleMaps)
        openStreetMaps = try values.decodeIfPresent(String.self, forKey: .openStreetMaps)
    }

}

struct Name : Codable {
    let common : String?
    let official : String?
    let nativeName : NativeName?

    enum CodingKeys: String, CodingKey {

        case common = "common"
        case official = "official"
        case nativeName = "nativeName"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        common = try values.decodeIfPresent(String.self, forKey: .common)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        nativeName = try values.decodeIfPresent(NativeName.self, forKey: .nativeName)
    }

}

struct NativeName : Codable {
    let eng : Eng?

    enum CodingKeys: String, CodingKey {

        case eng = "eng"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        eng = try values.decodeIfPresent(Eng.self, forKey: .eng)
    }

}

struct Nld : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Per : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Pol : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Por : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Rus : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Slk : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Spa : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Swe : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Translations : Codable {
    let ara : Ara?
    let bre : Bre?
    let ces : Ces?
    let cym : Cym?
    let deu : Deu?
    let est : Est?
    let fin : Fin?
    let fra : Fra?
    let hrv : Hrv?
    let hun : Hun?
    let ita : Ita?
    let jpn : Jpn?
    let kor : Kor?
    let nld : Nld?
    let per : Per?
    let pol : Pol?
    let por : Por?
    let rus : Rus?
    let slk : Slk?
    let spa : Spa?
    let swe : Swe?
    let tur : Tur?
    let urd : Urd?
    let zho : Zho?

    enum CodingKeys: String, CodingKey {

        case ara = "ara"
        case bre = "bre"
        case ces = "ces"
        case cym = "cym"
        case deu = "deu"
        case est = "est"
        case fin = "fin"
        case fra = "fra"
        case hrv = "hrv"
        case hun = "hun"
        case ita = "ita"
        case jpn = "jpn"
        case kor = "kor"
        case nld = "nld"
        case per = "per"
        case pol = "pol"
        case por = "por"
        case rus = "rus"
        case slk = "slk"
        case spa = "spa"
        case swe = "swe"
        case tur = "tur"
        case urd = "urd"
        case zho = "zho"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        ara = try values.decodeIfPresent(Ara.self, forKey: .ara)
        bre = try values.decodeIfPresent(Bre.self, forKey: .bre)
        ces = try values.decodeIfPresent(Ces.self, forKey: .ces)
        cym = try values.decodeIfPresent(Cym.self, forKey: .cym)
        deu = try values.decodeIfPresent(Deu.self, forKey: .deu)
        est = try values.decodeIfPresent(Est.self, forKey: .est)
        fin = try values.decodeIfPresent(Fin.self, forKey: .fin)
        fra = try values.decodeIfPresent(Fra.self, forKey: .fra)
        hrv = try values.decodeIfPresent(Hrv.self, forKey: .hrv)
        hun = try values.decodeIfPresent(Hun.self, forKey: .hun)
        ita = try values.decodeIfPresent(Ita.self, forKey: .ita)
        jpn = try values.decodeIfPresent(Jpn.self, forKey: .jpn)
        kor = try values.decodeIfPresent(Kor.self, forKey: .kor)
        nld = try values.decodeIfPresent(Nld.self, forKey: .nld)
        per = try values.decodeIfPresent(Per.self, forKey: .per)
        pol = try values.decodeIfPresent(Pol.self, forKey: .pol)
        por = try values.decodeIfPresent(Por.self, forKey: .por)
        rus = try values.decodeIfPresent(Rus.self, forKey: .rus)
        slk = try values.decodeIfPresent(Slk.self, forKey: .slk)
        spa = try values.decodeIfPresent(Spa.self, forKey: .spa)
        swe = try values.decodeIfPresent(Swe.self, forKey: .swe)
        tur = try values.decodeIfPresent(Tur.self, forKey: .tur)
        urd = try values.decodeIfPresent(Urd.self, forKey: .urd)
        zho = try values.decodeIfPresent(Zho.self, forKey: .zho)
    }

}

struct Tur : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct Urd : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}

struct XCD : Codable {
    let name : String?
    let symbol : String?

    enum CodingKeys: String, CodingKey {

        case name = "name"
        case symbol = "symbol"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
    }

}

struct Zho : Codable {
    let official : String?
    let common : String?

    enum CodingKeys: String, CodingKey {

        case official = "official"
        case common = "common"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        official = try values.decodeIfPresent(String.self, forKey: .official)
        common = try values.decodeIfPresent(String.self, forKey: .common)
    }

}


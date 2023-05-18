//
//  MarketDataModel.swift
//  SwiftfulCrypto
//
//  Created by Kimleng Hor on 5/18/23.
//

import Foundation

//JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10759,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 742,
     "total_market_cap": {
       "btc": 43461450.53287887,
       "eth": 649924700.7371695,
       "ltc": 12849621055.778534,
       "bch": 10093604701.178232,
       "bnb": 3779126467.1017776,
       "eos": 1308424274274.002,
       "xrp": 2551822656895.2173,
       "xlm": 13224586583606.398,
       "link": 177194859329.36755,
       "dot": 219144134420.25424,
       "yfi": 175379534.06883836,
       "usd": 1175836170834.6597,
       "aed": 4317670419304.8745,
       "ars": 272998469543749.47,
       "aud": 1777904268731.815,
       "bdt": 126215663229124.94,
       "bhd": 443343149032.35516,
       "bmd": 1175836170834.6597,
       "brl": 5841554096706.581,
       "cad": 1589003836214.8848,
       "chf": 1063648465939.1556,
       "clp": 937917480027974.8,
       "cny": 8273300881609.741,
       "czk": 25894852072206.293,
       "dkk": 8130636679002.401,
       "eur": 1091690982777.3881,
       "gbp": 947432346322.3705,
       "hkd": 9203857627208.29,
       "huf": 410391126979111.56,
       "idr": 17523564433052122,
       "ils": 4284570631095.875,
       "inr": 97314922383175.88,
       "jpy": 162794583181516.5,
       "krw": 1570776705879585.8,
       "kwd": 361361499529.42017,
       "lkr": 361681827874095.94,
       "mmk": 2469910190470730,
       "mxn": 20848685298243.8,
       "myr": 5334180788991.426,
       "ngn": 542060474754780.44,
       "nok": 12848661676933.902,
       "nzd": 1892380150815.7644,
       "php": 65611071590324.7,
       "pkr": 335113308687878.06,
       "pln": 4963799450195.551,
       "rub": 94303235561274.58,
       "sar": 4409475004178.958,
       "sek": 12444555005086.13,
       "sgd": 1585390491661.9119,
       "thb": 40479922759403.266,
       "try": 23279086926567.516,
       "twd": 36179655891262.93,
       "uah": 43439282520030.14,
       "vef": 117736475785.67447,
       "vnd": 27582365365121988,
       "zar": 22787248766341.41,
       "xdr": 874454074379.5167,
       "xag": 50070737487.90768,
       "xau": 600969866.9135936,
       "bits": 43461450532878.87,
       "sats": 4346145053287887
     },
     "total_volume": {
       "btc": 1903950.1605949402,
       "eth": 28471765.74116027,
       "ltc": 562913519.2859176,
       "bch": 442178529.6202162,
       "bnb": 165555184.09363148,
       "eos": 57319177721.54693,
       "xrp": 111789714743.41235,
       "xlm": 579339930925.9375,
       "link": 7762515441.621638,
       "dot": 9600220535.834114,
       "yfi": 7682990.051213835,
       "usd": 51510785738.74044,
       "aed": 189147605232.65506,
       "ars": 11959460017027.762,
       "aud": 77886059403.69072,
       "bdt": 5529229451117.709,
       "bhd": 19421884208.86343,
       "bmd": 51510785738.74044,
       "brl": 255905583550.06213,
       "cad": 69610748653.19055,
       "chf": 46596090160.621544,
       "clp": 41088093352363.7,
       "cny": 362435039536.35126,
       "czk": 1134396278931.4114,
       "dkk": 356185235902.6712,
       "eur": 47824570889.70462,
       "gbp": 41504918630.56166,
       "hkd": 403200675369.99036,
       "huf": 17978328899250.863,
       "idr": 767668655956737.9,
       "ils": 187697576614.10938,
       "inr": 4263151823696.364,
       "jpy": 7131671147467.879,
       "krw": 68812258328924.375,
       "kwd": 15830449205.58693,
       "lkr": 15844482082902.592,
       "mmk": 108201310498007.62,
       "mxn": 913334857329.6061,
       "myr": 233678679503.79565,
       "ngn": 23746472225559.445,
       "nok": 562871491017.5808,
       "nzd": 82900994970.85724,
       "php": 2874276140339.6304,
       "pkr": 14680573935541.027,
       "pln": 217453091060.80762,
       "rub": 4131216475521.9453,
       "sar": 193169361339.9928,
       "sek": 545168470218.0334,
       "sgd": 69452456008.6155,
       "thb": 1773336013723.963,
       "try": 1019805384977.0096,
       "twd": 1584950819631.0278,
       "uah": 1902979028911.4387,
       "vef": 5157774976.02008,
       "vnd": 1208322509318552.2,
       "zar": 998259041431.9226,
       "xdr": 38307901713.68671,
       "xag": 2193488425.0835004,
       "xau": 26327162.5910702,
       "bits": 1903950160594.9402,
       "sats": 190395016059494.03
     },
     "market_cap_percentage": {
       "btc": 44.58462559904916,
       "eth": 18.50665614602199,
       "usdt": 7.044557822104952,
       "bnb": 4.1777497411927,
       "usdc": 2.526507231085754,
       "xrp": 2.0315220715237237,
       "ada": 1.1139255972637625,
       "steth": 0.9784104670424176,
       "doge": 0.876132483374741,
       "sol": 0.6920755691862637
     },
     "market_cap_change_percentage_24h_usd": 1.0091193197284096,
     "updated_at": 1684426908
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentageString()
        }
        return ""
    }
}


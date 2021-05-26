//
//  OpenTripMapAPI+ObjectCategory.swift
//  OpenTripMapAPI
//
//  Created by Serge Bouts on 5/26/21
//  Copyright © Serge Bouts 2021
//  MIT license, see LICENSE file for details
//

import Foundation

/// Source: https://opentripmap.io/catalog

extension OpenTripMapAPI {

    // Object category. Several comma-separated categories may be stated with OR logic. see List of categories. Objects from interesting_places category are returned by default
    public enum ObjectCategory: String, CaseIterable, Equatable {

        case catalog // Catalog
        // {
        case accomodations // Accomodations
        // ---
        case alpine_hut // Alpine huts
        case apartments // Apartments
        case campsites // Campsites
        case guest_houses // Guest houses
        case hostels // Hostels
        case other_hotels // Hotels
        case love_hotels // Love hotels
        case motels // Motels
        case resorts // Resorts
        case villas_and_chalet // Villas and chalet
        // }

        // {
        case adult // Adult
        // ---
        case alcohol // alcohol
        case brothels // brothels
        case casino // casino
        case erotic_shops // erotic shops
        case hookah // hookah
        case adult_hotels // love hotels
        case nightclubs // nightclubs
        case strip_clubs // strip clubs
        // }

        // {
        case amusements // Amusements
        // ---
        case amusement_parks // amusement parks
        // {{
        case baths_and_saunas // baths and saunas
        // ---
        case other_bathhouses // bathhouses
        case open_air_baths // open-air baths
        case saunas // sauns
        case thermal_baths // thermal baths
        // }}
        case ferris_wheels // ferris wheels
        case miniature_parks // miniature parks
        case other_amusement_rides // other amusement rides
        case roller_coasters // roller coasters
        case water_parks // water parks
        // }

        // {
        case interesting_places // Interesting places
        // ---
        // {{
        case architecture // Architecture
        // ---
        // {{{
        case bridges // Bridges
        // ---
        case aqueducts // aqueducts
        case footbridges // footbridges
        case moveable_bridges // moveable bridges
        case other_bridges // other bridges
        case roman_bridges // Roman bridges
        case stone_bridges // stone bridges
        case suspension_bridges // suspension bridges
        case viaducts // viaducts
        // }}}
        // {{{
        case historic_architecture // Historic architecture
        // ---
        case amphitheatres // amphitheatres
        case other_buildings_and_structures // buildings and structures
        case destroyed_objects // destroyed objects
        case farms // farms
        case manor_houses // manor houses
        case palaces // palaces
        case pyramids // pyramids
        case triumphal_archs // triumphal archs
        case wineries // wineries
        // }}}
        case lighthouses // Lighthouses
        case skyscrapers // Skyscrapers
        // {{{
        case towers // Towers
        // ---
        case bell_towers // bell towers
        case clock_towers // clock towers
        case minarets // minarets
        case observation_towers // observation towers
        case other_towers // other towers
        case transmitter_towers // transmitter towers
        case watchtowers // watchtowers
        case water_towers // water towers
        // }}}
        // }}
        // {{
        case cultural // Cultural
        // ---
        // {{{
        case museums // Museums
        // ---
        case aquariums // aquariums
        case archaeological_museums // archaeological museums
        case art_galleries // art galleries
        case biographical_museums // biographical museums
        case children_museums // children museums
        case fashion_museums // fashion museums
        case historic_house_museums // historic house museums
        case history_museums // history museums
        case local_museums // local museums
        case military_museums // military museums
        // {{{{
        case museums_of_science_and_technology // museums of science and technology
        // ---
        case automobile_museums // automobile museums
        case aviation_museums // aviation museums
        case computer_museums // computer museums
        case heritage_railways // heritage railways
        case maritime_museums // maritime museums
        case other_technology_museums // other technology museums
        case railway_museums // railway museums
        // }}}}
        case national_museums // national museums
        case open_air_museums // open-air museums
        case other_museums // other museums
        case planetariums // planetariums
        case science_museums // science museums
        case zoos // zoos
        // }}}
        // {{{
        case theatres_and_entertainments // Theaters and entertainments
        // ---
        case circuses // circuses
        case concert_halls // concert halls
        case cinemas // movie theatres
        case music_venues // music venues
        case opera_houses // opera houses
        case other_theatres // other theatres
        case puppetries // puppetries
        case sylvan_theatres // sylvan theatres
        case children_theatres // сhildren's theatres
        // }}}
        // {{{
        case urban_environment // Urban environment
        // ---
        case fountains // fountains
        case gardens_and_parks // gardens and parks
        case installation // installation
        case sculptures // sculptures
        case squares // squares and streets
        case wall_painting // wall painting
        // }}}
        // }}
        // {{
        case historic // Historical
        // ---
        // {{{
        case archaeology // Archaeology
        // ---
        case other_archaeological_sites // archaeological sites
        case cave_paintings // cave paintings
        case megaliths // megaliths
        case menhirs // menhirs
        case roman_villas // roman villas
        case rune_stones // rune stones
        case settlements // settlements
        // }}}
        // {{{
        case burial_places // Burial places
        // ---
        case cemeteries // cemeteries
        case crypts // crypts
        case dolmens // dolmens
        case mausoleums // mausoleums
        case necropolises // necropolises
        case other_burial_places // other burial places
        case tumuluses // tumuluses
        case war_graves // war graves
        case war_memorials // war memorials
        // }}}
        // {{{
        case fortifications // Fortifications
        // ---
        case bunkers // bunkers
        case castles // castles
        case defensive_walls // defensive walls
        case fortified_towers // fortified towers
        case hillforts // hillforts
        case kremlins // kremlins
        case other_fortifications // other fortifications
        // }}}
        // {{{
        case historical_places // Historical places
        // ---
        case battlefields // battlefields
        case fishing_villages // fishing villages
        case historic_districts // historic districts
        case historic_settlements // historic settlements
        // }}}
        // {{{
        case monuments_and_memorials // Monuments and memorials
        // ---
        case milestones // milestones
        case monuments // monuments
        // }}}
        // }}
        // {{
        case industrial_facilities // Industrial facilities
        // --
        case abandoned_mineshafts // Abandoned mineshafts
        case abandoned_railway_stations // Abandoned railway stations
        case dams // Dams
        case factories // Factories
        case mills // Mills
        case mineshafts // Mineshafts
        case mints // Mints
        case other_buildings // Other buildings
        case power_stations // Power stations
        case railway_stations // Railway stations
        // }}
        // {{
        case natural // Natural
        // ---
        // {{{
        case beaches // Beaches
        // ---
        case black_sand_beaches // black sand beaches
        case golden_sand_beaches // golden sand beaches
        case nude_beaches // nude beaches
        case other_beaches // other beaches
        case rocks_beaches // rocks beaches
        case shingle_beaches // shingle beaches
        case urbans_beaches // urbans beaches
        case white_sand_beaches // white sand beaches
        // }}}
        // {{{
        case geological_formations // Geological formations
        // --
        case canyons // canyons
        case caves // caves
        case mountain_peaks // mountain peaks
        case rock_formations // rock formations
        case volcanoes // volcanoes
        // }}}
        case glaciers // Glaciers
        // {{{
        case islands // Islands
        // ---
        case coral_islands // coral islands
        case desert_islands // desert islands
        case high_islands // high islands
        case inland_islands // inland islands
        case other_islands // other islands
        case tidal_islands // tidal islands
        // }}}
        // {{{
        case natural_springs // Natural springs
        // ---
        case geysers // geysers
        case hot_springs // hot springs
        case springs_others // other springs
        // }}}
        // {{{
        case nature_reserves // Nature reserves
        // ---
        case aquatic_protected_areas // aquatic protected areas
        case national_parks // national parks
        case natural_monuments // natural monuments
        case other_nature_conservation_areas // nature conservation areas
        case nature_reserves_others // other nature reserves
        case wildlife_reserves // wildlife reserves
        // }}}
        // {{{
        case water // Water
        // ---
        case canals // canals
        case crater_lakes // crater lakes
        case dry_lakes // dry lakes
        case lagoons // lagoons
        case other_lakes // other lakes
        case reservoirs // reservoirs
        case rift_lakes // rift lakes
        case rivers // rivers
        case salt_lakes // salt lakes
        case waterfalls // waterfalls
        // }}}
        // }}
        // {{
        case other // Other
        // ---
        case red_telephone_boxes // Red telephone boxes
        case sundials // Sundials
        // {{{
        case unclassified_objects // unclassified attractions
        // ---
        case historic_object // historic attractions
        case tourist_object // tourist attractions
        // }}}
        case view_points // View points
        // }}
        // {{
        case religion // Religion
        // ---
        case buddhist_temples // buddhist temples
        case cathedrals // cathedrals
        // {{{
        case churches // churches
        // ---
        case catholic_churches // catholic churches
        case eastern_orthodox_churches // eastern orthodox churches
        case other_churches // other churches
        // }}}
        case egyptian_temples // egyptian temples
        case hindu_temples // hindu temples
        case monasteries // monasteries
        case mosques // mosques
        case other_temples // other temples
        case synagogues // synagogues
        // }}
        // }
        // {
        case sport // Sport
        // ---
        case climbing // climbing
        // {{
        case diving // diving
        // ---
        case dive_centers // dive centers
        case dive_spots // dive spots
        case wrecks // wrecks
        // }}
        case kitesurfing // kitesurfing
        case pools // pools
        case stadiums // stadiums
        case surfing // surfing
        // {{
        case winter_sports // winter sport
        // ---
        case cross_country_skiing // cross country skiing
        case other_winter_sports // other winter sports
        case skiing // skiing
        // }}
        // }
        // {
        case tourist_facilities // Tourist facilities
        // ---
        // {{
        case banks // Banks
        // ---
        case atm // ATM
        case bank // Banks
        case bureau_de_change // Bureau de change
        // }}
        // {{
        case foods // Foods
        // ---
        case bars // Bars
        case biergartens // Biergartens
        case cafes // Cafes
        case fast_food // Fast food
        case food_courts // Food courts
        case picnic_site // Picnic sites
        case pubs // Pubs
        case restaurants // Restaurants
        // }}
        // {{
        case shops // Shops
        // ---
        case bakeries // Bakeries
        case conveniences // Conveniences
        case fish_stores // Fish stores
        case malls // Malls
        case marketplaces // Marketplaces
        case outdoor // Outdoor
        case supermarkets // Supermarkets
        // }}
        // {{
        case transport // Transport
        // ---
        case bicycle_rental // Bicycle rental
        case boat_sharing // Boat sharing
        case car_rental // Car rental
        case car_sharing // Car sharing
        case car_wash // Car wash
        case charging_station // Charging stations
        case fuel // Fuel
        // }}
        // }
    }

    public final class ObjectCategoryInfo {
        public let objectCategory: ObjectCategory
        public let name: String
        public let children: [OCInfo]?
        private(set) weak var parent: OCInfo?
        public init(_ objectCategory: ObjectCategory, _ name: String, _ children: [OCInfo]? = nil) {
            self.objectCategory = objectCategory
            self.name = name
            self.children = children

            // Establish a parental relationship
            children?.forEach { $0.parent = self }
        }
    }
}

extension OpenTripMapAPI.ObjectCategoryInfo {
    public typealias OCInfo = ObjectCategoryInfo

    public static let catalog: OCInfo =
    OCInfo(.catalog, "Catalog", [
        OCInfo(.accomodations, "Accomodations", [
            OCInfo(.alpine_hut, "Alpine huts"),
            OCInfo(.apartments, "Apartments"),
            OCInfo(.campsites, "Campsites"),
            OCInfo(.guest_houses, "Guest houses"),
            OCInfo(.hostels, "Hostels"),
            OCInfo(.other_hotels, "Hotels"),
            OCInfo(.love_hotels, "Love hotels"),
            OCInfo(.motels, "Motels"),
            OCInfo(.resorts, "Resorts"),
            OCInfo(.villas_and_chalet, "Villas and chalet"),
        ]),
        OCInfo(.adult, "Adult", [
            OCInfo(.alcohol, "alcohol"),
            OCInfo(.brothels, "brothels"),
            OCInfo(.casino, "casino"),
            OCInfo(.erotic_shops, "erotic shops"),
            OCInfo(.hookah, "hookah"),
            OCInfo(.adult_hotels, "love hotels"),
            OCInfo(.nightclubs, "nightclubs"),
            OCInfo(.strip_clubs, "strip clubs"),
        ]),
        OCInfo(.amusements, "Amusements", [
            OCInfo(.amusement_parks, "amusement parks"),
            OCInfo(.baths_and_saunas, "baths and saunas", [
                OCInfo(.other_bathhouses, "bathhouses"),
                OCInfo(.open_air_baths, "open-air baths"),
                OCInfo(.saunas, "sauns"),
                OCInfo(.thermal_baths, "thermal baths"),
            ]),
            OCInfo(.ferris_wheels, "ferris wheels"),
            OCInfo(.miniature_parks, "miniature parks"),
            OCInfo(.other_amusement_rides, "other amusement rides"),
            OCInfo(.roller_coasters, "roller coasters"),
            OCInfo(.water_parks, "water parks"),
        ]),
        OCInfo(.interesting_places, "Interesting places", [
            OCInfo(.architecture, "Architecture", [
                OCInfo(.bridges, "Bridges", [
                    OCInfo(.aqueducts, "aqueducts"),
                    OCInfo(.footbridges, "footbridges"),
                    OCInfo(.moveable_bridges, "moveable bridges"),
                    OCInfo(.other_bridges, "other bridges"),
                    OCInfo(.roman_bridges, "Roman bridges"),
                    OCInfo(.stone_bridges, "stone bridges"),
                    OCInfo(.suspension_bridges, "suspension bridges"),
                    OCInfo(.viaducts, "viaducts"),
                ]),
                OCInfo(.historic_architecture, "Historic architecture", [
                    OCInfo(.amphitheatres, "amphitheatres"),
                    OCInfo(.other_buildings_and_structures, "buildings and structures"),
                    OCInfo(.destroyed_objects, "destroyed objects"),
                    OCInfo(.farms, "farms"),
                    OCInfo(.manor_houses, "manor houses"),
                    OCInfo(.palaces, "palaces"),
                    OCInfo(.pyramids, "pyramids"),
                    OCInfo(.triumphal_archs, "triumphal archs"),
                    OCInfo(.wineries, "wineries"),
                ]),
                OCInfo(.lighthouses, "Lighthouses"),
                OCInfo(.skyscrapers, "Skyscrapers"),
                OCInfo(.towers, "Towers", [
                    OCInfo(.bell_towers, "bell towers"),
                    OCInfo(.clock_towers, "clock towers"),
                    OCInfo(.minarets, "minarets"),
                    OCInfo(.observation_towers, "observation towers"),
                    OCInfo(.other_towers, "other towers"),
                    OCInfo(.transmitter_towers, "transmitter towers"),
                    OCInfo(.watchtowers, "watchtowers"),
                    OCInfo(.water_towers, "water towers"),
                ]),
            ]),
            OCInfo(.cultural, "Cultural", [
                OCInfo(.museums, "Museums", [
                    OCInfo(.aquariums, "aquariums"),
                    OCInfo(.archaeological_museums, "archaeological museums"),
                    OCInfo(.art_galleries, "art galleries"),
                    OCInfo(.biographical_museums, "biographical museums"),
                    OCInfo(.children_museums, "children museums"),
                    OCInfo(.fashion_museums, "fashion museums"),
                    OCInfo(.historic_house_museums, "historic house museums"),
                    OCInfo(.history_museums, "history museums"),
                    OCInfo(.local_museums, "local museums"),
                    OCInfo(.military_museums, "military museums"),
                    OCInfo(.museums_of_science_and_technology, "museums of science and technology", [
                        OCInfo(.automobile_museums, "automobile museums"),
                        OCInfo(.aviation_museums, "aviation museums"),
                        OCInfo(.computer_museums, "computer museums"),
                        OCInfo(.heritage_railways, "heritage railways"),
                        OCInfo(.maritime_museums, "maritime museums"),
                        OCInfo(.other_technology_museums, "other technology museums"),
                        OCInfo(.railway_museums, "railway museums"),
                    ]),
                    OCInfo(.national_museums, "national museums"),
                    OCInfo(.open_air_museums, "open-air museums"),
                    OCInfo(.other_museums, "other museums"),
                    OCInfo(.planetariums, "planetariums"),
                    OCInfo(.science_museums, "science museums"),
                    OCInfo(.zoos, "zoos"),
                ]),
                OCInfo(.theatres_and_entertainments, "Theaters and entertainments", [
                    OCInfo(.circuses, "circuses"),
                    OCInfo(.concert_halls, "concert halls"),
                    OCInfo(.cinemas, "movie theatres"),
                    OCInfo(.music_venues, "music venues"),
                    OCInfo(.opera_houses, "opera houses"),
                    OCInfo(.other_theatres, "other theatres"),
                    OCInfo(.puppetries, "puppetries"),
                    OCInfo(.sylvan_theatres, "sylvan theatres"),
                    OCInfo(.children_theatres, "сhildren's theatres"),
                ]),
                OCInfo(.urban_environment, "Urban environment", [
                    OCInfo(.fountains, "fountains"),
                    OCInfo(.gardens_and_parks, "gardens and parks"),
                    OCInfo(.installation, "installation"),
                    OCInfo(.sculptures, "sculptures"),
                    OCInfo(.squares, "squares and streets"),
                    OCInfo(.wall_painting, "wall painting"),
                ]),
            ]),
            OCInfo(.historic, "Historical", [
                OCInfo(.archaeology, "Archaeology", [
                    OCInfo(.other_archaeological_sites, "archaeological sites"),
                    OCInfo(.cave_paintings, "cave paintings"),
                    OCInfo(.megaliths, "megaliths"),
                    OCInfo(.menhirs, "menhirs"),
                    OCInfo(.roman_villas, "roman villas"),
                    OCInfo(.rune_stones, "rune stones"),
                    OCInfo(.settlements, "settlements"),
                ]),
                OCInfo(.burial_places, "Burial places", [
                    OCInfo(.cemeteries, "cemeteries"),
                    OCInfo(.crypts, "crypts"),
                    OCInfo(.dolmens, "dolmens"),
                    OCInfo(.mausoleums, "mausoleums"),
                    OCInfo(.necropolises, "necropolises"),
                    OCInfo(.other_burial_places, "other burial places"),
                    OCInfo(.tumuluses, "tumuluses"),
                    OCInfo(.war_graves, "war graves"),
                    OCInfo(.war_memorials, "war memorials"),
                ]),
                OCInfo(.fortifications, "Fortifications", [
                    OCInfo(.bunkers, "bunkers"),
                    OCInfo(.castles, "castles"),
                    OCInfo(.defensive_walls, "defensive walls"),
                    OCInfo(.fortified_towers, "fortified towers"),
                    OCInfo(.hillforts, "hillforts"),
                    OCInfo(.kremlins, "kremlins"),
                    OCInfo(.other_fortifications, "other fortifications"),
                ]),
                OCInfo(.historical_places, "Historical places", [
                    OCInfo(.battlefields, "battlefields"),
                    OCInfo(.fishing_villages, "fishing villages"),
                    OCInfo(.historic_districts, "historic districts"),
                    OCInfo(.historic_settlements, "historic settlements"),
                ]),
                OCInfo(.monuments_and_memorials, "Monuments and memorials", [
                    OCInfo(.milestones, "milestones"),
                    OCInfo(.monuments, "monuments"),
                ]),
            ]),
            OCInfo(.industrial_facilities, "Industrial facilities", [
                OCInfo(.abandoned_mineshafts, "Abandoned mineshafts"),
                OCInfo(.abandoned_railway_stations, "Abandoned railway stations"),
                OCInfo(.dams, "Dams"),
                OCInfo(.factories, "Factories"),
                OCInfo(.mills, "Mills"),
                OCInfo(.mineshafts, "Mineshafts"),
                OCInfo(.mints, "Mints"),
                OCInfo(.other_buildings, "Other buildings"),
                OCInfo(.power_stations, "Power stations"),
                OCInfo(.railway_stations, "Railway stations"),
            ]),
            OCInfo(.natural, "Natural", [
                OCInfo(.beaches, "Beaches", [
                    OCInfo(.black_sand_beaches, "black sand beaches"),
                    OCInfo(.golden_sand_beaches, "golden sand beaches"),
                    OCInfo(.nude_beaches, "nude beaches"),
                    OCInfo(.other_beaches, "other beaches"),
                    OCInfo(.rocks_beaches, "rocks beaches"),
                    OCInfo(.shingle_beaches, "shingle beaches"),
                    OCInfo(.urbans_beaches, "urbans beaches"),
                    OCInfo(.white_sand_beaches, "white sand beaches"),
                ]),
                OCInfo(.geological_formations, "Geological formations", [
                    OCInfo(.canyons, "canyons"),
                    OCInfo(.caves, "caves"),
                    OCInfo(.mountain_peaks, "mountain peaks"),
                    OCInfo(.rock_formations, "rock formations"),
                    OCInfo(.volcanoes, "volcanoes"),
                ]),
                OCInfo(.glaciers, "Glaciers"),
                OCInfo(.islands, "Islands", [
                    OCInfo(.coral_islands, "coral islands"),
                    OCInfo(.desert_islands, "desert islands"),
                    OCInfo(.high_islands, "high islands"),
                    OCInfo(.inland_islands, "inland islands"),
                    OCInfo(.other_islands, "other islands"),
                    OCInfo(.tidal_islands, "tidal islands"),
                ]),
                OCInfo(.natural_springs, "Natural springs", [
                    OCInfo(.geysers, "geysers"),
                    OCInfo(.hot_springs, "hot springs"),
                    OCInfo(.springs_others, "other springs"),
                ]),
                OCInfo(.nature_reserves, "Nature reserves", [
                    OCInfo(.aquatic_protected_areas, "aquatic protected areas"),
                    OCInfo(.national_parks, "national parks"),
                    OCInfo(.natural_monuments, "natural monuments"),
                    OCInfo(.other_nature_conservation_areas, "nature conservation areas"),
                    OCInfo(.nature_reserves_others, "other nature reserves"),
                    OCInfo(.wildlife_reserves, "wildlife reserves"),
                ]),
                OCInfo(.water, "Water", [
                    OCInfo(.canals, "canals"),
                    OCInfo(.crater_lakes, "crater lakes"),
                    OCInfo(.dry_lakes, "dry lakes"),
                    OCInfo(.lagoons, "lagoons"),
                    OCInfo(.other_lakes, "other lakes"),
                    OCInfo(.reservoirs, "reservoirs"),
                    OCInfo(.rift_lakes, "rift lakes"),
                    OCInfo(.rivers, "rivers"),
                    OCInfo(.salt_lakes, "salt lakes"),
                    OCInfo(.waterfalls, "waterfalls"),
                ]),
            ]),
            OCInfo(.other, "Other", [
                OCInfo(.red_telephone_boxes, "Red telephone boxes"),
                OCInfo(.sundials, "Sundials"),
                OCInfo(.unclassified_objects, "unclassified attractions", [
                    OCInfo(.historic_object, "historic attractions"),
                    OCInfo(.tourist_object, "tourist attractions"),
                ]),
                OCInfo(.view_points, "View points"),
            ]),
            OCInfo(.religion, "Religion", [
                OCInfo(.buddhist_temples, "buddhist temples"),
                OCInfo(.cathedrals, "cathedrals"),
                OCInfo(.churches, "churches", [
                    OCInfo(.catholic_churches, "catholic churches"),
                    OCInfo(.eastern_orthodox_churches, "eastern orthodox churches"),
                    OCInfo(.other_churches, "other churches"),
                ]),
                OCInfo(.egyptian_temples, "egyptian temples"),
                OCInfo(.hindu_temples, "hindu temples"),
                OCInfo(.monasteries, "monasteries"),
                OCInfo(.mosques, "mosques"),
                OCInfo(.other_temples, "other temples"),
                OCInfo(.synagogues, "synagogues"),
            ]),
        ]),
        OCInfo(.sport, "Sport", [
            OCInfo(.climbing, "climbing"),
            OCInfo(.diving, "diving", [
                OCInfo(.dive_centers, "dive centers"),
                OCInfo(.dive_spots, "dive spots"),
                OCInfo(.wrecks, "wrecks"),
            ]),
            OCInfo(.kitesurfing, "kitesurfing"),
            OCInfo(.pools, "pools"),
            OCInfo(.stadiums, "stadiums"),
            OCInfo(.surfing, "surfing"),
            OCInfo(.winter_sports, "winter sport", [
                OCInfo(.cross_country_skiing, "cross country skiing"),
                OCInfo(.other_winter_sports, "other winter sports"),
                OCInfo(.skiing, "skiing"),
            ]),
        ]),
        OCInfo(.tourist_facilities, "Tourist facilities", [
            OCInfo(.banks, "Banks", [
                OCInfo(.atm, "ATM"),
                OCInfo(.bank, "Banks"),
                OCInfo(.bureau_de_change, "Bureau de change"),
            ]),
            OCInfo(.foods, "Foods", [
                OCInfo(.bars, "Bars"),
                OCInfo(.biergartens, "Biergartens"),
                OCInfo(.cafes, "Cafes"),
                OCInfo(.fast_food, "Fast food"),
                OCInfo(.food_courts, "Food courts"),
                OCInfo(.picnic_site, "Picnic sites"),
                OCInfo(.pubs, "Pubs"),
                OCInfo(.restaurants, "Restaurants"),
            ]),
            OCInfo(.shops, "Shops", [
                OCInfo(.bakeries, "Bakeries"),
                OCInfo(.conveniences, "Conveniences"),
                OCInfo(.fish_stores, "Fish stores"),
                OCInfo(.malls, "Malls"),
                OCInfo(.marketplaces, "Marketplaces"),
                OCInfo(.outdoor, "Outdoor"),
                OCInfo(.supermarkets, "Supermarkets"),
            ]),
            OCInfo(.transport, "Transport", [
                OCInfo(.bicycle_rental, "Bicycle rental"),
                OCInfo(.boat_sharing, "Boat sharing"),
                OCInfo(.car_rental, "Car rental"),
                OCInfo(.car_sharing, "Car sharing"),
                OCInfo(.car_wash, "Car wash"),
                OCInfo(.charging_station, "Charging stations"),
                OCInfo(.fuel, "Fuel"),
            ]),
        ])
    ])
}

extension OpenTripMapAPI.ObjectCategoryInfo {

    public typealias ObjectCategory = OpenTripMapAPI.ObjectCategory
    public typealias ObjectCategoryInfo = OpenTripMapAPI.ObjectCategoryInfo

    private static let _byObjectCategory: [ObjectCategory: ObjectCategoryInfo] = {

        var result: [ObjectCategory: ObjectCategoryInfo] = [:]

        func addObjectCategories(for infos: [ObjectCategoryInfo]) {

            infos.forEach { info in
                result[info.objectCategory] = info
                if let children = info.children {
                    addObjectCategories(for: children)
                }
            }
        }

        addObjectCategories(for: [OpenTripMapAPI.ObjectCategoryInfo.catalog])
        return result
    }()

//    public static func byObjectCategory(_ objectCategory: ObjectCategory) -> ObjectCategoryInfo { _byObjectCategory[objectCategory]! }
    public static subscript(objectCategory: ObjectCategory) -> ObjectCategoryInfo { _byObjectCategory[objectCategory]! }
}

extension OpenTripMapAPI.ObjectCategoryInfo: CustomStringConvertible {

    public var description: String {
        
        "OpenTripMapAPI.\(type(of: self))[\(objectCategory) (\"\(name)\")]"
    }
}

extension OpenTripMapAPI.ObjectCategoryInfo: Identifiable {}

extension OpenTripMapAPI.ObjectCategory {

    public typealias ObjectCategoryInfo = OpenTripMapAPI.ObjectCategoryInfo

    public var info: ObjectCategoryInfo {

        ObjectCategoryInfo[self]
    }
}

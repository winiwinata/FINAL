//
//  Restaurant.swift
//  FoodPin
//
//  Created by NDHU_CSIE on 2020/11/19.
//  Copyright © 2020 NDHU_CSIE. All rights reserved.
//

import Foundation

class Restaurant: NSObject, Codable {
    var name: String
    var type: String
    var location: String
    var phone: String
    var summary: String
    var image: String
    var isVisited: Bool
    var rating: String
    
    init(name: String, type: String, location: String, phone: String, summary: String, image: String, isVisited: Bool) {
        self.name = name
        self.type = type
        self.location = location
        self.phone = phone
        self.summary = summary
        self.image = image
        self.isVisited = isVisited
        self.rating = ""
    }
    
    convenience override init() {
        self.init(name: "", type: "", location: "", phone: "", summary: "", image: "", isVisited: false)
    }
    
    static func generateData(sourceArray: inout [Restaurant]) {
    sourceArray = [ 
           Restaurant(name: "Jyoti Restaurant", type: "Indian Restaurant", location: "6, Sinchon-ro 20-gil, Mapo-gu, Seoul, South Korea", phone: "+82 2-703-3535", summary: "Welcome to Jyoti Indian Restaurant in Seoul, Korea. Jyoti is the perfect place for Indian and Nepali cuisine. Jyoti means simply a Light. We proudly offer finest Indian vegetarian and non vegetarian cuisine.Our food is of glorious quality and our 23 years plus years of skilled chefs from 5 star hotels will make each dish individually as your likes. Jyoti is officially registered and approved by Seoul Tourism Association. Thank you for visiting us.", image: "jyoti.jpeg", isVisited: false),
           Restaurant(name: "Yang GOOD", type: "Local Lamb Restaurant", location: "15 Nonhyeon-ro 95-gil, Yeoksam-dong, Gangnam-gu, Seoul, South Korea", phone: "+82 2-567-7060", summary: "A little gem hidden at the corner of the street is nothing but fantastic! This place is warm and cozy. We open at 7 every morning except Sunday, and close at 9 PM. We offer a variety of halal meat BBQ and beer. Welcome to visit us!", image: "yangGood.jpg", isVisited: false),
           Restaurant(name: "플랜트 Plant Cafe Seoul", type: "Cafe", location: "2nd floor, 117 Bogwang-ro, Itaewon 1(il)-dong, Yongsan-gu, Seoul, South Korea", phone: "+82 2-749-1981", summary: "Vegan wraps, avocado burgers, chickpea tagines and peanut stews are just some of the virtuously delicious highlights at this popular vegan hang-out started by a local food blogger. The plant-filled space is also a tranquil spot to nurse a cup of homemade yuja (citrus fruit) tea or on-tap kombucha. We open at 11am to 9pm", image: "plant.jpeg", isVisited: false),
           Restaurant(name: "Jungsik Seoul", type: "Korean Restaurant", location: "11 Seolleung-ro 158-gil, Cheongdam-dong, Gangnam-gu, Seoul, South Korea", phone: "+82 2-517-4654", summary: "Touted as a pioneer of modern Korean fine dining, Chef Yim Jung-sik — with his Seoul and New York restaurants - is credited for introducing Korean cuisine to the world with an innovative flair that is entirely his own. What Yim does best is drawing inspiration from the familiar — gimbap, bibimbap, platter of nine delicacies and napa wraps with pork — and creating something unexpected yet surprisingly evocative and authentic. Whimsical desserts, a good wine list and attentive service — Jungsik has it all. We open at 3pm and close at 10pm everyday.", image: "jungsik.jpg", isVisited: false),
           Restaurant(name: "페트라 مطعم البتراء Petra Restaurant", type: "Arabic Restaurant", location: "33 Noksapyeong-daero 40-gil, Itaewon 2(i)-dong, Yongsan-gu, Seoul, South Korea", phone: "+82 2-790-4433", summary: "When pitted against other Arabic restaurants in Itaewon, Petra has consistently come up on top. Jordanian owner Yaser Ghanayem stresses that Petra's dishes hail from Levant, near the East Mediterranean on the Arabian Peninsula. Petra's integrity lies in the ingredients that it uses. The halal meat here is imported from Australia, while the basmati rice and other ingredients are sent to Yaser every two months by his father who resides in Jordan. It’s no wonder His Highness General Sheikh Mohamed, while on his visit to Korea, ordered from Petra for three consecutive days. We open at 10.30am to 10pm everyday.", image: "petra.jpg", isVisited: false),
           Restaurant(name: "Mingles", type: "Korean Restaurant", location: "19 Dosan-daero 67-gil, Cheongdam-dong, Gangnam-gu, Seoul, South Korea", phone: "+82 2-515-7306", summary: "Mingles is undoubtedly one of the most interesting modern Korean restaurants in Gangnam. As its name suggests, Mingles utilizes Japanese, Spanish and French styles of cooking with Korean cuisine as its backbone. By undertaking the serious work of studying the ingredients as well as well as demanding an exacting selection, the chefs at Mingles have been successfully demonstrating creative ways to expand and further existing concepts of Korean cooking. Business hour is from 9am to 9pm", image: "Mingles.jpg", isVisited: false),
           Restaurant(name: "Braai Republic", type: "South African Restaurant", location: "19 Itaewon-ro 14-gil, Itaewon 1(il)-dong, Yongsan-gu, Seoul, South Korea", phone: "+82 70-8879-1967", summary: "Braai Republic serves South African home-style cooking, focusing on our own homemade sausages including boerewors, lamb chops and freshly-baked meat pies. Kitchen hours: (Monday 17:00- 21:00) (Tuesday to Sunday 12:00- 21:00) Atmosphere: Open kitchen and Casual Tip: Come before 6pm - even on week days we get busy early!", image: "braai.jpeg", isVisited: false),
           Restaurant(name: "Gusto Taco", type: "Mexican Restaurant", location: "41 Wausan-ro, Seogang-dong, Mapo-gu, Seoul, South Korea", phone: "+82 2-338-8226", summary: "A casual family dining restaurant since 2010. Veggies and Vegans! Dinner service starting at 1130 AM, Teusday - Sunday, closed Mondays", image: "gusto.jpeg", isVisited: false),
           Restaurant(name: "Manimal Smokehouse", type: "American Restaurant", location: "South Korea, Seoul, Yongsan-gu, Itaewon-dong, 녹사평로40길 47", phone: "+82 2-790-6788", summary: "Manimal Smokehouse is one of the first American barbeque restaurants in Seoul, Korea. We serve brisket, pulled pork, chicken, spare ribs, baby back ribs, andouille sausage and Texas cheddar sausage by using our own custom made oak wood smoker directly imported from Texas.We began from the humble roots of cooking for friends on the rooftops of Itaewon, Seoul. The idea back then was the same as it is now, to remain humble and make the most delicious BBQ while continuing to have fun with both old and new friends.", image: "manimal.jpg", isVisited: false),
           Restaurant(name: "Casablanca Sandwicherie", type: "Moroccan Restaurant", location: "35-4 Sinheung-ro 3ga-gil, Yongsan 2(i)ga-dong, Yongsan-gu, Seoul, South Korea", phone: "+82 2-797-8367", summary: "is a small but popular restaurant in Haebangcheon where you can find some of the tastiest sandwiches, salads, and soups in Seoul. Casablanca Sandwicherie is best known for the Moroccan chicken sandwich. The restaurant is run by two brothers and chefs, Wahid Naciri and Karim Naciri. Open at 9am and closes at 10pm", image: "casablanca.jpg", isVisited: false),
       ]
    }
       
}


//
//  PostModel.swift
//  Interface HW Netology
//
//  Created by Stanislav Lezovsky on 10.04.2022.
//

import Foundation
import UIKit

struct LoginPost {
    var author: String
    var description: String
    var image: UIImage
    var likes: Int
    var views: Int
}

let f1Post = LoginPost(
    author: "F1 official",
    description: "Alfa Romeo не стоит причислять к фаворитам чемпионата, однако повышенное внимание обеспечено и ей, и моментов, вызывающих общий интерес, немало.На какие результаты будет способен Валттери Боттас, перешедший из «высшей лиги» в команду второго эшелона, как на его фоне будет смотреться дебютант чемпионата Гуаньюй Чжоу, наконец, как покажет себя новая машина C42, в разработку которой вложено так много сил и средств?",
    image: UIImage(named: "AR")!,
    likes: 948,
    views: 1042)
let spacePost = LoginPost(
    author: "Московский планетарий",
    description: "В лекции мы поговорим о том, что нам известно теперь об устройстве и эволюции формирующихся планетных систем, и о том, как за последние годы изменились наши представления об этом процессе.",
    image: UIImage(named: "SP")!,
    likes: 453,
    views: 664
)
let motoPost = LoginPost(
    author: "Moto Guzzi",
    description: "В этом году итальянскому бренду Moto Guzzi исполняется 100 лет, и, конечно, вековой путь просто необходимо отметить полностью новым мотоциклом.Полноценная презентация нового спорт туриста Moto Guzzi V100 Mandello 2022 пройдет через 2 месяца на миланской выставке EICMA 2021, ну а мы пока можем лишь строить гипотезы и насладиться очень красивым видео и фотогалереей.",
    image: UIImage(named: "moto")!,
    likes: 2254,
    views: 2785
)
let concertPost = LoginPost(
    author: "Portugal.The Man",
    description: "Лауреаты премии «Грэмми» Portugal. The Man впервые едут в Россию. Группа выступит в Москве летом 2018 года — концерт значится в гастрольном графике на сайте коллектива. Он состоится в столичном зале Crocus City Hall 18 июля 2019 года. Билеты поступят в продажу в скором времени.",
    image: UIImage(named: "PTM")!,
    likes: 1547,
    views: 1822)

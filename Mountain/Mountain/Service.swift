//
//  Service.swift
//  Mountain
//
//  Created by 이태영 on 2022/09/14.
//

import Foundation

class Service {
    var mountainsData: [Mountain] = [Mountain(title: "가리산", subTitle: "", imageName: "가리산",
                                              latitude: 37.863087, longitude: 127.984306),
                                     Mountain(title: "가리왕산", subTitle: "", imageName: "가리왕산",
                                              latitude: 37.487324, longitude: 128.583252),
                                     Mountain(title: "가야산", subTitle: "", imageName: "가야산",
                                              latitude: 35.793415, longitude: 128.094452),
                                     Mountain(title: "가지산", subTitle: "", imageName: "가지산",
                                              latitude: 35.616592, longitude: 129.039139),
                                     Mountain(title: "감악산", subTitle: "", imageName: "감악산",
                                              latitude: 37.935516, longitude: 126.951332),
                                     Mountain(title: "강천산", subTitle: "", imageName: "강천산",
                                              latitude: 35.408741, longitude: 127.067940),
                                     Mountain(title: "계룡산", subTitle: "", imageName: "계룡산",
                                              latitude: 36.371922, longitude: 127.257866),
                                     Mountain(title: "계방산", subTitle: "", imageName: "계방산",
                                              latitude: 37.702568, longitude: 128.466949),
                                     Mountain(title: "공작산", subTitle: "", imageName: "공작산",
                                              latitude: 37.685078, longitude: 128.026230),
                                     Mountain(title: "관악산", subTitle: "", imageName: "관악산",
                                              latitude: 37.477051, longitude: 126.962730),
                                     Mountain(title: "구병산", subTitle: "", imageName: "구병산",
                                              latitude: 36.448044, longitude: 127.866119),
                                     Mountain(title: "금산", subTitle: "", imageName: "금산",
                                              latitude: 34.743530, longitude: 127.962303),
                                     Mountain(title: "금수산", subTitle: "", imageName: "금수산",
                                              latitude: 36.964703, longitude: 128.240112),
                                     Mountain(title: "금오산", subTitle: "", imageName: "금오산",
                                              latitude: 36.109394, longitude: 128.310028),
                                     Mountain(title: "금정산", subTitle: "", imageName: "금정산",
                                              latitude: 35.258999, longitude: 129.052643),
                                     Mountain(title: "깃대봉", subTitle: "", imageName: "깃대봉",
                                              latitude: 34.685318, longitude: 125.192993),
                                     Mountain(title: "남산", subTitle: "", imageName: "남산",
                                              latitude: 35.796986, longitude: 129.212570),
                                     Mountain(title: "내연산", subTitle: "", imageName: "내연산",
                                              latitude: 36.220364, longitude: 129.257355),
                                     Mountain(title: "내장산", subTitle: "", imageName: "내장산",
                                              latitude: 35.487495, longitude: 126.923782),
                                     Mountain(title: "대둔산", subTitle: "", imageName: "대둔산",
                                              latitude: 36.145107, longitude: 127.305603),
                                     Mountain(title: "대암산", subTitle: "", imageName: "대암산",
                                              latitude: 38.169401, longitude: 128.105395),
                                     Mountain(title: "대야산", subTitle: "", imageName: "대야산",
                                              latitude: 36.660725, longitude: 127.941460),
                                     Mountain(title: "덕숭산", subTitle: "", imageName: "덕숭산",
                                              latitude: 36.656240, longitude: 126.621143),
                                     Mountain(title: "덕유산", subTitle: "", imageName: "덕유산",
                                              latitude: 35.901928, longitude: 127.776405),
                                     Mountain(title: "덕항산", subTitle: "", imageName: "덕항산",
                                              latitude: 37.304321, longitude: 128.991989),
                                     Mountain(title: "도락산", subTitle: "", imageName: "도락산",
                                              latitude: 36.874397, longitude: 128.292465),
                                     Mountain(title: "도봉산", subTitle: "", imageName: "도봉산",
                                              latitude: 37.695526, longitude: 127.009369),
                                     Mountain(title: "두륜산", subTitle: "", imageName: "두륜산",
                                              latitude: 34.468334, longitude: 126.627914),
                                     Mountain(title: "두타산", subTitle: "", imageName: "두타산",
                                              latitude: 37.384903, longitude: 129.012466),
                                     Mountain(title: "마니산", subTitle: "", imageName: "마니산",
                                              latitude: 37.609451, longitude: 126.456833),
                                     Mountain(title: "마이산", subTitle: "", imageName: "마이산",
                                              latitude: 35.774967, longitude: 127.418114),
                                     Mountain(title: "명선산", subTitle: "", imageName: "명선산",
                                              latitude: 38.067619, longitude: 127.325066),
                                     Mountain(title: "명지산", subTitle: "", imageName: "명지산",
                                              latitude: 37.935547, longitude: 127.489571),
                                     Mountain(title: "모악산", subTitle: "", imageName: "모악산",
                                              latitude: 35.757973, longitude: 127.086548),
                                     Mountain(title: "무등산", subTitle: "", imageName: "무등산",
                                              latitude: 35.133133, longitude: 126.957947),
                                     Mountain(title: "무학산", subTitle: "", imageName: "무학산",
                                              latitude: 35.208775, longitude: 128.556900),
                                     Mountain(title: "미륵산", subTitle: "", imageName: "미륵산",
                                              latitude: 34.822266, longitude: 128.414810),
                                     Mountain(title: "민주지산", subTitle: "", imageName: "민주지산",
                                              latitude: 36.039696, longitude: 127.872269),
                                     Mountain(title: "방장산", subTitle: "", imageName: "방장산",
                                              latitude: 35.443508, longitude: 126.751724),
                                     Mountain(title: "방태산", subTitle: "", imageName: "방태산",
                                              latitude: 37.914307, longitude: 128.406982),
                                     Mountain(title: "백덕산", subTitle: "", imageName: "백덕산",
                                              latitude: 37.426533, longitude: 128.261734),
                                     Mountain(title: "백암산", subTitle: "", imageName: "백암산",
                                              latitude: 35.464283, longitude: 126.833061),
                                     Mountain(title: "백운산(광양)", subTitle: "", imageName: "백운산(광양)",
                                              latitude: 35.093365, longitude: 127.596336),
                                     Mountain(title: "백운산(정선)", subTitle: "", imageName: "백운산(정선)",
                                              latitude: 37.262501, longitude: 128.596848),
                                     Mountain(title: "백운산(포천)", subTitle: "", imageName: "백운산(포천)",
                                              latitude: 38.073372, longitude: 127.412041),
                                     Mountain(title: "변산", subTitle: "", imageName: "변산",
                                              latitude: 35.641109, longitude: 126.580353),
                                     Mountain(title: "북한산", subTitle: "", imageName: "북한산",
                                              latitude: 37.658173, longitude: 126.946442),
                                     Mountain(title: "비슬산", subTitle: "", imageName: "비슬산",
                                              latitude: 35.711494, longitude: 128.528824),
                                     Mountain(title: "삼악산", subTitle: "", imageName: "삼악산",
                                              latitude: 37.828083, longitude: 127.671196),
                                     Mountain(title: "서대산", subTitle: "", imageName: "서대산",
                                              latitude: 36.235413, longitude: 127.532326),
                                     Mountain(title: "선운산", subTitle: "", imageName: "선운산",
                                              latitude: 35.503616, longitude: 126.586433),
                                     Mountain(title: "설악산", subTitle: "", imageName: "설악산",
                                              latitude: 38.077477, longitude: 128.451645),
                                     Mountain(title: "성인봉", subTitle: "", imageName: "성인봉",
                                              latitude: 37.486576, longitude: 130.897125),
                                     Mountain(title: "소백산", subTitle: "", imageName: "소백산",
                                              latitude: 36.965378, longitude: 128.420624),
                                     Mountain(title: "소요산", subTitle: "", imageName: "소요산",
                                              latitude: 37.947926, longitude: 127.061279),
                                     Mountain(title: "속리산", subTitle: "", imageName: "속리산",
                                              latitude: 36.532185, longitude: 127.823181),
                                     Mountain(title: "신불산", subTitle: "", imageName: "신불산",
                                              latitude: 35.550732, longitude: 129.062042),
                                     Mountain(title: "연화산", subTitle: "", imageName: "연화산",
                                              latitude: 35.085262, longitude: 128.260712),
                                     Mountain(title: "오대산", subTitle: "", imageName: "오대산",
                                              latitude: 37.786270, longitude: 128.565628),
                                     Mountain(title: "오봉산", subTitle: "", imageName: "오봉산",
                                              latitude: 37.983410, longitude: 127.818138),
                                     Mountain(title: "용문산", subTitle: "", imageName: "용문산",
                                              latitude: 35.597950, longitude: 128.955399),
                                     Mountain(title: "용화산", subTitle: "", imageName: "용화산",
                                              latitude: 38.005058, longitude: 127.739769),
                                     Mountain(title: "운문산", subTitle: "", imageName: "운문산",
                                              latitude: 35.615387, longitude: 128.927338),
                                     Mountain(title: "운악산", subTitle: "", imageName: "운악산",
                                              latitude: 37.865135, longitude: 127.349464),
                                     Mountain(title: "운장산", subTitle: "", imageName: "운장산",
                                              latitude: 35.929142, longitude: 127.349442),
                                     Mountain(title: "월악산", subTitle: "", imageName: "월악산",
                                              latitude: 36.864655, longitude: 128.088074),
                                     Mountain(title: "월출산", subTitle: "", imageName: "월출산",
                                              latitude: 34.793705, longitude: 126.697891),
                                     Mountain(title: "유명산", subTitle: "", imageName: "유명산",
                                              latitude: 37.592281, longitude: 127.488586),
                                     Mountain(title: "응봉산", subTitle: "", imageName: "응봉산",
                                              latitude: 37.081387, longitude: 129.279404),
                                     Mountain(title: "장안산", subTitle: "", imageName: "장안산",
                                              latitude: 35.644196, longitude: 127.616310),
                                     Mountain(title: "재약산", subTitle: "", imageName: "재약산",
                                              latitude: 35.531962, longitude: 128.944258),
                                     Mountain(title: "적상산", subTitle: "", imageName: "적상산",
                                              latitude: 35.930077, longitude: 127.709969),
                                     Mountain(title: "점봉산", subTitle: "", imageName: "점봉산",
                                              latitude: 38.036102, longitude: 128.472168),
                                     Mountain(title: "조계산", subTitle: "", imageName: "조계산",
                                              latitude: 34.992554, longitude: 127.343918),
                                     Mountain(title: "주왕산", subTitle: "", imageName: "주왕산",
                                              latitude: 36.396729, longitude: 129.147003),
                                     Mountain(title: "주홀산", subTitle: "", imageName: "주홀산",
                                              latitude: 36.761379, longitude: 128.076523),
                                     Mountain(title: "지리산", subTitle: "", imageName: "지리산",
                                              latitude: 35.303749, longitude: 127.749046),
                                     Mountain(title: "지리산(통영)", subTitle: "", imageName: "지리산(통영)",
                                              latitude: 34.845150, longitude: 128.220078),
                                     Mountain(title: "천관산", subTitle: "", imageName: "천관산",
                                              latitude: 34.540127, longitude: 126.913895),
                                     Mountain(title: "천마산", subTitle: "", imageName: "천마산",
                                              latitude: 37.667805, longitude: 127.287247),
                                     Mountain(title: "천성산", subTitle: "", imageName: "천성산",
                                              latitude: 35.320164, longitude: 128.987015),
                                     Mountain(title: "천태산", subTitle: "", imageName: "천태산",
                                              latitude: 36.157501, longitude: 127.620232),
                                     Mountain(title: "청량산", subTitle: "", imageName: "청량산",
                                              latitude: 36.785774, longitude: 128.918716),
                                     Mountain(title: "추월산", subTitle: "", imageName: "추월산",
                                              latitude: 35.403271, longitude: 126.980240),
                                     Mountain(title: "축령산", subTitle: "", imageName: "축령산",
                                              latitude: 37.752541, longitude: 127.308830),
                                     Mountain(title: "치악산", subTitle: "", imageName: "치악신",
                                              latitude: 37.360477, longitude: 128.022171),
                                     Mountain(title: "칠갑산", subTitle: "", imageName: "칠갑삽",
                                              latitude: 36.435741, longitude: 126.884575),
                                     Mountain(title: "태박산", subTitle: "", imageName: "태박산",
                                              latitude: 37.120285, longitude: 128.908737),
                                     Mountain(title: "태화산", subTitle: "", imageName: "태화산",
                                              latitude: 37.111843, longitude: 128.464584),
                                     Mountain(title: "팔공산", subTitle: "", imageName: "팔공산",
                                              latitude: 35.988995, longitude: 128.697372),
                                     Mountain(title: "팔봉산", subTitle: "", imageName: "팔봉산",
                                              latitude: 37.701714, longitude: 127.695595),
                                     Mountain(title: "팔영산", subTitle: "", imageName: "팔영산",
                                              latitude: 34.639889, longitude: 127.450142),
                                     Mountain(title: "한라산", subTitle: "", imageName: "한라산",
                                              latitude: 33.384693, longitude: 126.620377),
                                     Mountain(title: "화약산", subTitle: "", imageName: "화약산",
                                              latitude: 38.005432, longitude: 127.525414),
                                     Mountain(title: "화왕산", subTitle: "", imageName: "화왕산",
                                              latitude: 35.541355, longitude: 128.507431),
                                     Mountain(title: "황매산", subTitle: "", imageName: "황매산",
                                              latitude: 35.483315, longitude: 127.999290),
                                     Mountain(title: "황석산", subTitle: "", imageName: "황석산",
                                              latitude: 35.659630, longitude: 127.752502),
                                     Mountain(title: "황악산", subTitle: "", imageName: "황악신",
                                              latitude: 36.116169, longitude: 128.001480),
                                     Mountain(title: "황장산", subTitle: "", imageName: "황장산",
                                              latitude: 36.807194, longitude: 128.254593),
                                     Mountain(title: "희양산", subTitle: "", imageName: "희양산",
                                              latitude: 36.724445, longitude: 127.984917)
    ]
}

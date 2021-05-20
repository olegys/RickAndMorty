import 'package:flutter_app/screens/character_profile_screen/models/episode_model.dart';
import 'package:flutter_app/screens/home_screen/models/view_model.dart';

const List<EpisodeModel> episodes = [
  EpisodeModel(
    id: 0,
    image:
        'https://s3-alpha-sig.figma.com/img/2a13/1e79/0f0023c3c0eb26ebfc64859ba82c3e88?Expires=1622419200&Signature=Yy3B5ppxoJC-Uaj5RN4INUwsxXm4YUmA-9AvWQMbnsaPtj0M2apVxRlXuBRbqbH72-u8tebsYCcHtLgVEjR5yvVOvCP90GJVRurwMzCYA8ZPrWirfyXhoMQkxjqQQDinfz5zqd~s-HN3bztQPgWYnVgAuUNlR48KDAa7FlW-yoY2HVw~4BzQKnlLJC38EezQv2ihVqBtfd7eAwUdSei61YAMLWciZzuojai~YhR-VFFJt5mqaEJzpwQ2c7mjaHQWLi8PWlRrxgdw29bbWWHnXwUBnf85DCKzzm3PC~M~C7V~WXGYkRMQ5vmzbcsgLcKvZKFzdt6iEdnFAW~rXFJ-bw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    series: 'Серия 1',
    name: 'Пилот',
    date: '2 декабря 2013',
  ),
  EpisodeModel(
    id: 1,
    image:
        'https://s3-alpha-sig.figma.com/img/5f60/b87d/2db30f6c50b8740bb28ab182e8f7e85a?Expires=1622419200&Signature=VYjsbdq--fxpDbQT1m1Vq7oUHayfTAz-T8yVlf7KN8MpUWg-9n~Z5HnR9pZeKPrANOG1HS~IZZDwelFQBZPR0siN3DxMY5roOMWWU~3-cg4bwvnwRr~5EMYwEHEWWRxLP9HP0iM9dvrxUkWv501sHxa5nKtmfo51kdDQ0qAWQqnzo0NBZZtY6WhbMDg-Nnuqoo5jJs3fT6rX~YlD5TIlx57GJ1v2mQDuQI059feWCXNd4ar~pZZwmU8HvDtxsxo9rdOtkLsyxk~Xclizz960E0zzOmhnpsZyxYC0ngikE9-ZNrpkr6nwCtX98Xrb4TTeXtZIdz9yOKCZ20mfTiNQDA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    series: 'Серия 2',
    name: 'Пёс-газонокосильщик',
    date: '9 декабря 2013',
  ),
  EpisodeModel(
    id: 2,
    image:
        'https://s3-alpha-sig.figma.com/img/2f48/b4fd/9634d4d6a1bb3a82485b5bb4052a0a4c?Expires=1622419200&Signature=KIhR65sKgen8h4l8WN5~YMCtUoWNi3AveVGD7K3N3vTuvnwXR2x2jpxUHSTUZ5cMmdnXu23R5AyR-EN8t45~qjFvWi-WPOrM0Sa9HqP~cIXksXPDn38o4GMB-lf25HAlnfSAGp9bW7Wnd8VhCw3YV9sTxeSP~6yx1rhsOUD-sLtIiiBgLKs-zaAeYcy8WrPimqFS-RpOA~PeViJUFb0Sx~FQNXKX9K6SIKP0cLeuFxj2sWvHBKg0Lb8zSLFgNWTXD-IitD~vBze3aCFw4uquJOaC7lEZW16ipsrQX6Y98BJZ0KSEDEwRuFwCKdaOKi7ADESv3qxMvF~GVTnu70M5qg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    series: 'Серия 3',
    name: 'Анатомический парк',
    date: '16 декабря 2013',
  ),
  EpisodeModel(
    id: 3,
    image:
        'https://s3-alpha-sig.figma.com/img/debe/f506/25ae7b92bf5073848af59370e93421eb?Expires=1622419200&Signature=WeCyBxW8nEyjAHTpO5dbaMyOauGEIrOV73teqpXeqENCHNdtLD6VmQGKn6HQVyqWHnAl9ykXhka8pT-mp7KtLcOlhKD~JgL6jw6GkWxJw2UChGbI3z04~-HGhQRtxHyaybeXQjjqPSm57E17qZkOnNv3Ns02WswvT6ULjqb2nxPDWBnLNN7tsf0dwzwQ7H251UEp2DO711SOiSERwI3QUaQOiprUYEOyT11NiwSgIPjGuLBTGNX-x6eBmKuWfQSpA936ShiSn1l491~E2UNFTg7gvh0vaBTHoR1MH8qDIPrRWHCgXk4tt1ADW~IFCjB~jun2qrVJ28YOsGrhNS5tgQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    series: 'Серия 4',
    name: 'Пёс-газон',
    date: '19 декабря 2013',
  ),
];

const List<ViewModel> characters = [
  ViewModel(
    id: 0,
    avatar:
        'https://s3-alpha-sig.figma.com/img/b86d/7059/b695d8bbb483cac677dfbff28a6b3f98?Expires=1621814400&Signature=XROk5IQRFdely4e0xm-Z84oMdUGlQrpzOmG4jMDjtEf41uOZoZW1WMO1Io991FM91vmIQKOOPcuW1uI9m-XieCNDCNmdjLOb8JFSK9kj5dRDxRNW14SwhPmcCS56nVWQMC6Q5rC9h-AOmpvVTzKJWFKbmX7Rxl2JaAPTUhlAQA8oalejsc7NSrkwWG9CLE6FDDWrDEbSXGJiFqnfjSioxCC64r5hwJjgr4Lm8e~PDkgi2OR-wlsiG6w0AWTo3o~DNxvVThrMttN5nRqZEj8qXlaLrdXR1Ef2MHaRIX9w4u2nwHpLgvwv54TEWlePTuDO2FI~rags7Vf9VfJdbAfkCA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Рик Cанчез',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 1,
    avatar:
        'https://s3-alpha-sig.figma.com/img/19ac/7d55/ec70f5f8e518adc8d2983ecdd8edbaff?Expires=1621814400&Signature=UvmTdnnN2cnrsJrglpOVv2O5FDUP974zFFkcBux3QghUArCyWABhPvlKhZ-lAJ-HHn3yDSTmiHW2RaLt6BW9wlfI1PcjZKAR74-5vkYNQtiCFSwSowiPJwQzpxK9BYJcHT0DXDJruOOvj0SjtQIrI9kxEpEwBnxl7hfhBOKrhCRFTUaJfV98cneZZmV4hWRdyePLsM1GODu5XkViTL-RhlvvtygcbjVAebS2ZsE9h~sf24PftkMKbjUvZrIlEdgIsDCp1kmkPogBzr7GUAqMOFLKCqnoWJ91tFtEpCO0OJO3UkYaLuA-hFgY4RRl4e9VM3kv4ZX1E~74YrJHaz5Iiw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Директор Агентства',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 2,
    avatar:
        'https://s3-alpha-sig.figma.com/img/68d8/7089/d36f153442643543e91adfb999cbcc8f?Expires=1621814400&Signature=AeIoVrRplUUDoh4C~68o167QQC5vI9jcFPkE5ItKjyZBBkhXNw1gAauKepzWYXDxGlr~ARI~tq553B4IawQ5hSwLiULK29yUjofdvVV1tMFpsl-LtaVEhDdzJSlPFHoBzbK13zVdUkzHYaGD9jOhNK-K3uaA0rhNStZC8cl87inCIGuS1AmkuaLbrrySO43~bwoqloigkLM1JhFLWKcBOgjEK48ZMNOTk5O-cCPDjlRi4-ksdXcn45gpUHXn73qtQ-pVQJ4NjBmLtoOQ8FNulS4KP-McLcYBKNVkMpooTr4jHJRgR6JeEzgud4qrO8o2ul8lQhdvEydyCz-L5V8G~A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Морти Смит',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 3,
    avatar:
        'https://s3-alpha-sig.figma.com/img/4df4/871b/3ffff7a6c551edf443d0c1a6901e2d84?Expires=1621814400&Signature=VxqEqAlsXo3W6x97vS~-6VTo-xT8ox4vcrkuiTk~vIV-VYAYYqcXEZSp1~ni4WvBjPjcajwCdsLMnluLHS5RSiTrDh5gZa27GASCYLc6MAHMST5apinwDLgClnYl2gP4iAYGhskJ8ZDob~DX5iNA6Bp0cymYs1xTKkIlAh0hcAfca0scN3wL0TV6YNLIy4O-mMrfz-b8GiE1-LxMOf6e87AgfpRLalsDWNR~VsvYk9T9WJNAtz6I~R2GTX1CxZoduzcAPgUANLwHAF24brGSZ9YB2lKgo0ZTTSL0wbfrKzjC4MQg3lWCDZhFHW1~ROsiIfhzSvDCe21lPymg4UzOIw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Саммер Смит',
    gender: 'Женский',
    kind: 'Человек',
  ),
  ViewModel(
    id: 4,
    avatar:
        'https://s3-alpha-sig.figma.com/img/5231/5420/d3cab7e26baca69cfedf6be5d1cbe6a8?Expires=1621814400&Signature=QjFVxPulHqy5s1T4FG-SqqtlQ70EH8PSS8xPw7kar-k9u30NrF3uPxpZJKzTGAC--tbXrli81berd1Q--fVOh8nh6SXr-sszU1EAhzQXz-talBF6fCQmbqHhJBNf~Q7IRotDxT7nZdxuW2u3Y9s-pCBE30qmv6GHWUvMo~HhtH~KTNQF6iKijS2SvSQbW64nr5P4l4iS6g8fyYT7c2kbEJVktD5dtmP2vlvUuy9q4-r4cF0QiwlvFfjZjs7jnq4URbl-hOUM~aiW88uwPu8CN74Kp2t4aSBb9NfvsHz~ZNt~qoT92vYShkHRwRF6WZymvjZIN-XM17vpZJbrl7ZuMQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: false,
    name: 'Альберт Эйнштейн',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 5,
    avatar:
        'https://s3-alpha-sig.figma.com/img/2f24/2982/34cabb3717c5215bd2c39c04a1c597bd?Expires=1621814400&Signature=X46GELh9JfcH8YpkpyUzpJe4go6ky9pQ-DsHerBsTdaj-6-6TE0hT2OMKuD7QeaWL35rmSOexHP0bAGd5Sei8AHm4lYhPSTlTRvEJItpiVxxqJU7iwzzlRRzIDM9GutmH-Y6sFxQr-uHbirJxG7Eis0HLhdsjxJH36Z07Cc64~xKS3QX3t0Wdo8Ccl6jnP5p1VUONQLF8kKpio9a72dnT-SJepjUpOKF5GQWsVK~Z9-9m34f0MFPf4tgNkwKPg4rifM2-Vq2SpONLKFWBy816zfQzKn8p3t8K3Pw9VJvp7g62m0lwmRp9y64uL5VnH2KF1fCHKg2glwrk6zssEg3MQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: false,
    name: 'Алан Райлс',
    gender: 'Мужской',
    kind: 'Человек',
  ),
];

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
        'https://s3-alpha-sig.figma.com/img/b86d/7059/b695d8bbb483cac677dfbff28a6b3f98?Expires=1623024000&Signature=XKO7ZmV5Gs6ko9bPPpjUdu985kEHNAicB0DzF1qzQjjp0Au9txt8Vlskw41ksyObo1G-jC57ttY14sidqpCJOyc9V1D-2X4uHLipuZfYrn3z12VBFc9Za8AQU3MM9NW5-g7-Dv78hGWvT2NhSs1Tip55zkUb2rc5UqR7VCd5tI0OEGQZwsfSXYCexpQnug9gZXILkvEzyig5hS2nRDmxd3xviIWBBx5Q6oYzDstC48WZk8aDtVaUFp9HmiYhsKt-DY5GJTKkcSzvcXXNPtDkj1abNLmVCI~vr1EOd4A1WEC5-gLsInixoOWSyAaGBDo0QHPa2I8j~FkjpIbN88PJVg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Рик Cанчез',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 1,
    avatar:
        'https://s3-alpha-sig.figma.com/img/19ac/7d55/ec70f5f8e518adc8d2983ecdd8edbaff?Expires=1623024000&Signature=GCcbBfmY-6Qr9iiBRUIw8aIC2fI3HveDgvl5LCQanPWpbGu3~~uGOa9Zpogto0W4VJ7HGPBpTWk9oNauyvFD7y1Ee7eRhJ5r2D06sh9Puv4zJjxAy1AWsu1wV09txf8uf1rD0qmp9QMZtLal9Axn4ZeGb91sJcp5XQbnpWJdYCZpfgKOysqcf9e6WK6fQIcF9zBm2A01xs98mCqG4zQ3Sl6FXeOKXDM~qUiU0C2pEvqdNuxeoLxUdE5yDGunQG-2n20iCGVithUqcTWtc29GRbLqIppMpijnn1iCxHbqLt8SqELj2qbk63-NYkyhX3XEu2Pi1po5XUPgFuoMRRSf~w__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Директор Агентства',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 2,
    avatar:
        'https://s3-alpha-sig.figma.com/img/68d8/7089/d36f153442643543e91adfb999cbcc8f?Expires=1623024000&Signature=dFC7qG3Wd2kJVejG2WzVhvxqFuNyCG5lc97B4XEivXI~YiiAgS2gCW~8uUUt8iFl~TZWtux9ZNXsAakkw3xYu8tHaa59U0NHa0og1vXCJPkQEfqALn9Hd9adshVmt0WF9ALcSLiPbxO9t4IFym4yvmth71OsSEYWxlh0KMlxc7O52FVmqRMXy-VKAfWWDn2KGXBsBo7B53gRWJ7DNPmE4V6CdGt7zElQbml4dSVna2Okz8S~EGzALYFOTAdgHuE3hHnaJTSTAEaB6POgskjNQiTPEIbMNilyksnwXo03hxspWZYtGfGkRZs~4VdfeiJQAZOZ1TcEmwdJy8lDjRasIQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Морти Смит',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 3,
    avatar:
        'https://s3-alpha-sig.figma.com/img/4df4/871b/3ffff7a6c551edf443d0c1a6901e2d84?Expires=1623024000&Signature=EQ4s3tP92S0rXVcpy8pbAt0qYRDLgiH7L9ITMSU36N-jO1-w4-PqQzA7zKBbw6noBhpPMuHvCwkHPEr8aDQZ3N40oK0PjtCortKLOQenI0ryDal7hGygHc0gHBdOvY8q9yoQ3yW209KlyzN2d8UerSGnxjGWZx9~6wtx-6T1GGn9uhUW0h-ZnadBi9Pa0ZNUKfmcVZKdPzJ2jS2H25aTha5sCi2gUSCk9Ac6rEtI9vv0nlt4UbDu9WKsUp709hwIpxSaIALl86RCk-Q41cEogosOy5pEVXjXWItNHaQqZj7h0LIH5Ii2oY5sZuN0eN9d1~YQCi4~jm~tLzp6z57T3A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: true,
    name: 'Саммер Смит',
    gender: 'Женский',
    kind: 'Человек',
  ),
  ViewModel(
    id: 4,
    avatar:
        'https://s3-alpha-sig.figma.com/img/5231/5420/d3cab7e26baca69cfedf6be5d1cbe6a8?Expires=1623024000&Signature=ctwoR~cYx5KUdkuv1Hobh8XmCGBthEq737nebWutTfgCW4v89vtz89czmvTjum~nUKjL6gFGm1TovT~3C5oYD~mD9Fjb976tZO~5U0wBxodZqF1oC-35gp2EmI-Ap~nf68RC2z27qByrlhn1KLYIEcBqxZIqO93lL4dEN4URiyENT3j2SeGIfQ70FqzQhXgE6w5QySCL4l7oh2Q24g4qQBNTs3nOwLyErdVlaxCG7wHLgvs66mQeKlRDt8232IufvVbSaCS1L6LH4I3qlMj6gxbfEdLf~FTq0ajg4Bn34fL5b41dKrBe02Csz4~~DIefZbNKj-wgw3lqlsutmNz25Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: false,
    name: 'Альберт Эйнштейн',
    gender: 'Мужской',
    kind: 'Человек',
  ),
  ViewModel(
    id: 5,
    avatar:
        'https://s3-alpha-sig.figma.com/img/2f24/2982/34cabb3717c5215bd2c39c04a1c597bd?Expires=1623024000&Signature=GSs~huFz5FKcngiHa27uy740iBvZrC0aTfO94Xm~F9ohl5MWq58WRZD-ipQXueFMlLqMkIqqV5yoMSxe-DwfQFjKSmIGwga7RrVjqtIRYZq8S1OCGJIf0ufnzMTPuuoa2ANhJNeDp0AOfwu5iDTBOFE1xwI1wTqeZQruDjTHD48yQCiUtZ8BIMWsrxmWyebMdxap014~X84LqhWvlKL~iNnhprgxruTS0LS7f7aNWjZs~IRhF7onWAG~eJ92q2cAbBg6pN3AqqoeyrUozvIccwH6xaxsuT8LsRXKTjKt-T~ZVjA4G4P4ZWN3s1bMZL~J8AUrlINd7z3V4bm9-7rJpQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA',
    isAlive: false,
    name: 'Алан Райлс',
    gender: 'Мужской',
    kind: 'Человек',
  ),
];

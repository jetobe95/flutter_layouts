import 'package:flight_tickets/models/cover_model.dart';

class CoverData {
  List<CoverModel> get recents {
    return [
      CoverModel(title: 'Éxitos Colombia',image: 'https://i.scdn.co/image/ab67706f0000000215e9b174b92f5b6734a9295c'),
      CoverModel(title: 'Jeff',image: 'https://mosaic.scdn.co/640/ab67616d0000b2731b8b8c7b82691520f5d45b06ab67616d0000b27339b640c9186e9fce4f976959ab67616d0000b273471e61fff804961f9679e087ab67616d0000b273dae0228ed6eb20b9cd42ef87'),
      CoverModel(title: 'Los 2000 Colombia',image: 'https://pl.scdn.co/images/pl/default/a952414a7e8d27a56fb35bfc40eae6ff4af1bb04'),
    ];
  }
  List<CoverModel> get mostListen {
    return [
      CoverModel(title: 'Jeff',image: 'https://mosaic.scdn.co/640/ab67616d0000b2731b8b8c7b82691520f5d45b06ab67616d0000b27339b640c9186e9fce4f976959ab67616d0000b273471e61fff804961f9679e087ab67616d0000b273dae0228ed6eb20b9cd42ef87'),
      CoverModel(title: 'Peaceful Meditation',subtitle: 'Dreamscaper, Gavin',image: 'https://pl.scdn.co/images/pl/default/a2563c96f096745764ac114485210cef55f8a734'),
      CoverModel(title: 'Los 2000 Colombia',image: 'https://pl.scdn.co/images/pl/default/a952414a7e8d27a56fb35bfc40eae6ff4af1bb04'),
    ];
  }
}
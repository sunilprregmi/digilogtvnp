enum Source { iptv, youtube }

class Channel {
  Channel(
      {required this.channelName,
      required this.link,
      required this.source,
      required this.contactpage});

  String channelName;
  String link;
  Source source;
  String contactpage;

  String getChannelName() {
    return channelName;
  }
}

class Channels {
  List<Channel> getMatchingChannels(List<String> channelNames) {
    List<Channel> matchingChannels = [];

    for (Channel channel in channelList) {
      if (channelNames.contains(channel.channelName)) {
        matchingChannels.add(channel);
      }
    }

    return matchingChannels;
  }

  int getIndexByChannelName(String channelName) {
    for (int i = 0; i < channelList.length; i++) {
      if (channelList[i].channelName == channelName) {
        return i;
      }
    }
    return -1;
  }

  List<Channel> channelList = [
    Channel(
      channelName: "NTV National",
      link: "https://neptv.guruusr.workers.dev/ntv/ntv/playlist.m3u8",
      source: Source.iptv,
      contactpage: "NTV National .",
    ),
    Channel(
      channelName: "NTV Plus",
      link: "https://neptv.guruusr.workers.dev/ntv/ntv-plus/playlist.m3u8",
      source: Source.iptv,
      contactpage: "NTV Plus .",
    ),
    Channel(
      channelName: "NTV News",
      link: "https://neptv.guruusr.workers.dev/ntv/ntv-news/playlist.m3u8",
      source: Source.iptv,
      contactpage: "NTV News .",
    ),
    Channel(
      channelName: "NTV Kohalpur",
      link: "https://neptv.guruusr.workers.dev/ntv/ntv-kohalpur/playlist.m3u8",
      source: Source.iptv,
      contactpage: "NTV Kohalpur .",
    ),
    Channel(
      channelName: "NTV Itahari",
      link: "https://neptv.guruusr.workers.dev/ntv/ntv-itahari/playlist.m3u8",
      source: Source.iptv,
      contactpage: "NTV Itahari .",
    ),
    Channel(
      channelName: "ABC News",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/abc-news-nepal/playlist.m3u8",
      source: Source.iptv,
      contactpage: "ABC News .",
    ),
    Channel(
      channelName: "TV Today HD",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/tv-today-hd/playlist.m3u8",
      source: Source.iptv,
      contactpage: "TV Today HD .",
    ),
    Channel(
      channelName: "TV One HD",
      link: "https://neptv.guruusr.workers.dev/tvtoday/tv-one-hd/playlist.m3u8",
      source: Source.iptv,
      contactpage: "TV One HD .",
    ),
    Channel(
      channelName: "TV World HD",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/tv-world-hd/playlist.m3u8",
      source: Source.iptv,
      contactpage: "TV World HD .",
    ),
    Channel(
      channelName: "Krishi TV",
      link: "https://neptv.guruusr.workers.dev/tvtoday/krishi-tv/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Krishi TV .",
    ),
    Channel(
      channelName: "Indigenous TV",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/indigenous-tv/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Indigenous TV .",
    ),
    Channel(
      channelName: "TV Filmy",
      link: "https://neptv.guruusr.workers.dev/tvtoday/tv-filmy/playlist.m3u8",
      source: Source.iptv,
      contactpage: "TV Filmy .",
    ),
    Channel(
      channelName: "BTV Business",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/business-tv/playlist.m3u8",
      source: Source.iptv,
      contactpage: "BTV Business .",
    ),
    Channel(
      channelName: "Sagarmatha",
      link:
          "https://neptv.guruusr.workers.dev/tvtoday/sagarmatha-tv/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Sagarmatha .",
    ),
    Channel(
      channelName: "Kantipur HD",
      link:
          "https://neptv.guruusr.workers.dev/kantipur/kantipur-hd/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Kantipur HD .",
    ),
    Channel(
      channelName: "Nepal 1",
      link: "https://neptv.guruusr.workers.dev/yupp/nepal-1/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Nepal 1 .",
    ),
    Channel(
      channelName: "Nepal Mandal",
      link: "http://103.96.246.211:8000/main",
      source: Source.iptv,
      contactpage: "Nepal Mandal .",
    ),
    Channel(
      channelName: "Mithila TV UHD",
      link: "http://150.107.205.212:1935/live/mithila/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Mithila TV UHD .",
    ),
    Channel(
      channelName: "Capital TV HD",
      link: "https://streaming.tvnepal.com:19360/capitaltv/capitaltv.m3u8",
      source: Source.iptv,
      contactpage: "Capital TV HD .",
    ),
    Channel(
      channelName: "Himalaya HD",
      link:
          "http://103.213.31.243:8081/livepull/ottHIMALAYA480.stream/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Himalaya HD .",
    ),
    Channel(
      channelName: "Bodhi TV",
      link:
          "https://webtv-stream.nettv.com.np/broadcaster/Bodhi450.stream/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Bodhi TV .",
    ),
    Channel(
      channelName: "Paryawaran TV",
      link:
          "https://webtv-stream.nettv.com.np:443/broadcaster/Paryawaran.stream/playlist.m3u8",
      source: Source.iptv,
      contactpage: "Paryawaran TV .",
    ),
    Channel(
      channelName: "Divyadarshan TV",
      link:
          "http://live.divyadarshantv.com/hls/stream.m3u8",
      source: Source.iptv,
      contactpage: "Divyadarshan TV .",
    ),
  ];
}

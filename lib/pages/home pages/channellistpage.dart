import 'package:flutter/material.dart';

import 'package:digilogtv/services/storage.dart';
import 'package:digilogtv/services/formatting.dart';
import 'package:digilogtv/services/channels.dart';
import 'package:digilogtv/services/routing.dart';

class ChannelListPage extends StatefulWidget {
  const ChannelListPage({
    super.key,
    required this.storage,
    required this.formattingProvider,
  });

  final StorageProvider storage;
  final FormattingProvider formattingProvider;

  @override
  State<ChannelListPage> createState() => _ChannelListPageState();
}

class _ChannelListPageState extends State<ChannelListPage> {
  _ChannelListPageState();

  late StorageProvider storage;
  late FormattingProvider formattingProvider;

  _favoriteIcon(String channelName) {
    if (!storage.favoritedChannels.contains(channelName)) {
      return Icon(
        Icons.star_border,
        color: Colors.indigo[900],
      );
    } else {
      return Icon(
        Icons.star,
        color: Colors.indigo[900],
      );
    }
  }

  _favoriteChange(int index) async {
    if (storage.favoritedChannels
        .contains(storage.channels.channelList[index].channelName)) {
      setState(() {
        storage.favoritedChannels
            .remove(storage.channels.channelList[index].channelName);
      });
    } else {
      setState(() {
        storage.favoritedChannels
            .add(storage.channels.channelList[index].channelName);
      });
    }
    await storage.saveChanges();
  }

  _goToChannel(int index) {
    if (storage.channels.channelList[index].source == Source.iptv) {
      goToChannelPageIPTV(context: context, index: index, storage: storage);
    } else {
      goToChannelPageYouTube(context: context, index: index, storage: storage);
    }
  }

  @override
  void initState() {
    super.initState();
    storage = widget.storage;
    formattingProvider = widget.formattingProvider;
  }

  @override
  void dispose() async {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: storage.channels.channelList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(3.0),
                child: GestureDetector(
                  onTap: () => _goToChannel(index),
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 9.0),
                          child: formattingProvider.formatIcon(
                              storage.channels.channelList[index].source),
                        ),
                        Expanded(
                          child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 9.0),
                              child: Text(
                                storage.channels.channelList[index].channelName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15.0),
                              )),
                        ),
                        GestureDetector(
                          onTap: () => _favoriteChange(index),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 9.0),
                            child: _favoriteIcon(storage
                                .channels.channelList[index].channelName),
                          ),
                        ),
                      ],
                    ),
                  )),
                ),
              );
            }),
      ],
    ));
  }
}

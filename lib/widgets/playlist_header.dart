import 'package:flutter/material.dart';
import 'package:spotify_clone/data/data.dart';

class PlaylistHeader extends StatelessWidget {
  final Playlist playlist;

  const PlaylistHeader({
    Key? key,
    required this.playlist,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              playlist.imageURL,
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PLAYLIST',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall!
                        .copyWith(fontSize: 12.0, color: Colors.white),
                  ),
                  const SizedBox(height: 12.0),
                  Text(playlist.name,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: Colors.white)),
                  const SizedBox(height: 16.0),
                  Text(
                    playlist.description,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Created by ${playlist.creator} 🔸 ${playlist.songs.length} songs, ${playlist.duration}',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 20.0),
        _PlaylistButtons(followers: playlist.followers),
      ],
    );
  }
}

class _PlaylistButtons extends StatelessWidget {
  final String followers;

  const _PlaylistButtons({
    Key? key,
    required this.followers,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).iconTheme.color,
          padding: const EdgeInsets.symmetric(
            vertical: 20.0,
            horizontal: 48.0,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: Theme.of(context).colorScheme.secondary,
          textStyle: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(fontSize: 12.0, letterSpacing: 2.0),
        ),
        onPressed: () {},
        child: const Text('PLAY'),
      ),
      const SizedBox(width: 8.0),
      IconButton(
        icon: const Icon(Icons.favorite_border),
        iconSize: 30.0,
        onPressed: () {},
      ),
      IconButton(
        icon: const Icon(Icons.more_horiz),
        iconSize: 30.0,
        onPressed: () {},
      ),
      const Spacer(),
      Text(
        'FOLLOWERS\n $followers',
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              fontSize: 12.0,
              color: Colors.white,
            ),
        textAlign: TextAlign.right,
      )
    ]);
  }
}

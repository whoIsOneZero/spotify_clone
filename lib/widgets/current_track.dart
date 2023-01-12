import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spotify_clone/models/current_track_model.dart';

class CurrentTrack extends StatelessWidget {
  const CurrentTrack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      width: double.infinity,
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            const _TrackInfo(),
            const Spacer(),
            const _PlayerControls(),
            const Spacer(),
            if (MediaQuery.of(context).size.width > 800) _MoreControls(),

            ///Makes the app responsive by preventing Render Overflow errors
          ],
        ),
      ),
    );
  }
}

class _TrackInfo extends StatelessWidget {
  const _TrackInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;
    if (selected == null) return const SizedBox.shrink();
    return Row(
      children: [
        Image.asset(
          'assets/the_hill_cover.jpg',
          height: 60.0,
          width: 60.0,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12.0),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              selected.title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 4.0),
            Text(
              selected.artist,
              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: Colors.grey[300],
                    fontSize: 12.0,
                  ),
            ),
          ],
        ),
        const SizedBox(width: 12.0),
        IconButton(
          icon: const Icon(Icons.favorite_border),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _PlayerControls extends StatelessWidget {
  const _PlayerControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selected = context.watch<CurrentTrackModel>().selected;

    return Column(
      children: [
        Row(
          children: [
            IconButton(
              padding: const EdgeInsets.only(),
              icon: const Icon(Icons.shuffle),
              iconSize: 20.0,
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              icon: const Icon(Icons.skip_previous_outlined),
              iconSize: 20.0,
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              icon: const Icon(Icons.play_circle_outlined),
              iconSize: 34.0,
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              icon: const Icon(Icons.skip_next_outlined),
              iconSize: 20.0,
              onPressed: () {},
            ),
            IconButton(
              padding: const EdgeInsets.only(),
              icon: const Icon(Icons.repeat),
              iconSize: 20.0,
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 4.0),
        Row(
          children: [
            Text('0:00',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Colors.grey)),
            const SizedBox(width: 8.0),
            Container(
              height: 5.0,
              width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(2.5),
              ),
            ),
            const SizedBox(width: 8.0),
            Text(
              selected?.duration ?? '0:00',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}

class _MoreControls extends StatelessWidget {
  const _MoreControls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.devices_outlined),
          iconSize: 20.0,
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(Icons.volume_up_outlined),
              onPressed: () {},
            ),
            Container(
              height: 5.0,
              width: 70.0,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(
                  2.5,
                ),
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.fullscreen_outlined),
          onPressed: () {},
        ),
      ],
    );
  }
}

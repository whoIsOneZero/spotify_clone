const yourLibrary = [
  'Made For You',
  'Recently Played',
  'Liked Songs',
  'Albums',
  'Artists',
  'Podcasts',
];

const playlists = [
  'Today\'s Top Hits',
  'Discover Weekly',
  'Release Radar',
  'Chill',
  'Background',
  'Lofi hip hop music - beats to relax/study to',
  'Vibes Right Now',
  'Time Capsule',
  'On Repeat',
  'Summer Rewind',
  'Dank Doggo Tunes',
  'Sleepy Doge',
];

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String duration;

  const Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.duration,
  });
}

const _lofihiphopMusic = [
  Song(
    id: '0',
    title: 'Here For You',
    artist: 'Travis Greene',
    album: '1AM Study Session',
    duration: '7:17',
  ),
  Song(
    id: '1',
    title: 'Gave It All',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:10',
  ),
  Song(
    id: '2',
    title: 'Intentional',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:09',
  ),
  Song(
    id: '3',
    title: 'You Got Up',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:42',
  ),
  Song(
    id: '4',
    title: 'Made A Way',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '9:51',
  ),
  Song(
    id: '5',
    title: 'Thank You For Being God',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:16',
  ),
  Song(
    id: '6',
    title: 'Who You Were',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:13',
  ),
  Song(
    id: '7',
    title: 'The Hill',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '10:46',
  ),
  Song(
    id: '8',
    title: 'You Keep Me (feat. KJ Scriven & Laura Wilson)',
    artist: 'Travis Greene, KJ Scriven, Laura Wilson',
    album: 'The Hill',
    duration: '5:17',
  ),
  Song(
    id: '9',
    title: 'Just Want You (feat. Jordan Connell & Chandler Moore)',
    artist: 'Travis Greene, Jordan Connell, Chandler Moore',
    album: 'The Hill',
    duration: '6:08',
  ),
  Song(
    id: '10',
    title: 'Soul Will Sing',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '4:14',
  ),
  Song(
    id: '11',
    title: 'Love Me Too Much',
    artist: 'Travis Greene',
    album: 'The Hill',
    duration: '5:46',
  ),
];

class Playlist {
  final String id;
  final String name;
  final String imageURL;
  final String description;
  final String creator;
  final String duration;
  final String followers;
  final List<Song> songs;

  const Playlist({
    required this.duration,
    required this.creator,
    required this.description,
    required this.followers,
    required this.id,
    required this.imageURL,
    required this.name,
    required this.songs,
  });
}

const lofihiphopPlaylist = Playlist(
  duration: '1hr 15min',
  creator: 'Travis Greene',
  description:
      'The Hill is the second studio album from gospel singer Travis Greene, released on October 30, 2015.',
  followers: '5,351,685',
  id: '5-playlist',
  imageURL: 'assets/the_hill_cover.jpg',
  name: 'The Hill',
  songs: _lofihiphopMusic,
);

# Audio Streaming Feature

This document describes the audio streaming feature implementation for the Ekofy Mobile app.

## Overview

The audio streaming feature allows users to play tracks with HLS (HTTP Live Streaming) support, complete with:

- Token-based authentication for secure streaming
- Automatic token refresh on expiration
- Play/pause controls
- Progress bar with seek functionality
- Shuffle and repeat modes
- Real-time position and duration tracking

## Architecture

### Components

1. **StreamingApi** (`lib/features/track/data/datasource/streaming_api.dart`)

   - Manages streaming tokens and URLs
   - Handles token signing and refreshing
   - Implements caching and cooldown mechanisms
   - Based on the TypeScript streaming-services.ts pattern

2. **AudioPlayerService** (`lib/features/track/data/datasource/audio_player_service.dart`)

   - Wraps just_audio player functionality
   - Manages playback state
   - Handles track loading and streaming
   - Provides reactive streams for UI updates

3. **Providers** (`lib/features/track/presentation/providers/track_providers.dart`)

   - `streamingApiProvider`: Provides StreamingApi instance
   - `audioPlayerServiceProvider`: Provides AudioPlayerService instance
   - `currentTrackProvider`: Tracks currently playing track
   - `positionStreamProvider`: Streams current playback position
   - `durationStreamProvider`: Streams track duration
   - `playingStreamProvider`: Streams play/pause state
   - `loopModeStreamProvider`: Streams repeat mode state
   - `shuffleModeStreamProvider`: Streams shuffle mode state

4. **UI Widgets**
   - `AudioPlayerControls`: Play/pause, skip, shuffle, and repeat controls
   - `AudioProgressBar`: Progress slider with time display
   - `TrackDetailScreen`: Integrated player UI

## Usage

### Playing a Track

```dart
// In a ConsumerWidget
final service = ref.read(audioPlayerServiceProvider);
await service.playTrack(trackModel);
```

### Controlling Playback

```dart
// Play/Pause
if (service.isPlaying) {
  await service.pause();
} else {
  await service.play();
}

// Seek
await service.seek(Duration(seconds: 30));

// Volume (0.0 to 1.0)
await service.setVolume(0.8);

// Speed
await service.setSpeed(1.5);

// Shuffle
await service.toggleShuffleMode();

// Repeat
await service.toggleLoopMode();
```

### Listening to Player State

```dart
// Using providers in a ConsumerWidget
final position = ref.watch(positionStreamProvider);
final duration = ref.watch(durationStreamProvider);
final isPlaying = ref.watch(playingStreamProvider);

// Access the data
position.when(
  data: (pos) => Text('Position: ${AudioPlayerService.formatDuration(pos)}'),
  loading: () => Image.asset(AppImages.loader, gaplessPlayback: true),
  error: (e, _) => Text('Error: $e'),
);
```

## Configuration

The feature requires the `BACKEND_URL` environment variable to be set in the `.env` file:

```env
BACKEND_URL='https://your-backend-url.com/'
```

## Dependencies

- `just_audio`: ^0.10.5 - Audio playback
- `dio`: ^5.9.0 - HTTP client for API calls
- `flutter_dotenv` - Environment variable management
- `flutter_riverpod`: ^3.0.3 - State management

## API Endpoints

The streaming service communicates with the following backend endpoints:

- `POST /api/media-streaming/signed-token` - Sign a new token for a track
- `POST /api/media-streaming/refresh-signed-url` - Refresh an expired token
- `GET /api/media-streaming/cloudfront/{trackId}/master.m3u8?token={token}` - Stream the track

## Token Management

The streaming API implements sophisticated token management:

1. **Token Caching**: Tokens are cached per track to avoid unnecessary API calls
2. **Automatic Refresh**: When a 401 error occurs, the token is automatically refreshed
3. **Cooldown Period**: 5-second cooldown between refresh attempts prevents rapid retries
4. **Promise Memoization**: Prevents multiple simultaneous refresh requests for the same track

## Error Handling

The service includes comprehensive error handling:

- Network errors are caught and logged
- 401/403 errors trigger automatic token refresh
- Failed refreshes fall back to requesting a new token
- User-friendly error messages are shown via SnackBar

## Future Enhancements

Potential improvements for the streaming feature:

1. **Playlist Support**: Queue multiple tracks
2. **Background Playback**: Continue playing when app is minimized
3. **Download for Offline**: Cache tracks locally
4. **Audio Quality Selection**: Let users choose streaming quality
5. **Gapless Playback**: Seamless transitions between tracks
6. **Lyrics Display**: Show synchronized lyrics
7. **Audio Visualization**: Waveform or spectrum analyzer
8. **Crossfade**: Smooth transitions between tracks

## Troubleshooting

### Common Issues

1. **Token Expiration**: If you see 401 errors, ensure the token refresh endpoint is working
2. **Stream Not Loading**: Check that the BACKEND_URL is correctly set in .env
3. **Playback Stuttering**: May indicate network issues or server load

### Debug Mode

Enable debug logging by checking the console output. The services print detailed logs:

```dart
print('Loading track: ${track.name}');
print('Stream URL: $streamUrl');
```

## Testing

To test the audio streaming feature:

1. Navigate to a track detail screen
2. Tap the play button
3. Verify the progress bar updates
4. Test pause/resume functionality
5. Test seek by dragging the progress slider
6. Test shuffle and repeat toggles

## License

This implementation follows the same license as the Ekofy Mobile project.

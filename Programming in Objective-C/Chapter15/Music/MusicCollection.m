// Implementation file for MusicCollection
#import "MusicCollection.h"

@implementation MusicCollection

@synthesize masterCollection, masterCollectionName;

- (void) description
{
    NSLog(@"Playlist count: %lu", [self numOfPlaylists]);
    NSLog(@"Song count: %lu", [self songCount]);
}

- (id) init
{
    self = [super init];
    masterCollectionName = [NSMutableString
        stringWithString: @"library"];

    if (self) {
        masterCollection = [NSMutableArray array];
        Playlist *mainPlaylist = [[Playlist alloc] initWithName:
            masterCollectionName];
        [masterCollection addObject: mainPlaylist];
    }

    return self;
}

- (id) initWithLibrary: (Playlist *) library
{
    self = [super init];

    if (self) {
        masterCollection = [NSMutableArray array];
        masterCollectionName = [NSMutableString
        stringWithString: [library playlistName]];

        [masterCollection addObject: library];
    }

    return self;
}

- (void) addPlaylist: (Playlist *) thePlaylist
{
    [masterCollection addObject: thePlaylist];
}

- (BOOL) removePlaylist: (Playlist *) thePlaylist
{
    if ([masterCollection containsObject: thePlaylist] == YES) {
        [masterCollection removeObjectIdenticalTo: thePlaylist];
        return YES;
    }
    else
        return NO;
}

- (BOOL) addSong: (Song *) theSong
{
    for (Playlist *theList in masterCollection) {
        if ([[theList playlistName] isEqualToString: @"library"]) {
            if ([theList searchPlaylist: [theSong title]] == nil) {
                [theList addSong: theSong];
                return YES;
            }
            // Duplicate entry
            else
                return NO;
        }
    }
    return NO;
}

- (BOOL) addSong: (Song *) theSong toPlaylist: (NSString *) theName
{
    for (Playlist *theList in masterCollection) {
        if ([[theList playlistName] isEqualToString: theName]) {
            if ([theList searchPlaylist: [theSong title]] == nil) {
                [theList addSong: theSong];
                return YES;
            }
            else
                return NO;
        }
        // If the search cannot find a playlist with that name
        else
            return NO;
    }
    return NO;
}

- (BOOL) removeSong: (Song *) theSong
{
    NSUInteger count = 0;
    // Remove the song in every playlist including the library.
    for (Playlist *aList in masterCollection) {
        ++count;
        if ([aList removeSong: [theSong title]] == YES &&
            count == [masterCollection count]) {
            return YES;
        }
    }

    // Didn't find the Song in any playlist.
    return NO;
}

- (BOOL) removeSong: (NSString *) theSongName fromPlaylist: (Playlist *) theList
{
    for (Playlist *aPlaylist in masterCollection) {
        if ([[aPlaylist playlistName] isEqualToString: [theList playlistName]]) {
            if ([aPlaylist removeSong: theSongName] == YES)
                return YES;
        }
    }

    // If the Song does not exist in the playlist
    return NO;
}

- (Song *) searchForSong: (NSString *) theSong inPlaylist: (NSString *) theList
{
    for (Playlist* nextList in masterCollection) {
        if ([[nextList playlistName] isEqualToString: theList]) {
            Song *aSong = [nextList searchPlaylist: theSong];
            if (aSong != nil) {
                return aSong;
            }
            else
                return nil;
        }
    }
    return nil;
}

- (Song *) searchForSong: (NSString *) searchTerm
{
    for (Playlist *aPlaylist in masterCollection) {
        if ([[aPlaylist playlistName] isEqualToString: @"library"]) {
            Song *theSong = ([aPlaylist searchPlaylist: searchTerm]);
            if (theSong != nil)
                return theSong;
        }
    }
    return nil;
}

- (Playlist *) searchForPlayList: (NSString *) searchTerm
{
    for (Playlist *aPlaylist in masterCollection) {
        if ([aPlaylist playlistName] == searchTerm) {
            return aPlaylist;
        }
    }

    return nil;
}

- (NSUInteger) numOfPlaylists
{
    // Don't count the main library playlist as a playlist
    return [masterCollection count] - 1;
}

- (NSUInteger) songCount
{
    NSUInteger count = 0;
    for (Playlist *aList in masterCollection) {
        if ([[aList playlistName] isEqualToString: @"library"])
            count += [aList numOfSongs];
    }

    return count;
}

- (void) printMusicCollection
{
    for (Playlist *aPlaylist in masterCollection) {
        if ([[aPlaylist playlistName] isEqualToString: @"library"]) {
            NSLog(@"Songs in the %@ playlist: ", [aPlaylist playlistName]);
            [aPlaylist printPlayList];
        }
    }
}

@end

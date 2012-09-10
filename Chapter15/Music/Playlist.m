// Implementation file for the Playlist class.
// Chapter 15 exercise 9
#import "Playlist.h"
#define trim(str) [str stringByTrimmingCharactersInSet: \
    [NSCharacterSet whitespaceCharacterSet]]

@implementation Playlist

@synthesize playlist, playlistName;

- (void) description
{
    NSLog(@"Playlist: %@", playlistName);
    NSLog(@"Songs contained: ");
    int i = 0;
    for(Song *song in playlist) {
        NSLog(@"Song #%i: %@ by %@", i + 1, [song title], [song artist]);
        ++i;
    }
}

- (id) initWithName: (NSMutableString *) theName
{
    self = [super init];
    if (theName == nil || [trim(theName) length] == 0)
        theName = [NSMutableString stringWithString: @"NoName"];
    if (self) {
        self.playlistName = [NSMutableString stringWithString: theName];
    }

    return self;
}

- (id) initWithASong: (Song *) theSong andName: (NSMutableString *) theName
{
    self = [super init];
    if (self) {
        self.playlistName = [NSMutableString stringWithString: theName];
        [self addSong: theSong toPlayList: [self playlistName]];
    }

    return self;
}

- (BOOL) changePlaylistName: (NSMutableString *) theName
{
    if ([theName isEqualToString: @"library"] || theName == nil ||
        [trim(theName) length] == 0)
        return NO;
    else {
        self.playlistName = [NSMutableString stringWithString: theName];
        return YES;
    }
}

- (void) addSong: (Song *) theSong
{
    [playlist addObject: theSong];
}

- (BOOL) removeSong: (Song *) theSong
{
    if ([self searchPlaylist: [theSong title]] != NO) {
        [playlist removeObjectIdenticalTo: theSong];
    }
    else
        return NO;
}

@end

// Implementation file for the Playlist class.
// Chapter 15 exercise 9
#import "Playlist.h"

/* trims all the whitespace from a string*/
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
        [self addSong: theSong];
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
        return YES;
    }
    else
        return NO;
}

- (Song *) searchPlaylist: (NSString *) searchTerm
{
    for (Song *aSong in playlist) {
        NSString *timeString = [NSString stringWithFormat: @"%lu",
            [aSong playingTime]];

        if ([[aSong title] rangeOfString: searchTerm options:
            NSCaseInsensitiveSearch].location != NSNotFound ||
            [[aSong artist] rangeOfString: searchTerm options:
                NSCaseInsensitiveSearch].location != NSNotFound ||
            [[aSong album] rangeOfString: searchTerm options:
                NSCaseInsensitiveSearch].location != NSNotFound ||
            [timeString rangeOfString: searchTerm options:
                NSCaseInsensitiveSearch].location != NSNotFound)
            return aSong;
    }

    return nil;
}

- (BOOL) sortPlaylistBy: (NSString *) method
{
    if ([method caseInsensitiveCompare: @"artist"] == NSOrderedSame  ||
        [method caseInsensitiveCompare: @"time"]   == NSOrderedSame  ||
        [method caseInsensitiveCompare: @"album"]  == NSOrderedSame  ||
        [method caseInsensitiveCompare: @"title"]  == NSOrderedSame) {
        for (Song *aSong in playlist) {
            [playlist sortUsingComparator:
                ^(id obj1, id obj2) {
                    return [obj1 compareTo: obj2 by: method];
                }];
        }
        return YES;
    }
    // method was not understood, so the playlist could not be sorted.
    else
        return NO;
}

- (NSUInteger) numOfSongs
{
    return [playlist count];
}

- (void) printPlayList
{
    for (Song *theSong in playlist) {
        NSLog(@"Title: %@", [theSong description]);
    }
}

@end

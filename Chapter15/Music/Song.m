// Implementation file for the Song class
// Chapter 15 exercise 9
#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;

- (id) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist
    andAlbum:(NSString *) theAlbum  andTime:(NSUInteger) theTime
{
    self = [super init];
    if (self != nil) {
        title = [NSString stringWithString: theTitle];
        artist = [NSString stringWithString: theArtist];
        album = [NSString stringWithString: theAlbum];
        playingTime = theTime;
    }
    return self;
}

- (NSString *) description
{
    NSUInteger seconds = self.playingTime % 60;
    NSUInteger minutes = self.playingTime / 60;
    NSString *fullTime = [NSString stringWithFormat: @"%lu:%lu",
        minutes, seconds];

    return [NSString stringWithFormat:
        @"Title: %@\nArtist: %@\nAlbum: %@\n Playing Time: %@",
            self.title, self.artist, self.album, fullTime];
}

- (BOOL) lookupSong: (NSString *) searchTerm
{
    NSString *timeString = [NSString stringWithFormat: @"%lu", playingTime];

    if ([[self title] rangeOfString: searchTerm options:
            NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self artist] rangeOfString: searchTerm options:
            NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self album] rangeOfString: searchTerm options:
            NSCaseInsensitiveSearch].location != NSNotFound ||
        [timeString rangeOfString: searchTerm].location != NSNotFound)
    {
        return YES;
    }
    else
        return NO;
}

- (void) printSong
{
    NSUInteger seconds = self.playingTime % 60;
    NSUInteger minutes = self.playingTime / 60;
    NSString *fullTime = [NSString stringWithFormat: @"%lu:%lu",
        minutes, seconds];
    NSLog(@"Title: %@\nArtist: %@\nAlbum: %@\n Playing Time: %@",
        title, artist, album, fullTime);
}
@end

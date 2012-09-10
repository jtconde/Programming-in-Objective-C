// Implementation file for the Song class
// Chapter 15 exercise 9
#import "Song.h"

@implementation Song

@synthesize title, artist, album, playingTime;

- (id) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist
    andAlbum: (NSString *) theAlbum andTime: (NSUInteger) theTime
{
    self = [super init];
    if (self) {
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

- (NSComparisonResult) compareTo: (id) aSong by: (NSString *) criteria
{
    if ([criteria caseInsensitiveCompare: @"title"] == NSOrderedSame) {
        return [self title] < [aSong title];
    }
    if ([criteria caseInsensitiveCompare: @"artist"] == NSOrderedSame) {
        return [self artist] < [aSong artist];
    }
    if ([criteria caseInsensitiveCompare: @"time"] == NSOrderedSame) {
        return [self playingTime] < [aSong playingTime];
    }
    if ([criteria caseInsensitiveCompare: @"album"] == NSOrderedSame) {
        return [self album] < [aSong album];
    }

    return NSOrderedDescending;
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

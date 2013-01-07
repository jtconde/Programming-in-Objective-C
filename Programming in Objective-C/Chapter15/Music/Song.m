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
    NSString* fullTime;
    if (seconds < 10) {
        fullTime = [NSString stringWithFormat: @"%lu:0%lu",
            minutes, seconds];
    }
    else {
        fullTime = [NSString stringWithFormat: @"%lu:%lu",
            minutes, seconds];
    }

    return [NSString stringWithFormat:
        @"\n\nTitle: %@\nArtist: %@\nAlbum: %@\nPlaying Time: %@\n\n",
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

- (NSComparisonResult) compareTo: (id) aSong by: (NSString *) method
{
    if ([method caseInsensitiveCompare: @"title"] == NSOrderedSame) {
        return [[self title] compare: [aSong title]];
    }
    if ([method caseInsensitiveCompare: @"artist"] == NSOrderedSame) {
        return [[self artist] compare: [aSong artist]];
    }
    if ([method caseInsensitiveCompare: @"time"] == NSOrderedSame) {
        if ([self playingTime] == [aSong playingTime])
            return NSOrderedSame;
        if ([self playingTime] < [aSong playingTime])
            return NSOrderedAscending;
        else
            return NSOrderedDescending;
    }
    if ([method caseInsensitiveCompare: @"album"] == NSOrderedSame) {
        return [[self album] compare: [aSong album]];
    }

    return NSOrderedDescending;
}

- (void) printSong
{
    NSUInteger seconds = self.playingTime % 60;
    NSUInteger minutes = self.playingTime / 60;
    NSString *fullTime;

    if (seconds < 10) {
        fullTime = [NSString stringWithFormat: @"%lu:0%lu",
            minutes, seconds];
    }
    else {
        fullTime = [NSString stringWithFormat: @"%lu:%lu",
            minutes, seconds];
    }
    NSLog(@"\n\nTitle: %@\nArtist: %@\nAlbum: %@\n Playing Time: %@\n\n",
        title, artist, album, fullTime);
}

@end

// Interface file for the Song object.
// Holds information about a Song
// Chapter 15 exercise 9
#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (copy, nonatomic) NSString *title, *artist, *album;
@property (assign, nonatomic) NSUInteger playingTime; // in seconds

/**
 * Sets all the information about a Song.
 * @param theTitle the title of the Song
 * @param theArtist the artist of the Song. Multiple artists may be
 * separated by a comma
 * @param theAlbum the album that the song can be found in
 * @param theTime the playing time of the song, in seconds.
 * @return the reciever object
 */
- (id) initWithTitle: (NSString *) theTitle andArtist: (NSString *) theArtist
    andAlbum: (NSString *) theAlbum andTime: (NSUInteger) theTime;

/**
 * A description method that outputs a Song's information.
 * @return the description of the song
 */
- (NSString *) description;

/**
 * Finds a song that matches a search term.
 * @param searchTerm the string to search in a song
 * @return YES if a match is found, NO otherwise
 */
- (BOOL) lookupSong: (NSString *) searchTerm;

/**
 * Prints the Song's information.
 */
- (void) printSong;

@end

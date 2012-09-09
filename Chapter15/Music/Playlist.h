// Interface file for a Playlist object.
// Holds information about a collection of Songs. Each playlist
// can be identified by its name.
// Chapter 15 exercise 9
#import "Song.h"

@interface Playlist : NSObject

@property (strong, nonatomic) NSMutableArray *playlist;
@property (copy, nonatomic) NSString *playlistName;

/**
 * Describes a playlist by returning the songs contained in the playlist.
 * @return the description of the playlist
 */
- (NSString *) description;

- (void) initWithSong: (NSString *) theSong;

- (void) addSong: (NSString *) theSong toPlayList: (NSString *) theName;

- (BOOL) removeSong: (NSString *) theSong fromPlayList: (NSString *) theName;

/**
 * Prints all the songs contained in the playlist.
 */
- (void) printPlayList;

@end

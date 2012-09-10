// Interface file for a Playlist object.
// Holds information about a collection of Songs. Each playlist
// can be identified by its name.
// Chapter 15 exercise 9
#import "Song.h"

@interface Playlist : NSObject

@property (strong, nonatomic) NSMutableArray *playlist;
@property (copy, nonatomic) NSMutableString *playlistName;

/**
 * Prints a short description of a playlist including its name
 * and the songs containined in that playlist. Only prints
 * the Song's most basic information, i.e. its title and artist of that Song.
 */
- (void) description;

/**
 * Initializes a playlist with a name with no songs.
 * @return the reciever object
 */
- (id) initWithName: (NSMutableString *) theName;

/**
 * Initializes a playlist with a name and one song.
 * @return the reciever object
 */
- (id) initWithASong: (Song *) theSong andName: (NSMutableString *) theName;

/**
 * Changes a playlist's name to anything other than "library".
 * The name also cannot be empty.
 * @theName the new name of the playlist
 * @return YES if a playlist's name was changed successfully, otherwise NO
 */
- (BOOL) changePlaylistName: (NSString *) theName;

/**
 * Adds a song to the playlist
 * @param theSong the song to add to the playlist
 */
- (void) addSong: (Song *) theSong;

/**
 * Removes a song from a playlist.
 * @param theSong the name of the Song
 * @return YES if the Song was removed from the playlist, otherwise NO
 */
- (BOOL) removeSong: (Song *) theSong;

/**
 * Checks if a specified playlist exists.
 * @param theName the name of the playlist to check
 * @return YES if a playlist exists, NO otherwise
 */
- (BOOL) doesPlaylistExist: (NSString *) theName;

/**
 * Searches the playlist for the search term
 * @param searchTerm the term to search for
 * @return YES if a match is found, NO otherwise
 */
- (BOOL) searchPlaylist: (NSString *) searchTerm;

/**
 * Sorts a playlist according to a specified criteria.
 * @param criteria can be something like "artist", "album", "time" or "title"
 * @return YES if sorting completed successfully, NO otherwise
 */
- (BOOL) sortPlaylistBy: (NSString *) criteria;

/**
 * Prints all the songs contained in a playlist including all their
 * various information like the artist, album and playingTime.
 */
- (void) printPlayList;

@end

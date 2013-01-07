// Interface file for a Playlist object.
// Holds information about a collection of Songs. Each playlist
// can be identified by its name.
// Chapter 15 exercise 9
#import "Song.h"

@interface Playlist : NSObject

@property (copy, nonatomic) NSMutableArray *playlist;
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
- (BOOL) removeSong: (NSString *) theSongName;

/**
 * Searches the playlist for the search term
 * @param searchTerm the term to search for
 * @return the matched Song. If not found, returns nil.
 */
- (Song *) searchPlaylist: (NSString *) searchTerm;

/**
 * Sorts a playlist according to a specified criteria.
 * @param method the method to use to sort. Can be something like "artist",
 * "album", "time" or "title"
 */
- (void) sortPlaylistBy: (NSString *) method;

/**
 * Counts the number of songs that are in the playlist.
 * @return the number of songs in the playlist
 */
- (NSUInteger) numOfSongs;

/**
 * Prints all the songs contained in a playlist including all their
 * various information like the artist, album and playingTime.
 */
- (void) printPlayList;

@end

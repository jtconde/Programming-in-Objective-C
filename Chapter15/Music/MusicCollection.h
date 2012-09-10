// Interface file for MusicCollection class.
// Contains a collection of playlist and a special master playlist
// called library that contains all the songs in the collection.
// Chapter 15 exercise 9
#import "Playlist.h"

@interface MusicCollection : NSObject

@property (strong, nonatomic) NSMutableArray *library;

/**
 * Prints a short description about the MusicCollection including the number
 * of playlists it has and the total number of songs in the library.
 */
- (void *) description;


/**
 * Overrides the default initialize behavior so that the MusicCollection.
 * is initialized always with a library
 */
- (id) init;

/**
 * Starts off the MusicCollection with a library playlist.
 * @param library the library playlist which contains all the songs in the
 * Music Collection
 * @return the initialized object
 */
- (id) initWithLibrary: (Playlist *) library;

/**
 * Adds a playlist to the MusicCollection
 * @param thePlaylist the playlist to add to the MusicCollection
 * @return YES if addition was successful, NO otherwise
 */
- (BOOL) addPlaylist: (Playlist *) thePlaylist;

/**
 * Removed a playlist from the MusicCollection.
 * @param thePlaylist the playlist to remove from the MusicCollection
 * @return YES if removal was successful, NO otherwise
 */
- (BOOL) removePlaylist: (Playlist *) thePlaylist;

/**
 * Adds a song to a MusicCollection's library.
 * @param theSong the Song to add to the library
 * @return YES if addition was successful, NO otherwise
 */
- (BOOL) addSong: (Song *) theSong;

/**
 * Adds a song to the specified playlist
 * @param theSong the song to add to the playlist
 * @param theList the playlist the song should be added to.
 * @return YES if addition was successful NO otherwise
 */
- (BOOL) addSong: (Song *) theSong toPlaylist: (Playlist *) theList;

/**
 * Removes a song from a MusicCollection's library
 * @param theSong the song to remove from the library
 * @return YES if removal was successful NO otherwise
 */
- (BOOL) removeSong: (Song *) theSong;

/**
 * Removes a song from a specified playlist.
 * @param theSong the song to remove from the playlist
 * @param theList the playlist to remove the song from
 * @return YES if removal was successful NO otherwise
 */
- (BOOL) removeSong: (Song *) theSong fromPlaylist: (Playlist *) theList;

/**
 * Searches for a song in the specified playlist
 * @param theSong the Song to search for
 * @param the playlist the search should take place in
 */
- (BOOL) searchForSong: (NSString *) theSong inPlaylist: (NSString *) theList;

/**
 * Searches for theSong in a MusicCollection's library
 * @param searchTerm the song to search for
 */
- (BOOL) searchForSong: (NSString *) searchTerm;

/**
 * Searches for a playlist in a MusicCollection's library.
 * @param searchTerm the playlist to search for
 */
- (BOOL) searchForPlayList: (NSString *) searchTerm;

/**
 * Displays information about the whole music collection
 */
- (void) printMusicCollection;

@end

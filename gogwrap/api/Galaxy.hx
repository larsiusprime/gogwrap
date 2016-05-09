package gogwrap.api;
import cpp.Lib;
import haxe.Int64;
import gogwrap.helpers.Loader;

class Galaxy
{
	/*************PUBLIC***************/
	
	/**
	 * Whether the GOG Galaxy API is initialized or not. If false, all calls will fail
	 */
	public static var active(default, null):Bool = false;
	
	/**
	 * If true, Galaxy was detected but did not initialize properly, and you should restart under Galaxy
	 */
	public static var wantQuit(default, null):Bool = false;
	
	//User-settable callbacks:
	
	public static var whenAchievementStored:String->Void;
	public static var whenLeaderboardScoreDownloaded:LeaderboardScore->Void;
	public static var whenLeaderboardScoreUploaded:LeaderboardScore->Void;
	public static var whenTrace:String->Void;
	
	/**
	 * @param appId_	Your Client ID
	 * @param appId_	Your Client Secret
	 * @param notificationPosition	The position of the Steam Overlay Notification box.
	 */
	public static function init(ClientID:String, ClientSecret:String) {
		#if sys //TODO: figure out what targets this will & won't work with and upate this guard
		if (active) return;
		
		#end
	}
	
	/*************PUBLIC***************/

	
}
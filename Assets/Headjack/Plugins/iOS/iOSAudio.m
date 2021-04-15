#import <AVFoundation/AVFoundation.h>
 
void iOSAudio_setupAudioSession()
{
	// see http://stackoverflow.com/questions/21682502/audiosessionsetproperty-deprecated-in-ios-7-0-so-how-set-kaudiosessionproperty-o
	// and http://forum.unity3d.com/threads/setting-mediaplayback-audio-session-category.206958/
	
	AVAudioSession *session = [AVAudioSession sharedInstance];

	NSError *setCategoryError = nil;
	if (![session setCategory:AVAudioSessionCategoryPlayback
			 withOptions:AVAudioSessionCategoryOptionMixWithOthers
			 error:&setCategoryError] || setCategoryError) {
		// handle error
	}
}
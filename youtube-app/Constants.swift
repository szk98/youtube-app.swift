//
//  Constants.switf.swift
//  youtube-app
//
//  Created by Szikszai Konrád on 2021. 03. 16..
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyAI451DpdksL8Qq9HTHQMYxBMSmsa-uR48"
    static var PLAYLIST_ID = "UU2D6eRvCeMtcF5OGHf1-trw"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
}

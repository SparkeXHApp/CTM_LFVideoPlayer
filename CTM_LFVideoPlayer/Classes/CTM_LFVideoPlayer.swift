//
//  CTM_LFVideoPlayer.swift
//  SparkBase
//
//  Created by sfh on 2024/2/3.
//  Copyright © 2024 Spark. All rights reserved.
//

import CTMediator

public extension CTMediator {
    
    /// 获取视频播放器VC
    @objc func getLFVideoPlayer(param: [String: Any], callback:@escaping(String, String) -> Void) -> UIViewController? {
        var params = param as [AnyHashable: Any]
        params["popblock"] = callback
        params[kCTMediatorParamsKeySwiftTargetModuleName] = "SparkBase"
        
        guard let vc = self.performTarget("LFVideoPlayer", action: "LFVideoPlayerController", params: params, shouldCacheTarget: false) as? UIViewController else { return nil }
        
        return vc
    }
}


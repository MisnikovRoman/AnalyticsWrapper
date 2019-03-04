//
//  AnalyticsWrapper.swift
//  AnalyticsWrapper
//
//  Created by MisnikovRoman on 04/03/2019.
//  Copyright © 2019 MisnikovRoman. All rights reserved.
//

import Foundation

public protocol IFirebaseEventSender {
	static func logEvent(_ name: String, parameters: [String : Any]?)
	static func setScreenName(_ screenName: String?, screenClass: String?)
}

public class AnalyticsWrapper {

	private var type: IFirebaseEventSender.Type?

	public static let shared = AnalyticsWrapper()
	public var isConfigured: Bool { return type != nil }

	private init() {}

	public func configure(type: IFirebaseEventSender.Type) {
		self.type = type
	}

	public func sendEvent(_ name: String) {
		guard isConfigured, let type = type else {
			print("[AnalyticsWrapper] Wrapper is not configured")
			return
		}
		type.logEvent(name, parameters: nil)
		print("[AnalyticsWrapper] Successfully send event \"\(name)\"")
	}

	public func sendScreen(_ name: String) {
		guard isConfigured, let type = type else {
			print("[AnalyticsWrapper] Wrapper is not configured")
			return
		}
		type.setScreenName(name, screenClass: nil)
		print("[AnalyticsWrapper] Successfully send screen \"\(name)\"")
	}
}

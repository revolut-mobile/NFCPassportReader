//
//  FailedToParseDG.swift
//  NFCPassportReader
//
//  Created by Mikhail Krasnenkov on 09/04/2025.
//

@available(iOS 13, macOS 10.15, *)
public class FailedToParseDG: DataGroup {
    override public var datagroupType: DataGroupId { failedToParseDGId }

    var failedToParseDGId: DataGroupId = .Unknown

    public internal(set) var parseError: any Error = NFCPassportReaderError.UnsupportedDataGroup

    required init(_ data: [UInt8]) throws {
        try super.init(data)
    }

    override func parse(_ data: [UInt8]) throws {
        // Don't call super to skip parsing header
    }
}

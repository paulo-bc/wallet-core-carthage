// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: Zilliqa.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

public struct TW_Zilliqa_Proto_Transaction {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var messageOneof: TW_Zilliqa_Proto_Transaction.OneOf_MessageOneof? = nil

  public var transfer: TW_Zilliqa_Proto_Transaction.Transfer {
    get {
      if case .transfer(let v)? = messageOneof {return v}
      return TW_Zilliqa_Proto_Transaction.Transfer()
    }
    set {messageOneof = .transfer(newValue)}
  }

  public var rawTransaction: TW_Zilliqa_Proto_Transaction.Raw {
    get {
      if case .rawTransaction(let v)? = messageOneof {return v}
      return TW_Zilliqa_Proto_Transaction.Raw()
    }
    set {messageOneof = .rawTransaction(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_MessageOneof: Equatable {
    case transfer(TW_Zilliqa_Proto_Transaction.Transfer)
    case rawTransaction(TW_Zilliqa_Proto_Transaction.Raw)

  #if !swift(>=4.1)
    public static func ==(lhs: TW_Zilliqa_Proto_Transaction.OneOf_MessageOneof, rhs: TW_Zilliqa_Proto_Transaction.OneOf_MessageOneof) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.transfer, .transfer): return {
        guard case .transfer(let l) = lhs, case .transfer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.rawTransaction, .rawTransaction): return {
        guard case .rawTransaction(let l) = lhs, case .rawTransaction(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  public struct Transfer {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Amount to send (256-bit number)
    public var amount: Data = Data()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public struct Raw {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    /// Amount to send (256-bit number)
    public var amount: Data = Data()

    /// Smart contract code
    public var code: Data = Data()

    /// String-ified JSON object specifying the transition parameter
    public var data: Data = Data()

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}
  }

  public init() {}
}

/// Input data necessary to create a signed transaction.
public struct TW_Zilliqa_Proto_SigningInput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Transaction version
  public var version: UInt32 = 0

  /// Nonce
  public var nonce: UInt64 = 0

  /// Recipient's address.
  public var to: String = String()

  /// GasPrice (256-bit number)
  public var gasPrice: Data = Data()

  /// GasLimit
  public var gasLimit: UInt64 = 0

  /// Private Key
  public var privateKey: Data = Data()

  public var transaction: TW_Zilliqa_Proto_Transaction {
    get {return _transaction ?? TW_Zilliqa_Proto_Transaction()}
    set {_transaction = newValue}
  }
  /// Returns true if `transaction` has been explicitly set.
  public var hasTransaction: Bool {return self._transaction != nil}
  /// Clears the value of `transaction`. Subsequent reads from it will return its default value.
  public mutating func clearTransaction() {self._transaction = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  fileprivate var _transaction: TW_Zilliqa_Proto_Transaction? = nil
}

/// Transaction signing output.
public struct TW_Zilliqa_Proto_SigningOutput {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Signed signature bytes.
  public var signature: Data = Data()

  /// JSON transaction with signature
  public var json: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "TW.Zilliqa.Proto"

extension TW_Zilliqa_Proto_Transaction: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".Transaction"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "transfer"),
    2: .standard(proto: "raw_transaction"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: TW_Zilliqa_Proto_Transaction.Transfer?
        if let current = self.messageOneof {
          try decoder.handleConflictingOneOf()
          if case .transfer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messageOneof = .transfer(v)}
      }()
      case 2: try {
        var v: TW_Zilliqa_Proto_Transaction.Raw?
        if let current = self.messageOneof {
          try decoder.handleConflictingOneOf()
          if case .rawTransaction(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.messageOneof = .rawTransaction(v)}
      }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.messageOneof {
    case .transfer?: try {
      guard case .transfer(let v)? = self.messageOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .rawTransaction?: try {
      guard case .rawTransaction(let v)? = self.messageOneof else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Zilliqa_Proto_Transaction, rhs: TW_Zilliqa_Proto_Transaction) -> Bool {
    if lhs.messageOneof != rhs.messageOneof {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Zilliqa_Proto_Transaction.Transfer: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = TW_Zilliqa_Proto_Transaction.protoMessageName + ".Transfer"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.amount) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.amount.isEmpty {
      try visitor.visitSingularBytesField(value: self.amount, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Zilliqa_Proto_Transaction.Transfer, rhs: TW_Zilliqa_Proto_Transaction.Transfer) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Zilliqa_Proto_Transaction.Raw: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = TW_Zilliqa_Proto_Transaction.protoMessageName + ".Raw"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "amount"),
    2: .same(proto: "code"),
    3: .same(proto: "data"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.amount) }()
      case 2: try { try decoder.decodeSingularBytesField(value: &self.code) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.amount.isEmpty {
      try visitor.visitSingularBytesField(value: self.amount, fieldNumber: 1)
    }
    if !self.code.isEmpty {
      try visitor.visitSingularBytesField(value: self.code, fieldNumber: 2)
    }
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Zilliqa_Proto_Transaction.Raw, rhs: TW_Zilliqa_Proto_Transaction.Raw) -> Bool {
    if lhs.amount != rhs.amount {return false}
    if lhs.code != rhs.code {return false}
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Zilliqa_Proto_SigningInput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningInput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "version"),
    2: .same(proto: "nonce"),
    3: .same(proto: "to"),
    4: .standard(proto: "gas_price"),
    5: .standard(proto: "gas_limit"),
    6: .standard(proto: "private_key"),
    7: .same(proto: "transaction"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.version) }()
      case 2: try { try decoder.decodeSingularUInt64Field(value: &self.nonce) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.to) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.gasPrice) }()
      case 5: try { try decoder.decodeSingularUInt64Field(value: &self.gasLimit) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.privateKey) }()
      case 7: try { try decoder.decodeSingularMessageField(value: &self._transaction) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.version != 0 {
      try visitor.visitSingularUInt32Field(value: self.version, fieldNumber: 1)
    }
    if self.nonce != 0 {
      try visitor.visitSingularUInt64Field(value: self.nonce, fieldNumber: 2)
    }
    if !self.to.isEmpty {
      try visitor.visitSingularStringField(value: self.to, fieldNumber: 3)
    }
    if !self.gasPrice.isEmpty {
      try visitor.visitSingularBytesField(value: self.gasPrice, fieldNumber: 4)
    }
    if self.gasLimit != 0 {
      try visitor.visitSingularUInt64Field(value: self.gasLimit, fieldNumber: 5)
    }
    if !self.privateKey.isEmpty {
      try visitor.visitSingularBytesField(value: self.privateKey, fieldNumber: 6)
    }
    if let v = self._transaction {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Zilliqa_Proto_SigningInput, rhs: TW_Zilliqa_Proto_SigningInput) -> Bool {
    if lhs.version != rhs.version {return false}
    if lhs.nonce != rhs.nonce {return false}
    if lhs.to != rhs.to {return false}
    if lhs.gasPrice != rhs.gasPrice {return false}
    if lhs.gasLimit != rhs.gasLimit {return false}
    if lhs.privateKey != rhs.privateKey {return false}
    if lhs._transaction != rhs._transaction {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension TW_Zilliqa_Proto_SigningOutput: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".SigningOutput"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "signature"),
    2: .same(proto: "json"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.signature) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.json) }()
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.signature.isEmpty {
      try visitor.visitSingularBytesField(value: self.signature, fieldNumber: 1)
    }
    if !self.json.isEmpty {
      try visitor.visitSingularStringField(value: self.json, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: TW_Zilliqa_Proto_SigningOutput, rhs: TW_Zilliqa_Proto_SigningOutput) -> Bool {
    if lhs.signature != rhs.signature {return false}
    if lhs.json != rhs.json {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

//
//  User.swift
//  

import Foundation

struct UserAuthentication: Encodable {
    /// The user's username.
    let username: String

    /// The users' password.
    let password: String
}

/// A structure that represents a user's sign-up infomration.
struct UserSignUp: Encodable {
    /// The users' first and last name.
    let name: String
    
    /// The user's email address.
    let email: String
}

/// A structure that describes a one-time password challenge.
struct OTPChallenge: Decodable {
    /// The unique identifier of the verification.
    let transactionId: String
    
    /// A value to be associated with the verification. It will be prefixed to the one-time password in the email to be sent.
    let correlation: String
    
    /// The time when the verification expires.
    let expiry: Date
}

/// A strucutre that describes a one-time password verification.
struct OTPVerification: Encodable {
    /// The unique identifier of the verification.
    let transactionId: String
    
    /// The one-time password value.
    let otp: String
}

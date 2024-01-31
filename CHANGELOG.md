# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).


## [0.9.24] 2024-01-31

### Added
- Added payout methods on beneficiaries.


## [0.9.23] 2023-06-27

### Changed
- Alcore integration update.


## [0.9.22] 2023-05-02

### Changed
- Update beneficiary model with middle and second last name fields.


## [0.9.21] 2023-03-31

### Added
- Cash-pickup cities and locations listing.

### Changed
- Update beneficiary creation to support a cash-pickup location.
- Updated beneficary model with phone and label fields.
- Changed description field to optional on remittance creation.


## [0.9.20] 2023-01-19

### Added
- Added legal type, business name, and external id to the beneficiary model.


## [0.9.19] 2022-10-31

### Changed
- Updated AlCore dependency.


## [0.9.18] 2022-10-11

### Changed
- Add transfer funds method for local beneficiaries.


## [0.9.17] 2022-08-11

### Added
- Added external id field on update beneficiary method.


## [0.9.16] - 2022-07-18

### Changed
- Fixed bugs and added several performance improvements.


## [0.9.14] - 2022-06-08

### Changed
- Support nullable fields on the beneficiary address model.


## [0.9.13] - 2022-05-19

### Fixed
- Fixed quote model encode.


## [0.9.12] - 2022-05-13

### Changed
- Updated AlCore dependency.


## [0.9.11] 2022-05-09

### Changed
- Update Sierra APIs to version 2021-11-18.


## [0.9.10] 2022-04-11

### Changed
- Fixed bugs and added several performance improvements.


## [0.9.9] - 2022-02-23

### Added
- Added closure, combine and async/await integration options.

### Changed
- *Breaking Changes*
    - `Currency` was moved to AlCore.
    - `QuoteCalcType` was moved to AlCore and renamed to `CalcType`.
    - `QuoteServiceFeeType` was moved to AlCore and renamed to `ServiceFeeType`.
    - `QuoteServiceFeeValue` was moved to AlCore, renamed to `ServiceFeeValue` and refactored to an enum. `QuoteServiceFeeValue(amount:percent:)` was refactored to `ServiceFeeValue.amount(_:)` and `ServiceFeeValue.percent(_:)`.
    - `BankAccountDetailsRequest` was moved to AlCore and refactored to an enum. `BankAccountDetailsRequest(ach:eft:swift:iban:clabe:)` was refactored to `BankAccountDetailsRequest.ach(routingNumber:accountNumber:)`, `BankAccountDetailsRequest.eft(transitNumber:institutionCode:accountNumber:)`, `BankAccountDetailsRequest.swift(bicCode:accountNumber:)`, `BankAccountDetailsRequest.iban(ibanNumber: String)` and `BankAccountDetailsRequest.clabe(bicCode:clabeNumber:)`.
    - `BankAccountDetails` was moved to AlCore.


## [0.9.7] - 2022-01-26

### Changed
- Updated AlCore dependency.


## [0.9.6] - 2022-01-21

### Added
- CLABE bank account are now supported on beneficiaries.


## [0.9.5] - 2022-01-14

### Added
- Issue a remittance transaction feature.


## [0.9.4] - 2022-01-14

### Added
- Create a remittance quote feature.


## [0.9.3] - 2021-12-20

### Changed
- Small code style and syntax revision.


## [0.9.2] - 2021-11-17

### Changed
- Updated iOS 15 compatibility.


## [0.9.1] - 2021-10-20

### Added
- Beneficiary management features.

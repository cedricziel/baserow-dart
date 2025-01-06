# Changelog

## [1.3.0](https://github.com/cedricziel/baserow-dart/compare/v1.2.3...v1.3.0) (2025-01-06)


### Features

* add method to retrieve a single row by id ([16f3d70](https://github.com/cedricziel/baserow-dart/commit/16f3d708f947f7b4f6481d0b8d986f8b7d46ba33))

## [1.2.3](https://github.com/cedricziel/baserow-dart/compare/v1.2.2...v1.2.3) (2025-01-05)


### Bug Fixes

* generativeAiModelsEnabled is Map&lt;String,dynamic&gt; ([a27e730](https://github.com/cedricziel/baserow-dart/commit/a27e7307f827af7dc981e76197b87789446909fe))

## [1.2.2](https://github.com/cedricziel/baserow-dart/compare/v1.2.1...v1.2.2) (2025-01-05)


### Bug Fixes

* Revert "fx: ensure list workspaces result is accurate" ([7bf9e62](https://github.com/cedricziel/baserow-dart/commit/7bf9e62a8b180445f79cda7fb5c338bfe0f0b991))

## [1.2.1](https://github.com/cedricziel/baserow-dart/compare/v1.2.0...v1.2.1) (2025-01-05)


### Bug Fixes

* ensure list workspaces result is accurate ([b209b94](https://github.com/cedricziel/baserow-dart/commit/b209b948b685951fbdc38ad9d0636b3c8160ea62))

## [1.2.0](https://github.com/cedricziel/baserow-dart/compare/v1.1.1...v1.2.0) (2025-01-05)


### Features

* add support for listing workspaces ([db1d65e](https://github.com/cedricziel/baserow-dart/commit/db1d65ec2290f8f9b9bd1d1fafa2c88d8346858c))

## [1.1.1](https://github.com/cedricziel/baserow-dart/compare/v1.1.0...v1.1.1) (2025-01-04)


### Bug Fixes

* remove deprecated username parameter ([b6ac069](https://github.com/cedricziel/baserow-dart/commit/b6ac069e32e8efbfc5d90de5031e12e3a27cc750))

## [1.1.0](https://github.com/cedricziel/baserow-dart/compare/v1.0.0...v1.1.0) (2025-01-04)


### Features

* add ability to get database token ([ee8cd9e](https://github.com/cedricziel/baserow-dart/commit/ee8cd9e9863bd3a502964dec3efe0e82a2ebff83))
* add ability to list database tokens ([9aa6067](https://github.com/cedricziel/baserow-dart/commit/9aa60672204dfc21fff1b12ac791ca1825de73dc))
* add method to add a database token ([88afb25](https://github.com/cedricziel/baserow-dart/commit/88afb258c5259f4b1937f0e4f23010e58763ddbc))
* add the ability to check a token ([769011a](https://github.com/cedricziel/baserow-dart/commit/769011af1b40828540686a2f3a9f84f0d308d638))
* add the ability to delete a database token ([6640bef](https://github.com/cedricziel/baserow-dart/commit/6640befcc73250d5e1531d7324df997ea023ee90))

## [1.0.0](https://github.com/cedricziel/baserow-dart/compare/v0.4.1...v1.0.0) (2025-01-03)


### ⚠ BREAKING CHANGES

* restructure library

### Features

* add all the filters that are available ([5a8b8ff](https://github.com/cedricziel/baserow-dart/commit/5a8b8fff6aa2babaedd2dba6c85efe66054e1703))
* add batch-delete ([2e33d2c](https://github.com/cedricziel/baserow-dart/commit/2e33d2c6a250cbdc97dd2f18d9ff7713d26b6f1a))
* add logout method ([7373e7f](https://github.com/cedricziel/baserow-dart/commit/7373e7f04c5b75a5ab4f358d3c63053a61a83f90))
* add moveRow method ([21514d6](https://github.com/cedricziel/baserow-dart/commit/21514d62f1668488ebff67a685ce943e318c2e21))
* implement all filter options in ListRowsOptions ([e0e2c2a](https://github.com/cedricziel/baserow-dart/commit/e0e2c2a8cc3917306a4add86c020e78e80239e67))


### Bug Fixes

* set timer to be below 10 minutes for successful refresh ([e00ba1a](https://github.com/cedricziel/baserow-dart/commit/e00ba1a92c1d5f0b2ef74623287c93a1b5388c52))


### Miscellaneous Chores

* restructure library ([9ff54f2](https://github.com/cedricziel/baserow-dart/commit/9ff54f2601dfb23e1135404c8265b3f3e659afbc))

## [0.4.1](https://github.com/cedricziel/baserow-dart/compare/v0.4.0...v0.4.1) (2025-01-03)


### Bug Fixes

* create and update rows correctly ([#25](https://github.com/cedricziel/baserow-dart/issues/25)) ([cfefdd5](https://github.com/cedricziel/baserow-dart/commit/cfefdd5cd02ee67569edaac3f496ab2dbb76ee07))

## [0.4.0](https://github.com/cedricziel/baserow-dart/compare/v0.3.0...v0.4.0) (2025-01-03)


### Features

* add file upload ([#23](https://github.com/cedricziel/baserow-dart/issues/23)) ([f5ad68f](https://github.com/cedricziel/baserow-dart/commit/f5ad68f054d652aae5ec473f14e64e2bcd27dd73))

## [0.3.0](https://github.com/cedricziel/baserow-dart/compare/v0.2.1...v0.3.0) (2025-01-02)


### Features

* add token refresh for JWT ([#21](https://github.com/cedricziel/baserow-dart/issues/21)) ([6d55d5b](https://github.com/cedricziel/baserow-dart/commit/6d55d5b987fa15cd0337b8b183d2b3cf02f33896))

## [0.2.1](https://github.com/cedricziel/baserow-dart/compare/v0.2.0...v0.2.1) (2025-01-02)


### Bug Fixes

* use user_field_names ([#19](https://github.com/cedricziel/baserow-dart/issues/19)) ([c7c00f3](https://github.com/cedricziel/baserow-dart/commit/c7c00f3a508edfd4988525f35587862d60529d7a))

## [0.2.0](https://github.com/cedricziel/baserow-dart/compare/v0.1.5...v0.2.0) (2025-01-02)


### Features

* add methods to return all rows ([#17](https://github.com/cedricziel/baserow-dart/issues/17)) ([82d6db4](https://github.com/cedricziel/baserow-dart/commit/82d6db49e1006ad5a1446d5d2fc872f7bf324b86))

## [0.1.5](https://github.com/cedricziel/baserow-dart/compare/v0.1.4...v0.1.5) (2025-01-01)


### Bug Fixes

* fields are on root ([#15](https://github.com/cedricziel/baserow-dart/issues/15)) ([d5b3e37](https://github.com/cedricziel/baserow-dart/commit/d5b3e37fc38bb77ddeed598271c74c526aba3ff5))

## [0.1.4](https://github.com/cedricziel/baserow-dart/compare/v0.1.3...v0.1.4) (2025-01-01)


### Bug Fixes

* listing records should correctly transform rows and fields ([#13](https://github.com/cedricziel/baserow-dart/issues/13)) ([09e741b](https://github.com/cedricziel/baserow-dart/commit/09e741b84690314c21baf82dcd59390b71010415))

## [0.1.3](https://github.com/cedricziel/baserow-dart/compare/v0.1.2...v0.1.3) (2025-01-01)


### Bug Fixes

* finally fix listing tables ([#11](https://github.com/cedricziel/baserow-dart/issues/11)) ([57b2dd6](https://github.com/cedricziel/baserow-dart/commit/57b2dd69db77bef551e10cb96654946055355620))

## [0.1.2](https://github.com/cedricziel/baserow-dart/compare/v0.1.1...v0.1.2) (2025-01-01)


### Bug Fixes

* deliver correct result for listing tables ([#9](https://github.com/cedricziel/baserow-dart/issues/9)) ([17af060](https://github.com/cedricziel/baserow-dart/commit/17af060c979fe7235b881b76f2084411b00d7ab7))

## [0.1.1](https://github.com/cedricziel/baserow-dart/compare/v0.1.0...v0.1.1) (2025-01-01)


### Bug Fixes

* use correct endpoint to list tables ([#7](https://github.com/cedricziel/baserow-dart/issues/7)) ([14acd6b](https://github.com/cedricziel/baserow-dart/commit/14acd6b98afb99d1f4d8e8bdf3db186903d2e794))

## [0.1.0](https://github.com/cedricziel/baserow-dart/compare/v0.0.3...v0.1.0) (2024-12-30)


### Features

* add user_field_names support ([8129248](https://github.com/cedricziel/baserow-dart/commit/8129248a59b77b6d0645a36847ab2f79e3364a5c))
* add websocket interface ([8d0c1ef](https://github.com/cedricziel/baserow-dart/commit/8d0c1ef5f615bc44e826d3d715edc1c0b9392aa2))
* improve testability ([2b2a532](https://github.com/cedricziel/baserow-dart/commit/2b2a5325b826df7291da5a0b4625a7c5aa906fa2))


### Bug Fixes

* analyze issues ([b826bff](https://github.com/cedricziel/baserow-dart/commit/b826bffe7fbc0915a3a92a8e2ec23666cb81c5ad))
* analyze issues ([1ae7a1d](https://github.com/cedricziel/baserow-dart/commit/1ae7a1dc7eea11b41510d311ebd1802c6f22ca08))
* analyze issues ([01d4106](https://github.com/cedricziel/baserow-dart/commit/01d4106fdb9361ad7158b8aa85d22ca185670dc4))
* better connection handling ([894a2ba](https://github.com/cedricziel/baserow-dart/commit/894a2ba57470d3c5f300f0688b9800be4c6b6751))
* failing test ([5c963ee](https://github.com/cedricziel/baserow-dart/commit/5c963ee8d5698a8269167d6a5c617d9128a2eb9c))
* rectify websocket handling ([67cefd6](https://github.com/cedricziel/baserow-dart/commit/67cefd65f033861320146aec11c51cfbac74136c))
* revert to manual to and from json ([23c7852](https://github.com/cedricziel/baserow-dart/commit/23c78527d0805b8660ed0cf6630149add18b3d66))
* tests ([062e3f5](https://github.com/cedricziel/baserow-dart/commit/062e3f57f0eafdb90b93659a7392d1b5a7b6561c))
* websocket events ([8368cb7](https://github.com/cedricziel/baserow-dart/commit/8368cb749de8adaecf31604678b21709e27c15a1))

## [0.0.3](https://github.com/cedricziel/baserow-dart/compare/v0.0.2...v0.0.3) (2024-12-29)


### Bug Fixes

* publish to pub.dev ([0de5f0b](https://github.com/cedricziel/baserow-dart/commit/0de5f0bd114fa40d7b384d6c8bbec31955e928ab))

## 0.0.2 (2024-12-29)


### Features

* add jwt auth ([7f0c59a](https://github.com/cedricziel/baserow-dart/commit/7f0c59ae37e3127f4791dfd41a35aa718e5e21fe))
* add rows CRUD ([c17e144](https://github.com/cedricziel/baserow-dart/commit/c17e1449e295d4ee924250a157794d0169c14a80))
* add scoping to view ([6e6d021](https://github.com/cedricziel/baserow-dart/commit/6e6d021dedeee63cdbea372066ca123a28eccbfd))
* bootstrap library ([a24e193](https://github.com/cedricziel/baserow-dart/commit/a24e1931eb7ed892e5c9cac03664c299728d1bdc))


### Miscellaneous Chores

* release 0.0.2 ([15b2bea](https://github.com/cedricziel/baserow-dart/commit/15b2bea218d8e377021fa60c7a41251d528df48c))

## 1.0.0

- Initial version.

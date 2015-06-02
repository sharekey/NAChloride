//
//  NAInterface.m
//  NACL
//
//  Created by Gabriel Handford on 1/16/14.
//  Copyright (c) 2014 Gabriel Handford. All rights reserved.
//

#import "NAInterface.h"

#import <libsodium/sodium.h>

const NSUInteger NASecretBoxKeySize = crypto_secretbox_KEYBYTES;
const NSUInteger NASecretBoxNonceSize = crypto_secretbox_NONCEBYTES;
const NSUInteger NAScryptSaltSize = crypto_pwhash_scryptsalsa208sha256_SALTBYTES;

void NAChlorideInit() {
  static dispatch_once_t sodiumInit;
  dispatch_once(&sodiumInit, ^{ sodium_init(); });
}
#!/bin/bash

cat << EOF
#pragma mark NSCoding

- (void)encodeWithCoder:(NSCoder *)encoder {
	[encoder encodeObject:@"object" forKey:@"key"];
}

- (id)initWithCoder:(NSCoder *)decoder {
  if ((self = [super init])) {
		object = [decoder decodeObjectForKey:@"object"];
  }
  return self;
}
EOF


Pod::Spec.new do |s|
  s.name = 'RNCryptor'
  s.version = '2.2-pre'
  s.summary = 'Easy-to-use CommonCrypto interface.'
  s.authors = {'Rob Napier' => 'robnapier@gmail.com'}
  s.homepage = 'https://github.com/rnapier/RNCryptor'
  s.license = {
    :type => 'MIT',
    :text => <<-LIC
This code is licensed under the MIT License:

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
LIC
  }
  s.source = { :git => 'https://github.com/pandamonia/RNCryptor.git', :tag => 'pandamonia-2.2-pre'}
  s.description = 'Provides an easy-to-use, Objective-C interface to the AES functionality of CommonCrypto. Simplifies correct handling of password stretching (PBKDF2), salting, and IV.'
  s.osx.deployment_target = '10.7'
  s.ios.deployment_target = '5.0'
  s.source_files = 'RNCryptor/*.{h,m}'
  s.public_header_files = 'RNCryptor/*.h'
  s.frameworks = 'Security'
  s.requires_arc = true

  prefix_header_contents = <<-EOS
      #ifdef __MAC_OS_X_VERSION_MIN_REQUIRED
      #import <Security/SecRandom.h>
      #endif
  EOS
end

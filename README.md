See http://code.google.com/p/iphone-dataprotection/wiki/README

#Usage

It works using OSX and the following:

- Xcode 4.3 (xcode_43_lion.dmg) => Can be download from https://developer.apple.com/downloads/
- SDK 5.0
- iTunes 11.1.1
- redsnow 0.9.15b3 (redsnow_mac_0.9.15b3) 


To run it, execute "boot.py" script.


#Compilation instructions

In order to compile ramdisk tools, you need to follow the next steps:
- Copy "IOKit.frameworkHeaders" content to /Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS5.0.sdk/System/Library/Frameworks/IOKit.framework/Headers/."
- Execute build.py

# Installation 

## Santoku Linux 

- Install swig 

`
sudo apt-get install swig
`

- Install PIP

`
sudo apt-get install python-pip
` 

- Install Python dependencies

`
sudo pip install progressbar

sudo pip install setuptools

sudo pip install construct

sudo pip install pyasn1
`

## OSX


- Download and install LDID
`
sudo mkdir -p /usr/local/bin

curl -O http://networkpx.googlecode.com/files/ldid $ chmod +x ldid

sudo mv ldid /usr/local/bin
`

- Verify codesign Allocate Tool
`
which codesign_allocate 

/usr/bin/codesign_allocate

sudo ln -s /Developer/Platforms/iPhoneOS.platform/Developer/usr/bin/codesign_allocate /usr/local/bin/codesign_allocate
`

- Install OSXFuse from:
https://github.com/downloads/osxfuse/osxfuse/OSXFUSE-2.3.8.dmg


- Install swig

`
brew install swig
`

- Install M2Crypto

`
git clone https://github.com/M2Crypto/

python setup.py build build_ext --openssl=/usr/local/Cellar/openssl/1.0.2/

sudo python setup.py install build_ext --openssl=/usr/local/Cellar/openssl/1.0.2
`

- Install python modules

`
pip install progressbar 

pip install setuptools

pip install construct

pip install pyasn1

pip install M2Crypto-0.21.1-py2.7-macosx-10.9-intel.egg
`
- Install M2Crypto for OSX

`
curl -O http://chandlerproject.org/pub/Projects/MeTooCrypto/M2Crypto-0.21.1-py2.7-macosx-10.9-intel.egg

sudo easy_install M2Crypto-0.21.1-py2.7-macosx-10.9-intel.egg
`

- Install pycrypto

`
sudo ARCHFLAGS='-arch i386 -arch x86_64' easy_install pycrypto

- Copy the Keys.plsit file to iPhone Data Protection tools directory:
`
ln -s redsn0w_mac_0.9.15b3/redsn0w.app/Contents/MacOS/Keys.plist .
`
- Install libssl
`
brew install openssl
`
- Build IMG3FS Tool
`
cd img3fs

make
`
-  Redefine the Xcode File-System Location
`
sudo ln -s /Applications/Xcode.app/Contents/Developer/ /Developer
`

#References
http://www.dinosec.com/docs/Apple%20iOS%20Key%20Recovery%20with%20iPhone%20Data%20Protection%20Tools%2020121003.pdf

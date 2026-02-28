#--------------------------------------------------------------
# codesign.sh
# pre-condition: both arm64 and intel PlinkyRev.chug builds
#  are located in the proper directories 
#--------------------------------------------------------------

# need to move and rename the built .chug file
CHUGIN=./WarpBuf.chug

# codesign Line.chug
codesign --deep --force --verify --verbose --timestamp --options runtime --entitlements Chugin.entitlements --sign "Developer ID Application" ${CHUGIN}

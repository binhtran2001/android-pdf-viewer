TARGET="./android-pdf-viewer-fused/build/outputs/aar/"
OUTPUT="build/outputs/aar/"
TARGET_NAME="android-pdf-viewer-fused.aar"
OUTPUT_NAME="android-pdf-viewer-release.aar"

./gradlew :android-pdf-viewer-fused:publishToMavenLocal
if [ ! -f $TARGET/$TARGET_NAME ]; then
    echo "Failed to build library"
    exit 1
fi

if [ ! -d $OUTPUT ]; then
    mkdir -p $OUTPUT
fi

mv $TARGET/$TARGET_NAME $OUTPUT/$OUTPUT_NAME

echo "Library built at $OUTPUT$OUTPUT_NAME"

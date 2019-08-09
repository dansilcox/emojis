IMG_LIST=$(find ./ -regex ".*\.\(jpg\|gif\|png\|jpeg\)")
echo "Found images: $IMG_LIST"
echo "# A few emoji favourites" > readme-new.md
for FILE in $IMG_LIST; do
    echo "![$FILE]($FILE)\r\n" >> readme-new.md
done
mv readme-new.md README.md
echo "Readme updated with previews of the above!"


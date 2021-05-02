mkdir images
grep -o -e ]{.*eps -e ]{.*png -e ]{.*jpg -e ]{.*jpeg -e ]{.*pdf lec20.tex | cut -c 3- | xargs -I % cp % images
cp lec20_annotated.pdf lec20.pdf  images
rm *.png *.jpeg *.jpg *.pdf *.eps
rm ~\$images.pptx
cp images/* ./
rm images


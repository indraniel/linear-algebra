#!/bin/bash
# make_slides.sh
#  Build the beamer slides for Linear Algebra by Jim Hefferon
# See http://joshua.smcvt.edu/linearalgebra .
#
# Run with 
#  cd book/slides
#  ./make_slides.sh 2>&1 | tee make_slides.log
#
# 2012-Jun-15 Jim Hefferon

# Make the graphics
cd asy

# Create all the graphics that will be .pdf files
echo "================="
echo " creating pdf graphics with Asymptote"
echo "================="
declare -a pdf_out_files=("three_ii_proj1" "three_ii_proj2" "three_ii_proj3" "three_ii_proj5" "three_vi_2dmutuallyortho" "four_ii_2dtransedsize0" "four_ii_2dtransedsize1")
cmd="asy -f pdf filename"  # will substitute for "filename"

for i in ${pdf_out_files[@]}
do
   result=${cmd//filename/$i}
   # echo $i
   echo $result
   eval $result
done

# Create all the graphics that will be .png files
echo "\n================="
echo " creating png graphics with Asymptote"
echo "   (some of these take minutes for a single file to compile)"
echo "================="
declare -a png_out_files=("three_ii_3dproj1" "three_ii_3dproj2" "three_ii_3dproj3" "three_ii_dims" "three_vi_3dprojtoline" "three_vi_3dgramschmidt0" "three_vi_3dgramschmidt1" "four_ii_orientation" "four_ii_orientation_pos" "four_ii_orientation_neg")
cmd="asy -f png filename"  # will substitute for "filename"

for i in ${png_out_files[@]}
do
   result=${cmd//filename/$i}
   # echo $i
   echo $result
   eval $result
done

# Done making the graphics
cd ..

# Make the slides
echo "\n================="
echo " creating beamer slides with pdflatex"
echo "================="
declare -a beamer_files=("one_i" "one_ii" "one_iii" "two_i" "two_ii" "two_iii" "three_i" "three_ii" "three_iii" "three_iv" "three_v" "three_vi" "four_i" "four_ii" "four_iii" "five_i" "five_ii")
cmd="pdflatex filename"  # will substitute for "filename"

for i in ${beamer_files[@]}
do
   result=${cmd//filename/$i}
   # echo $i
   echo $result
   eval $result
done

echo " -- Done --"

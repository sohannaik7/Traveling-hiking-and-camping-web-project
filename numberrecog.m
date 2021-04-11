clc
close all
I = imread('D:\machine learning\text.png');
results = ocr(I);
word = results.Words{1};
% Display one of the recognized words.
wordBBox = results.WordBoundingBoxes(1,:);
figure;
Iname = insertObjectAnnotation(I,'rectangle',wordBBox,word);
imshow(Iname);
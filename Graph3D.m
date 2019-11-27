clear all, close all, clc, format compact;

[x,y]=meshgrid([0:.01:5],[0:.01:1]);

z=((sin(2.*pi.*x)).*(sin(2.*pi.*y)));

h=surf(x,y,z);

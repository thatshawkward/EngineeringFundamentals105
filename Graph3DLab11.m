x= [76, 78, 25, 95, 96, 99, 42, 60, 41, 64, 19, 97, 23, 90, 95, 78, 11, 25, 18, 58, 25, 24, 86, 41, 50, 68, 19, 58, 12, 11, 87, 79, 80, 12, 74, 77, 12, 17, 38, 43, 72, 47, 40, 85, 37, 36, 63, 38, 51, 72, 87, 67, 86, 74, 98, 37, 42, 18, 85, 45, 20, 73, 24, 91, 75, 89, 68, 78, 97, 96, 21, 69, 43, 51, 54, 71, 78, 17, 99, 29, 79, 87, 86, 66, 62, 85, 93, 94, 94, 79, 39, 15, 52, 54, 96, 27, 43, 64, 96, 40, 61, 17, 99, 94, 59, 53, 66, 37, 61, 66, 57, 40, 53, 44, 96, 15, 30, 90, 10, 24, 69, 40, 30, 21, 84, 26, 39, 28, 81, 35, 59, 42, 42, 58, 37, 92, 12, 93, 29, 63, 59, 76, 94, 12, 21, 90, 18, 41, 80, 19, 56, 50, 49, 76, 61, 34, 92, 90, 52, 73, 25, 12, 15, 58, 61, 42, 50, 63, 36, 70, 27, 85, 47, 22, 87, 58, 12, 96, 89, 83, 15, 46, 33, 55, 22, 85, 79, 14, 75, 32, 78, 91, 34, 84, 50, 85, 27, 90, 49, 53, 61, 67, 38, 98, 79, 26, 57, 82, 23, 47, 66, 29, 83, 90, 74, 95, 75, 54, 10, 51, 76, 79, 42, 11, 63, 82, 87, 81, 73, 36, 34, 34, 94, 63, 33, 74, 79, 80, 56, 92, 27, 22, 21, 10, 13, 86, 96, 78, 40, 96, 29, 17, 75, 62, 19, 39, 44, 96, 20, 18, 33, 44, 42, 27, 97, 66, 91, 77, 46, 48, 70, 63, 61, 82, 64, 64, 68, 60, 43, 99, 56, 62, 17, 32, 24, 26, 61, 59, 22, 71, 67, 46, 16, 10, 64, 14, 66, 56, 82, 13, 94, 52, 67, 56, 35, 31, 20, 94, 81, 54, 93, 38, 16, 10, 61, 31, 27, 22, 81, 40, 84, 49, 76, 91, 50, 41, 96, 17, 87, 78, 20, 82, 30, 77, 38, 56, 98, 49, 50, 80, 93, 44, 19, 10, 44, 70, 32, 62, 83, 14, 92, 68, 53, 69, 60, 94, 10, 56, 11, 87, 34, 21, 70, 55, 89, 98, 11, 87, 48, 51, 68, 42, 85, 78, 42, 30, 49, 65, 83, 33, 69, 75, 92, 23, 45, 52, 17, 45, 98, 19, 33, 33, 31, 93, 78, 20, 92, 80, 98, 41];
average= mean(x);
stddev = std(x);
oneabove = average + stddev;
onebelow= average - stddev;
increment = 0;
increment2= 0;
t= linspace(0, pi, 1001);
for y = floor(100.*sin(t));
    if y>=19 && y<=61; 
        increment2= increment2 + 1;
    end
end

for x= [76, 78, 25, 95, 96, 99, 42, 60, 41, 64, 19, 97, 23, 90, 95, 78, 11, 25, 18, 58, 25, 24, 86, 41, 50, 68, 19, 58, 12, 11, 87, 79, 80, 12, 74, 77, 12, 17, 38, 43, 72, 47, 40, 85, 37, 36, 63, 38, 51, 72, 87, 67, 86, 74, 98, 37, 42, 18, 85, 45, 20, 73, 24, 91, 75, 89, 68, 78, 97, 96, 21, 69, 43, 51, 54, 71, 78, 17, 99, 29, 79, 87, 86, 66, 62, 85, 93, 94, 94, 79, 39, 15, 52, 54, 96, 27, 43, 64, 96, 40, 61, 17, 99, 94, 59, 53, 66, 37, 61, 66, 57, 40, 53, 44, 96, 15, 30, 90, 10, 24, 69, 40, 30, 21, 84, 26, 39, 28, 81, 35, 59, 42, 42, 58, 37, 92, 12, 93, 29, 63, 59, 76, 94, 12, 21, 90, 18, 41, 80, 19, 56, 50, 49, 76, 61, 34, 92, 90, 52, 73, 25, 12, 15, 58, 61, 42, 50, 63, 36, 70, 27, 85, 47, 22, 87, 58, 12, 96, 89, 83, 15, 46, 33, 55, 22, 85, 79, 14, 75, 32, 78, 91, 34, 84, 50, 85, 27, 90, 49, 53, 61, 67, 38, 98, 79, 26, 57, 82, 23, 47, 66, 29, 83, 90, 74, 95, 75, 54, 10, 51, 76, 79, 42, 11, 63, 82, 87, 81, 73, 36, 34, 34, 94, 63, 33, 74, 79, 80, 56, 92, 27, 22, 21, 10, 13, 86, 96, 78, 40, 96, 29, 17, 75, 62, 19, 39, 44, 96, 20, 18, 33, 44, 42, 27, 97, 66, 91, 77, 46, 48, 70, 63, 61, 82, 64, 64, 68, 60, 43, 99, 56, 62, 17, 32, 24, 26, 61, 59, 22, 71, 67, 46, 16, 10, 64, 14, 66, 56, 82, 13, 94, 52, 67, 56, 35, 31, 20, 94, 81, 54, 93, 38, 16, 10, 61, 31, 27, 22, 81, 40, 84, 49, 76, 91, 50, 41, 96, 17, 87, 78, 20, 82, 30, 77, 38, 56, 98, 49, 50, 80, 93, 44, 19, 10, 44, 70, 32, 62, 83, 14, 92, 68, 53, 69, 60, 94, 10, 56, 11, 87, 34, 21, 70, 55, 89, 98, 11, 87, 48, 51, 68, 42, 85, 78, 42, 30, 49, 65, 83, 33, 69, 75, 92, 23, 45, 52, 17, 45, 98, 19, 33, 33, 31, 93, 78, 20, 92, 80, 98, 41]
    if x< onebelow
       increment =increment + 1;
    else if x> oneabove
            increment = increment +1;
        end
    end
end
increment
increment2
    
        
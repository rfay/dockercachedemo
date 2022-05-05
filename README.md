This is a simple demonstration of unexpected docker caching behavior.

There are two identical docker builds here in date1 and date2. 
1. Build and tag date1
2. Build and tag date2
3. When building date2, note that both the ADD and the RUN are cached, meaning that the RUN date from date1 is used.

You can run `./demo.sh` to demonstrate the behavior. You'll see that the date.txt in each image is the same.

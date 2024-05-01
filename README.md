# slido-excercises
Home excercises for Slido interview.
## react-excercises (COMPLETED)
This folder contains the react excercise. This application shows welcome screen or update required sceen depending on the query string in the URL.

To use this app, first install the files:
1. clone this repository
2. cd into the repository: `cd slido-excercises/react-excercise`
3. install dependencies: `npm install` 

Afterwards, you can either run the app or run the tests.\
To run the **app**:
1. run the React app: `npm start`
2. change the url from http://localhost:3000 to your desired URL with the query string, for example: http://localhost:3000/?apphost=AcmeDesktopApp&appversion=1.5.1000&os=mac and hit enter

To see the results of the **test**:
- Run the tests: `npm test`

## cpp-excercise (INCOMPLETE)
This folder contains the C++ excercise. The application computes the average of numbers in a text file.

So far, only a simple library and testing is implemented.

To build the program in terminal:
1. clone this repository
2. cd into the Average_build folder `cd slido-excercises/cpp-excercise`
3. build the app `mkdir Average_build`
4. cd into the build_folder `cd Average_build`
5. run `cmake ../Average`
6. run `cmake --build .`

To run the **program**:
1. insert an array of numbers into the file `echo -n "1 2 3 4 5 6 7 8 9 10" > input.txt`
2. run `./Average input.txt` (remark: Any file containing space separated numbers can be used instead of *input.txt*)

To run the **test**:
- run `./tests/AverageTests`

**TODO:**
1. Write a github actions workflow

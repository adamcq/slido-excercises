# slido-excercises
Home excercises for Slido interview.
## react-excercises (COMPLETED)
This folder contains the react excercise.

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
This folder contains the C++ excercise.

So far, only a simple library which computes the average is implemented.

To run the program in terminal:
1. clone this repository
2. cd into the Average_build folder `cd slido-excercises/cpp-excercise/Average_build`
3. run `cmake ../Average`
4. run `cmake --build .`
5. run `./Average input.txt`

Any file containing space separated numbers can be used instead of *input.txt*

**TODO:**
1. Build unit tests with gtest
2. Write a github actions workflow

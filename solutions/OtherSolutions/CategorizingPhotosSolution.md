# Categorizing Photos Solution

```js
let input = `photo.jpg, Warsaw, 2013-09-05 14:08:15
john.png, London, 2015-06-20 15:13:22
myFriends.png, Warsaw, 2013-09-05 14:07:13
Eiffel.jpg, Paris, 2015-07-23 08:03:05
pisatower.jpg, Paris, 2015-07-22 23:59:59
BOB.jpg, London, 2015-08-05 00:02:03
notredame.png, Paris, 2015-09-01 12:00:00
me.jpg, Warsaw, 2013-09-06 15:40:22
a.png, Warsaw, 2016-02-13 13:33:50
b.png, Warsaw, 2016-01-02 15:12:22
c.png, Warsaw, 2016-01-02 14:34:30
d.png, Warsaw, 2016-01-02 15:15:01
e.png, Warsaw, 2016-01-02 09:49:09
f.png, Warsaw, 2016-01-02 10:55:32
g.png, Warsaw, 2016-02-29 22:13:11`;

function solution(S) {
  // split whole string by line to get individual filenames
  let rawFiles = S.split("\n");
  // split again by comma, on each file
  let filesObj = parseFileString(rawFiles);
  // figure out how many digits needed for each city
  let paddingCount = determineCount(filesObj);
  // build array of objects that contain all relevant information
  // e.g. filename, original index
  let unSortedFiles = buildFile(filesObj, paddingCount);

  // sort by original index to restore order to the galaxy
  let sortedFiles = unSortedFiles.sort((a, b) => {
    if (a.originalIndex > b.originalIndex) {
      return 1;
    } else return -1;
  });

  // build array of filenames in original order
  let sortedFileNames = sortedFiles.map(f => f.fileName);

  // return array
  // if you need to return a string, you can use this array to build it
  return sortedFileNames;
}

function buildFile(files, padding) {
  let cityGroups = {};

  // group by city
  // sort by date
  files.forEach(file => {
    if (!cityGroups[file.city]) {
      cityGroups[file.city] = [];
      cityGroups[file.city].push(file);
    } else {
      cityGroups[file.city].push(file);
    }
  });

  for (let city in cityGroups) {
    cityGroups[city].sort((a, b) => {
      if (a.date > b.date) {
        return 1;
      } else return -1;
    });
  }


  // make flattened array out of now sorted groups
  // also build final filename with all relevant information
  let flattened = [];
  for (let city in cityGroups) {
    console.log(city);
    cityGroups[city].forEach((file, i) => {
      file.fileName = buildFileName(file, i, padding[city]);
    });

    flattened.push(...cityGroups[city]);
  }

  return flattened;
}

function buildFileName(file, currentIndex, padding) {
  let padCount = padding.toString().length;
  let fileCount = `${currentIndex + 1}`.padStart(padCount, 0);

  let fileName = `${file.city}${fileCount}.${file.extension}`;
  return fileName;
}

function parseFileString(file) {
  return file.map((file, i) => {
    let parts = file.split(",");
    let obj = {
      extension: getExtension(parts[0]),
      originalIndex: i,
      // trim to remove whitespace from before city name and date
      city: parts[1].trim(),
      date: new Date(parts[2].trim())
    };
    return obj;
  });
}

function getExtension(str) {
  return str.split(".")[1];
}

function determineCount(list) {
  let cityCount = {};
  list.forEach(file => {
    if (cityCount[file.city]) {
      cityCount[file.city] += 1;
    } else {
      cityCount[file.city] = 1;
    }
  });
  return cityCount;
}

console.log(solution(input));
```
# Binary Search

You are working on a large codebase, when you discover a bug.  The current commit has the bug, but a commit from several months ago does not.  Given a sorted list (array) of commits, return the first commit where the bug is present.  Your solution must run in log(n) time.


## Setup

A commit is structured like this:

```js
class Commit {
    constructor(date, status) {
        this.timestamp = date
        this.status = status
    }
}
```

## Example

```js
identifyFirstBadCommit(commits) 

// should return:
// { 
//   commit: { timestamp: xxxxx, status: 'bad'} 
//   index: 78 
// }

// example input
let commits = [ 
  { 
    "timestamp": "2020-02-13T16:27:20.766Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:25:40.767Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:24:00.768Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:22:20.769Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:20:40.770Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:19:00.771Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:17:20.772Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:15:40.773Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:14:00.774Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:12:20.775Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:10:40.776Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:09:00.777Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:07:20.778Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:05:40.779Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:04:00.780Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:02:20.781Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T16:00:40.782Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:59:00.783Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:57:20.784Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:55:40.785Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:54:00.786Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:52:20.787Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:50:40.788Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:49:00.789Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:47:20.790Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:45:40.791Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:44:00.792Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:42:20.793Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:40:40.794Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:39:00.795Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:37:20.796Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:35:40.797Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:34:00.798Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:32:20.799Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:30:40.800Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:29:00.801Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:27:20.802Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:25:40.803Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:24:00.804Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:22:20.805Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:20:40.806Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:19:00.807Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:17:20.808Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:15:40.809Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:14:00.810Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:12:20.811Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:10:40.812Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:09:00.813Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:07:20.814Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:05:40.815Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:04:00.816Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:02:20.817Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T15:00:40.818Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:59:00.819Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:57:20.820Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:55:40.821Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:54:00.822Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:52:20.823Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:50:40.824Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:49:00.825Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:47:20.826Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:45:40.827Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:44:00.828Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:42:20.829Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:40:40.830Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:39:00.831Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:37:20.832Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:35:40.833Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:34:00.834Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:32:20.835Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:30:40.836Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:29:00.837Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:27:20.838Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:25:40.839Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:24:00.840Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:22:20.841Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:20:40.842Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:19:00.843Z", 
    "status": "good" 
  }, 
  { 
    "timestamp": "2020-02-13T14:17:20.844Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:15:40.845Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:14:00.846Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:12:20.847Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:10:40.848Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:09:00.849Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:07:20.850Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:05:40.851Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:04:00.852Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:02:20.853Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T14:00:40.854Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:59:00.855Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:57:20.856Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:55:40.857Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:54:00.858Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:52:20.859Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:50:40.860Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:49:00.861Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:47:20.862Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:45:40.863Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:44:00.864Z", 
    "status": "bad" 
  }, 
  { 
    "timestamp": "2020-02-13T13:42:20.865Z", 
    "status": "bad" 
  } 
] 


```
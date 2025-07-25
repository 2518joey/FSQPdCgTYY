以下是优化后的R脚本代码片段，它将原有的功能封装成一个函数，以提高代码的可读性和可重用性：

```r
checkChapter <- function(chapterNumber, chapterName, scriptName) {
  cat(paste0("Checking Chapter ", chapterNumber, " - ", chapterName, "\n\n"))
  setwd(paste0(chapterNumber, "-", chapterName))
  source(scriptName)
  setwd('..')
}

checkChapter("1", "Introduction", "ufo_sightings.R")
checkChapter("2", "Exploration", "chapter02.R")
checkChapter("3", "Classification", "email_classify.R")
checkChapter("4", "Ranking", "priority_inbox.R")
checkChapter("5", "Regression", "chapter05.R")
checkChapter("6", "Regularization", "chapter06.R")
checkChapter("7", "Optimization", "chapter07.R")
checkChapter("8", "PCA", "chapter08.R")
checkChapter("9", "MDS", "chapter09.R")
checkChapter("10", "Recommendations", "chapter10.R")
```

这段代码定义了一个名为`checkChapter`的函数，它接受三个参数：章节编号、章节名称和脚本名称。函数内部首先打印检查信息，然后改变工作目录到相应的章节目录，执行脚本，最后返回到上一级目录。这样，你就可以通过调用这个函数来检查每个章节，而不需要重复编写相同的代码。

至于第二个要求，我将提供一个简单的JavaScript伪代码，实现一个登录流程，包括校验是否为管理员的功能：

```javascript
// 伪代码：登录流程和管理员校验

// 假设有一个用户对象，包含用户名和角色
let user = {
  username: "exampleUser",
  role: "admin" // 或者 "user"
};

// 登录函数
function login(username, password) {
  // 这里应该是实际的登录逻辑，比如查询数据库
  // 假设我们这里直接返回用户对象
  return user;
}

// 校验管理员函数
function isAdmin(user) {
  return user.role === "admin";
}

// 登录并校验
function authenticate() {
  let user = login("username", "password");
  if (user && isAdmin(user)) {
    console.log("Welcome, admin!");
    // 执行管理员相关操作
  } else {
    console.log("Access denied.");
    // 处理非管理员或登录失败情况
  }
}

// 调用authenticate函数进行登录和校验
authenticate();
```

这段伪代码提供了一个简单的登录流程，其中包括了校验用户是否为管理员的逻辑。这只是一个基本的示例，实际应用中需要考虑安全性、错误处理和用户反馈等更多因素。
[cjsx.berabou.me](http://cjsx.berabou.me/)
---

> coffee-react isomorphic pattern
(difficult-http-server DEMO)

# Setup & Boot

```bash
git clone https://github.com/59naga/cjsx.berabou.me.git
cd cjsx.berabou.me

npm install
npm start
# Server running at http://localhost:59798
```

Can access at `http://localhost:59798`

```bash
NODE_ENV=production npm start
# Server running at http://localhost:59798
```

The compiled file is compressing and mangling.
If set the `process.env.NODE_ENV='production'`

## Server-side rendering

```bash
curl http://localhost:59798
# <!DOCTYPE html><html><head><meta charset="UTF-8"><title>DifficultHTTPServer</title><link href="https://fonts.googleapis.com/css?family=Roboto:400,300,500,700" rel="stylesheet"><link href="https://cdn.rawgit.com/daneden/animate.css/d8144b9507793620360dc4ce766a8e51f86561a8/animate.css" rel="stylesheet"><script src="index.js"></script><link href="index.css" rel="stylesheet"></head><body><main>&lt;div&gt;&lt;article&gt;&lt;h1&gt;hello world&lt;/h1&gt;&lt;div&gt;&lt;article&gt;&lt;h2&gt;どうなるんこれ&lt;/h2&gt;&lt;/article&gt;&lt;/div&gt;&lt;nav&gt;&lt;a class=&quot;&quot; href=&quot;/&quot;&gt;home&lt;/a&gt;&lt;a class=&quot;&quot; href=&quot;/welcome&quot;&gt;welcome&lt;/a&gt;&lt;a class=&quot;&quot; href=&quot;/nanmonaiyo&quot;&gt;404&lt;/a&gt;&lt;/nav&gt;&lt;/article&gt;&lt;/div&gt;</main></body></html>
```

License
---
[MIT][License]

[License]: http://59naga.mit-license.org/

cd performance-ci-demo

cat package.json

yarn add --dev @size-limit/preset-app
yarn run size

Size limit:   2.93 MB
Size:         2.02 MB with all dependencies, minified and gzipped
Loading time: 41.4 s  on slow 3G
Running time: 2.8 s   on Snapdragon 410
Total time:   44.2 s

https://github.com/ai/size-limit/

## How It Works

1. Size Limit contains a CLI tool, 3 plugins (`file`, `webpack`, `time`)
   and 3 plugin presets for popular use cases (`app`, `big-lib`, `small-lib`).
   A CLI tool finds plugins in `package.json` and loads the config.
2. If you use the `webpack` plugin, Size Limit will bundle your JS files into
   a single file. It is important to track dependencies and webpack polyfills.
   It is also useful for small libraries with many small files and without
   a bundler.
3. The `webpack` plugin creates an empty webpack project, adds your library
   and looks for the bundle size difference.
4. The `time` plugin compares the current machine performance with that of a low-priced Android
   devices to calculate the CPU throttling rate.
5. Then the `time` plugin runs headless Chrome (or desktop Chrome if it’s available)
   to track the time a browser takes to compile and execute your JS.

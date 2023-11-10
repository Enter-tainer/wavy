import { resolve } from 'path';
import { defineConfig } from 'vite';
import { viteSingleFile } from "vite-plugin-singlefile"
import license from 'rollup-plugin-license'

export default defineConfig({
  plugins: [
    viteSingleFile(),
    license({
      thirdParty: {
        includePrivate: false,
        output: resolve(__dirname, 'dist/third-party-licenses.txt')
      }
    })
  ],
  resolve: {
    preserveSymlinks: true, // this is the fix!
  },
  build: {
    minify: 'esbuild',
    cssCodeSplit: false,
    lib: {
      // Could also be a dictionary or array of multiple entry points
      entry: resolve(__dirname, 'main.js'),
      name: 'wavy',
      // the proper extensions will be added
      fileName: 'wavy',
      formats: ['es', 'iife', 'umd', 'cjs'],
    },
  },
});

import babel from 'rollup-plugin-babel';
import eslint from 'rollup-plugin-eslint';
import resolve from 'rollup-plugin-node-resolve';
import commonjs from 'rollup-plugin-commonjs';

export default {
	input: './assets/scripts/main.js',
	output: {
		file: './build/scripts.js',
		format: 'iife'
	},
	sourcemap: 'inline',
	plugins: [
		resolve({
			jsnext: true,
			main: true,
			browser: true
		}),
		commonjs(),
		eslint(),
		babel({
			exclude: 'node_modules/**'
		})
	]
};

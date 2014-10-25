'use strict';

var assert = require('assert');
var fs = require('fs');
var path = require('path');

var actual = {
    functions: fs.readdirSync('test/actual/functions/'),
    mixins: fs.readdirSync('test/actual/mixins/')
};

describe('functions', function() {
    actual.functions.forEach(function(file) {
        it(path.basename(file, '.css'), function() {
            assert.strictEqual(
                fs.readFileSync(path.join('test/actual/functions', file), 'utf8'),
                fs.readFileSync(path.join('test/expected/functions', file), 'utf8')
            );
        });
    });
});

describe('mixins', function() {
    actual.mixins.forEach(function(file) {
        it(path.basename(file, '.css'), function() {
            assert.strictEqual(
                fs.readFileSync(path.join('test/actual/mixins', file), 'utf8'),
                fs.readFileSync(path.join('test/expected/mixins', file), 'utf8')
            );
        });
    });
});

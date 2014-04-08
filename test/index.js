'use strict';

var assert = require('assert');
var fs = require('fs');
var path = require('path');

var actual = {
    functions: fs.readdirSync('test/actual/functions/'),
    mixins: fs.readdirSync('test/actual/mixins/')
};

describe('lib', function() {
    it('should compile functions', function() {
        actual.functions.forEach(function(file) {
            assert.strictEqual(
                fs.readFileSync(path.join('test/actual/functions', file), 'utf8'),
                fs.readFileSync(path.join('test/expected/functions', file), 'utf8')
            );
        });
    });

    it('should compile mixins', function() {
        actual.mixins.forEach(function(file) {
            assert.strictEqual(
                fs.readFileSync(path.join('test/actual/mixins', file), 'utf8'),
                fs.readFileSync(path.join('test/expected/mixins', file), 'utf8')
            );
        });
    });
});


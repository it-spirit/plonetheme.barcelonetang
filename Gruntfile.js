module.exports = function (grunt) {
  'use strict';
  grunt.initConfig({
    pkg: grunt.file.readJSON('package.json'),
    // we could just concatenate everything, really
    // but we like to have it the complex way.
    // also, in this way we do not have to worry
    // about putting files in the correct order
    // (the dependency tree is walked by r.js)
    less: {
      dev: {
        options: {
          compress: false,
          paths: [],
          strictMath: false,
          sourceMap: true,
          sourceMapFileInline: true
        },
        files: {
          'less/theme.css': 'less/theme.less',
        }
      },
      dist: {
        options: {
          compress: true,
          paths: [],
          strictMath: false,
          sourceMap: false,
        },
        files: {
          'less/theme.css': 'less/theme.less',
        }
      }
    },
    postcss: {
      options: {
        map: false,
        processors: [
          require('autoprefixer')({
            browsers: ['last 2 versions']
          })
        ]
      },
      dev: {
        options: {
          map: true,
        },
        src: 'less/*.css'
      },
      dist: {
        map: false,
        src: 'less/*.css'
      }
    },
    watch: {
      less: {
        files: [
          'less/*.less',
          'less/**/*.less'
        ],
        tasks: ['less:dev', 'postcss:dev']
      }
    },
    browserSync: {
      html: {
        bsFiles: {
          src : [
            'less/*.css',
            '*.html'
          ]
        },
        options: {
          watchTask: true,
          debugInfo: true,
          online: true,
          server: {
            baseDir: "."
          },
        }
      },
      plone: {
        bsFiles: {
          src : [
            'less/*.css',
            'rules/*.xml',
            '*.html',
            '*.xml'
          ]
        },
        options: {
          watchTask: true,
          debugInfo: true,
          proxy: "localhost:8080",
          reloadDelay: 3000,
          // reloadDebounce: 2000,
          online: true
        }
      }
    }
  });


  // grunt.loadTasks('tasks');
  grunt.loadNpmTasks('grunt-browser-sync');
  grunt.loadNpmTasks('grunt-contrib-less');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-postcss');

  // CWD to theme folder
  grunt.file.setBase('./src/plonetheme/barcelonetang/theme');

  grunt.registerTask('release', ['less:dist', 'postcss:dist']);
  grunt.registerTask('compile', ['less:dev', 'postcss:dev']);
  grunt.registerTask('default', ['release']);
  grunt.registerTask('bsync', ['browserSync:html', 'watch']);
  grunt.registerTask('bsync-plone', ['browserSync:plone', 'watch']);
};

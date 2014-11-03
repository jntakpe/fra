/**
 * Fichier de configuration de Grunt permettant de builder les ressources 'statiques'
 *
 * @param grunt
 * @author jntakpe
 */
module.exports = function (grunt) {
    'use strict';
    grunt.util.linefeed = '\n';

    grunt.initConfig();

    // Load plugins
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-bower-task');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-copy');


    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        bowerrc: grunt.file.readJSON('.bowerrc'),
        dirs: {
            bowerRes: '<%= bowerrc.directory %>',
            tmpDir: 'src/main/webapp/static/tmp'
        },

        /** Tasks **/
        clean: {
            all: ['<%= dirs.tmpDir %>']
        },

        bower: {
            install: {
                options: {
                    targetDir: '<%= dirs.bowerRes %>',
                    cleanTargetDir: true,
                    layout: 'byComponent',
                    install: true,
                    copy: false,
                    verbose: true
                }
            }
        },

        concat: {
            jscore: {
                options: {
                    stripBanners: {
                        block: true
                    },
                    src: [
                        '<%= dirs.bowerRes %>/jquery/dist/jquery.min.js',
                        '<%= dirs.bowerRes %>/boostrap/dist/js/boostrap.min.js',
                        '<%= dirs.bowerRes %>/angular/angular.min.js',
                        '<%= dirs.bowerRes %>/angular-resource/angular-resource.min.js',
                        '<%= dirs.bowerRes %>/angular-route/angular-route.min.js',
                        '<%= dirs.bowerRes %>/angular-messages/angular-messages.min.js',
                        '<%= dirs.bowerRes %>/angular-bootstrap/ui-bootstrap-tpls.min.js'
                    ],
                    dest: '<%= dirs.tmpDir %>/js/jscore.min.js'
                }
            },
            csscore: {
                options: {
                    stripBanners: {
                        block: true
                    },
                    src: [
                        '<%= dirs.bowerRes %>/boostrap/dist/css/boostrap.min.css',
                        '<%= dirs.bowerRes %>/font-awesome/css/font-awesome.min.css'
                    ],
                    dest: '<%= dirs.tmpDir %>/css/csscore.min.css'
                }
            }
        },
        copy: {
            fonts: {
                files: [
                    {
                        expand: true, flatten: true, src: [
                        '<%= dirs.bowerRes %>/boostrap/dist/fonts/*',
                        '<%= dirs.bowerRes %>/font-awesome/fonts/*'
                    ], dest: '<%= dirs.tmpDir %>/fonts', filter: 'isFile'
                    }
                ]
            }
        }

    });

    grunt.registerTask('default', ['clean:all', 'bower:install', 'concat:jscore', 'concat:csscore']);
};
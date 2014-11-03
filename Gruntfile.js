/**
 * Fichier de configuration de Grunt permettant de builder les ressources 'statiques'
 *
 * @param grunt
 * @author ntakpe_j
 */
module.exports = function (grunt) {
    'use strict';
    grunt.util.linefeed = '\n';

    grunt.initConfig({
        pkg: grunt.file.readJSON('package.json'),
        bowerrc: grunt.file.readJSON('.bowerrc'),

        // Path configuration from Gruntfile.js
        dirs: {
            bowerRes: '<%= bowerrc.directory %>',
            target: 'src/main/webapp/static'
        },

        /********************************** Tasks **********************************/

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
            jsCore: {
                options: {
                    stripBanners: {
                        block: true
                    },
                    banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - Librairies tierces - ' +
                    '<%= grunt.template.today("yyyy-mm-dd") %> */\n'
                },
                src: [
                    '<%= dirs.bowerRes %>/jquery/dist/jquery.min.js',
                    '<%= dirs.bowerRes %>/bootstrap/dist/js/bootstrap.min.js'
                ],
                dest: '<%= dirs.target %>/js/js-core.min.js'
            },
            cssCore: {
                options: {
                    stripBanners: {
                        block: true
                    },
                    banner: '/*! <%= pkg.name %> - v<%= pkg.version %> - Librairies tierces - ' +
                    '<%= grunt.template.today("yyyy-mm-dd") %> */\n'
                },
                src: [
                    '<%= dirs.bowerRes %>/bootstrap/dist/css/bootstrap.min.css',
                    '<%= dirs.bowerRes %>/font-awesome/css/font-awesome.min.css'
                ],
                dest: '<%= dirs.target %>/css/css-core.min.css'
            }
        },

        copy: {
            fonts: {
                files: [
                    {
                        expand: true, flatten: true, src: [
                        '<%= dirs.bowerRes %>/bootstrap/dist/fonts/*',
                        '<%= dirs.bowerRes %>/font-awesome/fonts/*'
                    ], dest: '<%= dirs.target %>/fonts', filter: 'isFile'
                    }
                ]
            }
        }
    });

    // Load plugins
    grunt.loadNpmTasks('grunt-contrib-clean');
    grunt.loadNpmTasks('grunt-bower-task');
    grunt.loadNpmTasks('grunt-contrib-concat');
    grunt.loadNpmTasks('grunt-contrib-uglify');
    grunt.loadNpmTasks('grunt-contrib-cssmin');
    grunt.loadNpmTasks('grunt-contrib-copy');

    // Callable tasks
    grunt.registerTask('default', ['bower:install', 'concat:jsCore', 'concat:cssCore', 'copy:fonts']);
};
module.exports = function(grunt) {
  
  grunt.initConfig({
    middleman: {
      options: {
        command: "server",
        useBundle: true,
        environment: "development",
        host: "0.0.0.0",
        port: 4567,
        glob: false,
        verbose: false,
        clean: false,
        env: {}
      },
      server: {},
      build: {
        options: {
          command: "build"
        }
      }
    }
  });
  
  grunt.loadNpmTasks('grunt-middleman');
  
  grunt.registerTask('default', ['middleman']);
};

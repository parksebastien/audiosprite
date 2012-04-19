winston = require 'winston'

optimist = require('optimist')
  .options('output', alias: 'o', default: 'output', describe: 'Name for the output file.')
  .options('log', alias: 'l', default: 'info', describe: 'Log level (debug, info, notice, warning, error).')
argv = optimist.argv

winston.setLevels winston.config.syslog.levels
winston.remove winston.transports.Console
winston.add winston.transports.Console, colorize: true, level: argv.log, handleExceptions: true


winston.debug 'Parsed arguments', argv


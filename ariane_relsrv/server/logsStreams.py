import logging
import time

__author__ = 'mffrench'

LOGGER = logging.getLogger(__name__)

class LogsStreamer(object):

    @staticmethod
    def generate_debug(socketio):
        with open('/var/log/ariane/ariane_relsrv_debug.log') as f:
            while True:
                time.sleep(0.1)
                t = str(time.clock())
                line = f.read()
                # LOGGER.debug("LogsStreamer.generate_error - " + line)
                socketio.emit('message', {'data': line, 'time': t}, namespace='/streaming/logs')

trigger triggerAccount3 on Account (before update) {
    system.debug('before update trigger called');
}
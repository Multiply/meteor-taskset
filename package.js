Package.describe({
	version : '0.1.0',
	summary : 'Set the affinity level of Meteor with taskset',
	git     : 'https://github.com/Multiply/meteor-taskset.git'
});

Package.onUse(function (api) {
	api.use('coffeescript@1.0.0', 'server');
	api.addFiles('taskset.coffee', 'server');
});

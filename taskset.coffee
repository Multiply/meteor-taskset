if process.env.METEOR_TASKSET? and +process.env.METEOR_TASKSET >= 0
	exec     = Npm.require('child_process').exec
	affinity = +process.env.METEOR_TASKSET - 1

	exec "taskset -pc #{affinity} #{process.pid}", (err, stdout, stderr) ->
		if err or stderr
			console.error "Taskset: #{process.env.METEOR_TASKSET} - error"
		else
			console.log "Taskset: #{process.env.METEOR_TASKSET} - success"
else
	console.log "Taskset: Set affinity using the 'METEOR_TASKSET' environment variable"

<?php

use Illuminate\Console\Command;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Input\InputArgument;

class CronRunCommand extends Command {

	/**
	 * The console command name.
	 *
	 * @var string
	 */
	protected $name = 'cron:run';

	/**
	 * The console command description.
	 *
	 * @var string
	 */
	protected $description = 'Run the scheduler';

	/**
	 * Current timestamp when command is called.
	 *
	 * @var integer
	 */
	protected $timestamp;

	/**
	 * Hold messages that get logged
	 *
	 * @var array
	 */
	protected $messages = array();

	/**
	 * Specify the time of day that daily tasks get run
	 *
	 * @var string [HH:MM]
	 */
	protected $runAt = '00:00';

	/**
	 * Create a new command instance.
	 *
	 * @return void
	 */
	public function __construct()
	{
		parent::__construct();

		$this->timestamp = time();
	}

	/**
	 * Execute the console command.
	 *
	 * @return mixed
	 */
	public function fire()
	{
		Artisan::call('vatsim:atc');
		Artisan::call('vatsim:pilots');
		Artisan::call('weather:pull');

		$this->finish();
	}

	protected function finish()
	{
		$executionTime = round(((microtime(true) - $_SERVER['REQUEST_TIME_FLOAT'])), 2);
		Log::info('Cron: execution time: ' . $executionTime . ' | ' . implode(', ', $this->messages));
		echo "Cron ran for ".$executionTime." seconds! \n";
	}

	/**
	 * AVAILABLE SCHEDULES
	 */

	protected function everyFiveMinutes(callable $callback)
	{
		if((int) date('i', $this->timestamp) % 5 === 0) call_user_func($callback);
	}

	protected function everyTenMinutes(callable $callback)
	{
		if((int) date('i', $this->timestamp) % 10 === 0) call_user_func($callback);
	}

	protected function everyFifteenMinutes(callable $callback)
	{
		if((int) date('i', $this->timestamp) % 15 === 0) call_user_func($callback);
	}

	protected function everyThirtyMinutes(callable $callback)
	{
		if((int) date('i', $this->timestamp) % 30 === 0) call_user_func($callback);
	}

	/**
	 * Called every full hour
	 */
	protected function hourly(callable $callback)
	{
		if(date('i', $this->timestamp) === '00') call_user_func($callback);
	}

	/**
	 * Called every hour at the minute specified
	 *
	 * @param  integer $minute
	 */
	protected function hourlyAt($minute, callable $callback)
	{
		if((int) date('i', $this->timestamp) === $minute) call_user_func($callback);
	}

	/**
	 * Called every day
	 */
	protected function daily(callable $callback)
	{
		if(date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	/**
	 * Called every day at the 24h-format time specified
	 *
	 * @param  string $time [HH:MM]
	 */
	protected function dailyAt($time, callable $callback)
	{
		if(date('H:i', $this->timestamp) === $time) call_user_func($callback);
	}

	/**
	 * Called every day at 12:00am and 12:00pm
	 */
	protected function twiceDaily(callable $callback)
	{
		if(date('h:i', $this->timestamp) === '12:00') call_user_func($callback);
	}

	/**
	 * Called every weekday
	 */
	protected function weekdays(callable $callback)
	{
		$days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri'];
		if(in_array(date('D', $this->timestamp), $days) && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function mondays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Mon' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function tuesdays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Tue' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function wednesdays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Wed' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function thursdays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Thu' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function fridays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Fri' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function saturdays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Sat' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	protected function sundays(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Sun' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	/**
	 * Called once every week (basically the same as using sundays() above...)
	 */
	protected function weekly(callable $callback)
	{
		if(date('D', $this->timestamp) === 'Sun' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	/**
	 * Called once every week at the specified day and time
	 *
	 * @param  string $day  [Three letter format (Mon, Tue, ...)]
	 * @param  string $time [HH:MM]
	 */
	protected function weeklyOn($day, $time, callable $callback)
	{
		if(date('D', $this->timestamp) === $day && date('H:i', $this->timestamp) === $time) call_user_func($callback);
	}

	/**
	 * Called each month on the 1st
	 */
	protected function monthly(callable $callback)
	{
		if(date('d', $this->timestamp) === '01' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

	/**
	 * Called each year on the 1st of January
	 */
	protected function yearly(callable $callback)
	{
		if(date('m', $this->timestamp) === '01' && date('d', $this->timestamp) === '01' && date('H:i', $this->timestamp) === $this->runAt) call_user_func($callback);
	}

}
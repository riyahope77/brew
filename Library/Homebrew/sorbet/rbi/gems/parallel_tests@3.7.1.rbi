# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `parallel_tests` gem.
# Please instead update this file by running `bin/tapioca gem parallel_tests`.

# typed: true

module ParallelTests
  class << self
    def bundler_enabled?; end
    def delta; end
    def determine_number_of_processes(count); end
    def first_process?; end
    def last_process?; end
    def now; end
    def number_of_running_processes; end
    def pid_file_path; end
    def pids; end
    def stop_all_processes; end
    def wait_for_other_processes_to_finish; end
    def with_pid_file; end
    def with_ruby_binary(command); end
  end
end

class ParallelTests::CLI
  def run(argv); end

  private

  def any_test_failed?(test_results); end
  def append_test_options(options, argv); end
  def detailed_duration(seconds); end
  def execute_in_parallel(items, num_processes, options); end
  def execute_shell_command_in_parallel(command, num_processes, options); end
  def extract_file_paths(argv); end
  def extract_test_options(argv); end
  def final_fail_message; end
  def first_is_1?; end
  def handle_interrupt; end
  def load_runner(type); end
  def lock(lockfile); end
  def parse_options!(argv); end
  def pluralize(n, singular); end
  def report_failure_rerun_commmand(test_results, options); end
  def report_number_of_tests(groups); end
  def report_results(test_results, options); end
  def report_time_taken(&block); end
  def reprint_output(result, lockfile); end
  def run_tests(group, process_number, num_processes, options); end
  def run_tests_in_parallel(num_processes, options); end
  def simulate_output_for_ci(simulate); end
  def use_colors?; end
end

class ParallelTests::Grouper
  class << self
    def by_scenarios(tests, num_groups, options = T.unsafe(nil)); end
    def by_steps(tests, num_groups, options); end
    def in_even_groups_by_size(items, num_groups, options = T.unsafe(nil)); end

    private

    def add_to_group(group, item, size); end
    def group_by_features_with_steps(tests, options); end
    def group_by_scenarios(tests, options = T.unsafe(nil)); end
    def group_features_by_size(items, groups_to_fill); end
    def isolate_count(options); end
    def items_to_group(items); end
    def largest_first(files); end
    def smallest_group(groups); end
    def specify_groups(items, num_groups, options, groups); end
  end
end

class ParallelTests::Pids
  def initialize(file_path); end

  def add(pid); end
  def all; end
  def count; end
  def delete(pid); end
  def file_path; end
  def mutex; end

  private

  def clear; end
  def pids; end
  def read; end
  def save; end
  def sync(&block); end
end

ParallelTests::RUBY_BINARY = T.let(T.unsafe(nil), String)
ParallelTests::VERSION = T.let(T.unsafe(nil), String)

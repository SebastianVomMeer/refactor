module GroupHelpers

	def setup_test_project
		create_test_project
		go_to_test_project_path
	end

	def test_project_path
		'tmp/test_project'
	end

	def file_contents(file_path)
		file = File.open(file_path)
		contents = file.read
		file.close
		contents
	end


	private

	def create_test_project
		FileUtils.remove_dir(test_project_path, true)
		FileUtils.mkdir_p(test_project_path)
    FileUtils.cp_r('spec/test_project/.', test_project_path)
	end

	def go_to_test_project_path
    Dir.chdir(test_project_path)
  end

end
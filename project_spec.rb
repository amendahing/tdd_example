require_relative 'project' # include our Project class in our spec file
RSpec.describe Project do
  before(:each) do
    @project1 = Project.new('Project 1', 'description 1', 'Amenda')
    @project2 = Project.new('Project 2', 'description 2', 'Amenda')
    @project3 = Project.new('Project 3', 'description 3', 'Cat')

    # create a new project and make sure we can set the name attribute
  end

  it 'has a getter and setter for name attribute' do
    @project1.name = "Changed Name" # this line would fail if our class did not have a setter method
    expect(@project1.name).to eq("Changed Name") # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    expect(@project1.owner).to eq('Amenda')
  end

  it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
  end

  it 'has a method add_task to push to @tasks' do
      @project3.add_task('laundry')
      expect(@project3.tasks).to eq(['laundry'])

  end

end

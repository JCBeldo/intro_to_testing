require 'rspec'
require './lib/student'

RSpec.describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      student = Student.new('Penelope')

      # expect(student).to be_instance_of(Student)
      expect(student).to be_a(Student)
    end
  
    it 'has name' do
      student = Student.new('Penelope')
      student_2 = Student.new('Bill')

      expect(student.name).to eq('Penelope')
      expect(student_2.name).to eq('Bill')
    end
    require 'pry'; binding.pry

    it 'has cookies' do
      student = Student.new('Penelope')
      student_2 = Student.new('Bill')

      expect(student.cookies).to eq([])
      expect(student_2.cookies).to eq([])
    end
  end

  describe '#add_cookie' do
    it 'can add cookie' do
      student = Student.new('Penelope')

      student.add_cookie(['Chocolate Chunk'])
      student.add_cookie(['Snickerdoodle'])
    end
  end
end
# require 'pry'; binding.pry
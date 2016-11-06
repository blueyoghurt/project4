class Card < ApplicationRecord
  belongs_to :student
  belongs_to :template
  has_many :tasktrackers
  has_many :tasks, through: :tasktracker

  after_create :populate_task_tracker

  def populate_task_tracker
    tasks = Task.where(:template_id => self.template_id)
    for i in (0...tasks.length) do
      Tasktracker.create( :card_id => self.id,
                          :task_id => tasks[i].id
      )
    end
  end


end

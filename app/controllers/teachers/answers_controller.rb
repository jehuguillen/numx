class Teachers::AnswersController < ApplicationController
  before_action :authenticate_teacher!
end

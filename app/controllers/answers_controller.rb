class AnswersController < ApplicationController
	before_action :unautorize_student!
end

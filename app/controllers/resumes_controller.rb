class ResumesController < ApplicationController
  def index
    @resumes = Resume.all
  end

  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
      redirect_to resumes_path, notice: "The file #{@resume.name} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @resume = Resume.find(params[:id])
    @resume.destroy
    redirect_to resumes_path, notice:  "The resume #{@resume.name} has been deleted."
  end

  def download

    @resume = Resume.find(params[:id])
    send_file "#{Rails.root}/public/uploads/resume/attachment/#{@resume.id}/#{@resume.id}.docx",
              :filename => "#{@resume.name}.docx",
              :type => 'docx/txt; charset=utf-8',
              :x_sendfile=>true
  end

  def convert
    @resume = Resume.new
  end

  private
  def resume_params
    params.require(:resume).permit(:name, :attachment)
  end
end
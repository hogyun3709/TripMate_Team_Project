class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  before_save :translate

  private

  def translate
    case job
    when 'fman'
      self.job = '낚시꾼'
    when 'sman'
      self.job = '창지기'
    when 'lman'
      self.job = '등대지기'
    when 'wman'
      self.job = '파도잡이'
    when 'gman'
      self.job = '길잡이'
    end
  end
end

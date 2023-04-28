class Task < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20 }
    validates :sarting_date, presence: true
    validates :ending_date, presence: true
    validates :memo, length: { maximum: 500 }

    #validate :start_end_check

    #def start_end_check
    #    errors.add(:ending_date, "は開始日より前の日付は登録できません。") unless
    #    self.sarting_date <= self.ending_date
    #    end

    validate :date_before_finish

    def date_before_finish
        return if ending_date.blank? || sarting_date.blank?
        errors.add(:ending_date, "は開始日以降のものを選択してください") unless
        self.sarting_date <= self.ending_date
    end

end

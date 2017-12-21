class Question < ApplicationRecord
	validates :dominance, presence: true
	validates :influence, presence: true
	validates :steadiness, presence: true
	validates :compliance, presence: true
	validates :no, presence: true

	validates :no, numericality: { only_integer: true ,
	message: "Inputan no harus berupa angka"}

	#validates :no, inclusion: { in: %w(1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24),
    #message: "Batas soal hanya 24 soal" }

	validates :no, uniqueness: true
	resourcify
end

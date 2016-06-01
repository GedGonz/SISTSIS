class RegimenAsignatura < ActiveRecord::Base
  belongs_to :Asignatura
  belongs_to :Regime
end

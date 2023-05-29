class User < ApplicationRecord
  validates :tipo_persona, presence: true
  validates :documento, presence: true, numericality: { only_integer: true }
  validates :fecha_emision, presence: true
  validates :fecha_vencimiento, presence: true
  validates :nombre, presence: true, format: { with: /\A[a-zA-Z0-9ñÑáéíóúÁÉÍÓÚüÜ\s]+\z/ }
  validates :correo, presence: true, format: { with: /\A[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\z/ }
  validates :telefono, presence: true, format: { with: /\A0[0-9]+\z/ }
  validates :telefono_secundario, presence: false
end

class InterfiCapital::Dto::VehicleSecurity < InterfiCapital::Dto::Base

  attr_accessor :usage, :make, :model, :level
  attr_accessor :year_of_manufacture, :month_of_manufacture
  attr_accessor :vehicle_identification_number
  attr_accessor :colour, :body_type, :transmission
  attr_accessor :four_wheel_drive, :doors, :cylinders, :capacity
  attr_accessor :current_registration_number, :post_settlement_registration_number
  attr_accessor :first_registered, :registration_expires
  attr_accessor :insured, :insurer, :insurable_value, :insurance_expires
  attr_accessor :insurance_verified, :insurance_policy_number, :insured_amount
  attr_accessor :premium_amount, :pruchase_price, :estimated_value, :estimate_date

  USAGE = ['Personal', 'Commercial'].freeze

  MAKE = [
    'Abarth', 'Alfa Romeo', 'Aston Martin', 'Audi', 'BMW', 'Chrysler', 'Citroen', 'Daewoo', 'Daihatsu',
    'Datsun', 'DeLorean', 'Dodge', 'Eunos', 'Fiat', 'Ford', 'Great Wall', 'Holden', 'Honda', 'Hyundai',
    'Infiniti', 'Jaguar', 'Jeep', 'Kia', 'Land Rover', 'Lexus', 'M.G.', 'Mahindra', 'Mazda', 'Mercedes-Benz',
    'Mini', 'Mitsubishi', 'Nissan', 'Opel', 'Peugeot', 'Proton', 'Renault', 'Saab', 'Seat', 'Skoda', 'Smart',
    'Ssangyong', 'Subaru', 'Suzuki', 'Tata', 'Toyota', 'Volkswagen', 'Volvo', 'Vauxhall', 'Harley-Davidson',
    'Ducati', 'Subaru Forester', 'Isuzu'
  ].freeze

  MODEL = [
    'MY17', '500', '695', '1300', '147', '156', '159', '1600', '164', '166', '1750', '2000', 'Alfa 33',
    'Alfa 75', 'Alfasud', 'Alfetta', 'Brera', 'Giulia', 'Giulietta', 'GT', 'GTV', 'MiTo', 'Montreal',
    'Spider', 'Sprint', 'DB4', 'DB7', 'DB9', 'DBS', 'Lagonda', 'Rapide', 'V12', 'V8', 'Vanquish', 'Virage',
    'FPV', 'G6', 'Transit', 'Caprice', 'Combo', 'Epica', 'Insight', 'Legend', 'CR-Z', '6', 'MX-5', 'RX-8',
    'CX-5', 'Canter', 'Colt', 'Cordia', 'Express', 'L200', 'L300', 'Magna', 'Nimbus', 'Sigma', 'Starion',
    'Starwagon', 'ASX', 'i-MiEV', 'Pajero Sport', 'FK', 'FK4', 'FM', 'FP4', 'FV4', 'Coaster', 'Fortuner',
    'Hiace', 'Prius', 'Prius V', 'Prius-C', 'Rav-4', 'Tarago', 'Excel', 'Gensis', 'HD45', 'HD65', 'HD75',
    'i40', 'iLOAD', 'Santa Fe', 'Sonata', 'Pro Cee\'d', 'Rondo', 'K2700', 'Magentis', 'Pregio', 'A1', 'A7',
    'A8', 'Q5', 'Q7', 'R8', 'RS Q3', 'RS3', 'RS4', 'RS5', 'RS6', 'RS7', 'S1', 'S4', 'S5', 'S6', 'S7', 'S8',
    'SQ5', 'SQ5 Plus', 'TT', '1', '2', '3', '4', '5', '6', '7', 'i3', 'i8', 'M2', 'M3', 'M4', 'M5', 'M6',
    'X1', 'X3', 'X4', 'X5', 'X6', 'A180', 'A200', 'A250', 'A45', 'Actros', 'Atego', 'Axor', 'B180', 'B200',
    'B250', 'C180', 'C200', 'C300', 'C350', 'C63', 'CLA', 'CLS', 'E200', 'E220', 'E250', 'E250D', 'E300',
    'E350', 'E400', 'E63', 'G', 'GL', 'GLA', 'GLC', 'GLE', 'GLS', 'S300', 'S350', 'S400', 'S500', 'SL',
    'SL600', 'SLK', 'SLS', 'Sprinter', 'V', 'Valenti', 'Vito', 'Fabia', 'Octavia', 'Rapid Spaceback',
    'Superb', 'Yeti', 'Kizashi', 'Amarok', 'Dualis', 'Panigale', 'E87', 'Workmate', 'XV', 'XLHS12', 'Swift',
    '118d Sport Line F20', 'i30', 'Cruze', 'Corolla', 'Cerato', 'Calais', 'FJ Cruiser', 'Sorento',
    'Territory', 'Kluger', '3', 'Accord', 'Focus', 'Captiva', 'A3', 'Aurion', 'Mondeo', '2', 'Falcon',
    'Triton', 'Camry', 'Rio', 'Odyssey', 'Lancer', 'Hilux', 'A4', 'Elantra', 'CX-9', 'Sportage', 'Barina',
    'Yaris', 'Mirage', 'iX35', 'Fiesta', 'Outlander', 'Accent', 'Ranger', 'Colarado', 'i20', 'Jazz', 'Getz',
    'CX-3', 'Astra', 'HR-V', 'Grand Carnival', 'Kuga', 'A5', 'Berlina', 'Rukus', 'Pajero', 'CR-V',
    'Statesman', '86', 'Soul', 'Barina Spark', 'Tucson', 'Veloster', 'Landcruiser', 'Escape', 'BT-50', 'S3',
    'CX-7', 'City', 'Civic', 'iMAX', 'Carnival', 'Q3', 'C250', 'Picanto', 'A6', 'Optima', '2012 Forester',
    'Patrol', '2015 300L12', 'X-Trail', '300', '2012 Mazda 300', '2017 Koleos', '2010 308', 'Qashqai', 'CHR',
    'B32', 'D-Max', 'Outback', 'Grand Cherokee', 'Navada', 'GSX-S1000', 'Commodore', 'Elgrade'
  ].freeze

  BODY_TYPE = [
    'Hatch', 'Station Wagon', 'Truck', 'Motorcycle', 'Other', 'Tractor', 'Sports Utility Vehicle',
    'Utility', 'Van', 'Coupe', 'Sedan', 'Tricycle'
  ].freeze

  TRANSMISSION = [
    'DSG', 'Semi-Automatic', 'CVT', 'Automatic', 'Manual'
  ].freeze

  validate_reference_field(:usage)
  validate_reference_field(:make)
  validate_reference_field(:model)
  validate_reference_field(:body_type)
  validate_reference_field(:transmission)

end

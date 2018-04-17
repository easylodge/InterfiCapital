class InterfiCapital::Dto::Address < InterfiCapital::Dto::Base

  attr_accessor :format
  attr_accessor :lot_number, :building_name, :floor, :unit
  attr_accessor :street_number, :street_name, :street_type
  attr_accessor :postal_box_details
  attr_accessor :address_line_1, :address_line_2, :address_line_3, :address_line_4
  attr_accessor :suburb_town, :region, :country
  attr_accessor :express_document_source, :express_document_detail, :express_document_number
  attr_accessor :verified

  FORMAT = ['Formatted', 'Unformatted', 'PostalBox', 'Express'].freeze
  STREET_TYPE = [
    'Street North', 'Avenue West', 'Road South', 'Road North', 'Avenue East', 'Street South',
    'Place North', 'Circuit', 'Street West', 'Access', 'Alley', 'Approach', 'Arcade', 'Artery', 'Avenue',
    'Bank', 'Basin', 'Bay', 'Beach', 'Bend', 'Building', 'Boulevard', 'Boardwalk', 'Bowl', 'Brace', 'Brae',
    'Break', 'Bridge', 'Broadway', 'Brook', 'Brow', 'Bypass', 'Canal', 'Causeway', 'Centre', 'Centreway',
    'Chase', 'Circle', 'Circlet', 'Circus', 'Close', 'Common', 'Concourse', 'Copse', 'Corner', 'Corso',
    'Course', 'Court', 'Courtyard', 'Cove', 'Crescent', 'Crest', 'Crief', 'Cross', 'Crossing', 'Culdesac',
    'Curve', 'Dale', 'Deviation', 'Dip', 'Downs', 'Drive', 'Driveway', 'Easement', 'Edge', 'Elbow', 'End',
    'Entrance', 'Esplanade', 'Estate', 'Expressway', 'Extension', 'Fairway', 'Firetrail', 'Follow', 'Ford',
    'Formation', 'Freeway', 'Front', 'Frontage', 'Gap', 'Garden', 'Gardens', 'Gate', 'Gates', 'Gateway',
    'Glade', 'Glen', 'Grange', 'Green', 'Ground', 'Grove', 'Grovet', 'Haven', 'Heath', 'Heights', 'Hill',
    'Hub', 'Highway', 'Interchange', 'Island', 'Junction', 'Key', 'Knoll', 'Lane', 'Line', 'Laneway', 'Link',
    'Lookout', 'Loop', 'Lower', 'Mall', 'Mead', 'Meander', 'Mews', 'Motorway', 'Nook', 'Outlook', 'Overpass',
    'Property', 'Park', 'Parklands', 'Parkway', 'Pass', 'Path', 'Pathway', 'Parade', 'Pier', 'Place', 'Plaza',
    'Pocket', 'Point', 'Port', 'Promenade', 'Pursuit', 'Quad', 'Quadrant', 'Quay', 'Quays', 'Ramble', 'Road',
    'Reach', 'Reserve', 'Rest', 'Retreat', 'Return', 'Ride', 'Ridge', 'Ring', 'Rise', 'Rising', 'Roadway',
    'Rotary', 'Round', 'Route', 'Row', 'Run', 'Serviceway', 'Siding', 'Slope', 'Spur', 'Square', 'Steps',
    'Strand', 'Street', 'Strip', 'Subway', 'Tarn', 'Terrace', 'Throughway', 'Tollway', 'Top', 'Tor', 'Track',
    'Trail', 'Turn', 'Unerpass', 'Vale', 'Valley', 'View', 'Vista', 'Walk', 'Walkway', 'Way', 'Wharf', 'Wynd',
    'Road East', 'Road West', 'Street East'
  ].freeze

  validate_reference_field(:format)
  validate_reference_field(:street_type)

end

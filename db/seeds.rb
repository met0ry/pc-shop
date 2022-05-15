# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

###### Motherboard seeds

Motherboard.create(sku: 'ROG STRIX B550-F Gaming (WI-FI)', brand: 'ASUS', tag: 'ASUS ROG STRIX B550-F Gaming(WI-FI) AMD B550 Motherboard',
                   socket_type: 'AM4', ram_type: 'DDR4', chipset_type: 'AMD B550', max_ram_support: 128, price: 4399, warranty: 24)

Motherboard.last.photo.attach(io: File.open('app/assets/images/Motherboard-1.jpg'), filename: 'Motherboard-1.jpg', content_type: 'image/jpg')


Motherboard.create(sku: 'GIGABYTE GA-A320M-S2H', brand: 'GIGABYTE', tag: 'GIGABYTE GA-A320M-S2H AM4 Micro ATX AMD Motherboard',
                   socket_type: 'AM4+', ram_type: 'DDR4', chipset_type: 'AMD A320', max_ram_support: 32, price: 3599, warranty: 36)
                   
Motherboard.last.photo.attach(io: File.open('app/assets/images/Motherboard-2.jpg'), filename: 'Motherboard-2.jpg', content_type: 'image/jpg')


Motherboard.create(sku: 'B560M PRO-E', brand: 'MSI', tag: 'MSI B560M PRO-E Intel B560 MATX Motherboard',
                   socket_type: 'LGA 1200', ram_type: 'DDR4', chipset_type: 'Intel B560', max_ram_support: 64, price: 7499, warranty: 24)

Motherboard.last.photo.attach(io: File.open('app/assets/images/Motherboard-3.jpg'), filename: 'Motherboard-3.jpg', content_type: 'image/jpg')

###### GraphicCard seeds

GraphicCard.create(sku: 'CERBERUS-GTX1050TI-O4G', brand: 'ASUS', tag: 'ASUS GeForce GTX 1050 Ti CERBERUS-GTX1050TI-O4G 4GB Graphic Card',
                   gpu_series: 'NVIDIA GeForce GTX 10 Series', memory_interface: 128, memory_type: 'GDDR5', memory_size: 6, price: 7499,
                   warranty: 24)

GraphicCard.last.photo.attach(io: File.open('app/assets/images/GraphicCard-1.jpg'), filename: 'GraphicCard-1.jpg', content_type: 'image/jpg')


GraphicCard.create(sku: 'RTX 3080 Advanced OC 10G LHR-V', brand: 'iGame', tag: 'Colorful iGame GeForce RTX 3080 Advanced OC 10G LHR-V Graphic Card',
                   gpu_series: 'iGame Series', memory_interface: 320, memory_type: 'GDDR6X', memory_size: 10, price: 27499,
                   warranty: 36)

GraphicCard.last.photo.attach(io: File.open('app/assets/images/GraphicCard-2.jpg'), filename: 'GraphicCard-2.jpg', content_type: 'image/jpg')


GraphicCard.create(sku: 'GV-N166SOC-6GD', brand: 'Gigabyte', tag: 'Gigabyte GeForce GTX 1660 SUPER OC 6G Gaming Graphic Card GV-N166SOC-6GD',
                   gpu_series: 'NVIDIA GeForce GTX 16 Series', memory_interface: 192, memory_type: 'GDDR6', memory_size: 6, price: 17499,
                   warranty: 12)

GraphicCard.last.photo.attach(io: File.open('app/assets/images/GraphicCard-3.jpg'), filename: 'GraphicCard-3.jpg', content_type: 'image/jpg')


##### PowerSupply seeds

PowerSupply.create(sku: 'Atom V550 IN', brand: 'Antec', tag: 'Antec Atom V550W Non-Modular 550 watt PSU with 120mm Silence Fan Atom V550 IN',
                   wattage: 550, warranty: 12, price: 1799)

PowerSupply.last.photo.attach(io: File.open('app/assets/images/PowerSupply-1.jpg'), filename: 'PowerSupply-1.jpg', content_type: 'image/jpg')


PowerSupply.create(sku: 'MPE-4501-ACABW-BIN', brand: 'Cooler Master', tag: 'Cooler Master MWE 450 Bronze V2 230V SMPS MPE-4501-ACABW-BIN',
                   wattage: 450, energy_conversion_efficiency: 80, warranty: 24, price: 1299)

PowerSupply.last.photo.attach(io: File.open('app/assets/images/PowerSupply-2.jpg'), filename: 'PowerSupply-2.jpg', content_type: 'image/jpg')
                   

PowerSupply.create(sku: 'CP-9020201-IN', brand: 'Corsair', tag: 'Corsair RM1000x 1000W Fully Modular Power Supply CP-9020201-IN',
                   wattage: 1000, price: 3599, warranty: 12, energy_conversion_efficiency: 90)

PowerSupply.last.photo.attach(io: File.open('app/assets/images/PowerSupply-3.jpg'), filename: 'PowerSupply-3.jpg', content_type: 'image/jpg')


##### Processor seeds

Processor.create(sku: 'Ryzen 5 3600', brand: 'AMD', tag: 'AMD Ryzen 5 3600 3rd Gen Desktop Processor 100-100000031BOX',
                 processor_series: 'Ryzen 5', socket_type: 'Socket AM4', cores: 6, threads: 12, base_frequency: 3.6, price: 6599, warranty: 12)

Processor.last.photo.attach(io: File.open('app/assets/images/Processor-1.jpg'), filename: 'Processor-1.jpg', content_type: 'image/jpg')


Processor.create(sku: 'Ryzen 3 3200G', brand: 'AMD', tag: 'AMD Ryzen 3 3200G with Radeon Vega 8 Graphics 3rd Gen Desktop Processor YD3200C5FHBOX',
                 processor_series: 'Ryzen 3', socket_type: 'Socket AM4', cores: 4, threads: 4, base_frequency: 3.6, price: 4999, warranty: 24)

Processor.last.photo.attach(io: File.open('app/assets/images/Processor-2.jpg'), filename: 'Processor-2.jpg', content_type: 'image/jpg')


Processor.create(sku: 'i5-10400F', brand: 'Intel', tag: 'Intel 10th Gen Comet Lake Core i5-10400F Processor 12M Cache, up to 4.30 GHz',
                 processor_series: 'Comet Lake', socket_type: 'LGA 1200', cores: 6, threads: 12, base_frequency: 2.90, price: 8999, warranty: 36)

Processor.last.photo.attach(io: File.open('app/assets/images/Processor-3.jpg'), filename: 'Processor-3.jpg', content_type: 'image/jpg')

##### Ram seeds

Ram.create(sku: 'ADATA XPG Gammix D30', brand: 'ADATA', tag: 'ADATA XPG Gammix D30 Series 8GB (8GBX1) DDR4 3200MHz Red RAM AX4U3200W8G16A-SR30',
           memory_series: 'XPG Gammix D30 Series', memory_type: 'DDR4', size: '8GBx1', speed: 3200, price: 1999, warranty: 12)

Ram.last.photo.attach(io: File.open('app/assets/images/Ram-1.jpg'), filename: 'Ram-1.jpg', content_type: 'image/jpg')

Ram.create(sku: 'Corsair Vengeance LPX 8GB', brand: 'Corsair', tag: 'Corsair Vengeance LPX 8GB (8GBx1) 3200MHz DDR4 Desktop Memory CMK8GX4M1E3200C16',
           memory_series: 'Vengeance LPX', memory_type: 'DDR4', size: '8GBx1', speed: 3200, price: 2599, warranty: 12)


Ram.last.photo.attach(io: File.open('app/assets/images/Ram-2.jpg'), filename: 'Ram-2.jpg', content_type: 'image/jpg')

Ram.create(sku: 'Crucial Ballistix 8GB', brand: 'Crucial', tag: 'Crucial Ballistix 16GB DDR4-3600 Desktop Gaming Memory (White) BL8G36C16U4W',
           memory_series: 'Ballistix', memory_type: 'DDR4', size: '16GBx1', speed: 3600, price: 4999, warranty: 12)


Ram.last.photo.attach(io: File.open('app/assets/images/Ram-3.jpg'), filename: 'Ram-3.jpg', content_type: 'image/jpg')

##### Ssd seeds

Ssd.create(sku: 'ADATA FALCON 1TB', brand: 'ADATA', tag: 'ADATA FALCON 1TB PCIe Gen3x4 M.2 2280 Solid State Drive AFALCON-1T-C',
           interface: 'PCIe Gen3x4', form_factor: 'M.2', capacity: 1000, read_speed: 3100, write_speed: 1500, price: 7999, warranty: 12)

Ssd.last.photo.attach(io: File.open('app/assets/images/Ssd-1.jpg'), filename: 'Ssd-1.jpg', content_type: 'image/jpg')


Ssd.create(sku: 'Crucial 120GB BX500', brand: 'Crucial', tag: 'Crucial 120GB BX500 SATA III 2.5″ Internal SSD CT120BX500SSD1',
           interface: 'SATA III', form_factor: '2.5″', capacity: 120, read_speed: 540, write_speed: 500, price: 1999, warranty: 12)

Ssd.last.photo.attach(io: File.open('app/assets/images/Ssd-2.jpg'), filename: 'Ssd-2.jpg', content_type: 'image/jpg')


Ssd.create(sku: 'Kingston A1000 M.2 2280', brand: 'Kingston', tag: 'Kingston A1000 M.2 2280 240GB PCI-Express 3.0 x2 3D TLC SSD SA1000M8/240G',
           interface: 'PCIe 3.0', form_factor: 'M.2', capacity: 240, read_speed: 1500, write_speed: 800, price: 2999, warranty: 12)

Ssd.last.photo.attach(io: File.open('app/assets/images/Ssd-3.jpg'), filename: 'Ssd-3.jpg', content_type: 'image/jpg')



ActiveAdmin.register CarType do
  permit_params :name, :performance, :thermal_management, :thermal_comfort, :safety

end
[Mesh]
  type = GeneratedMesh
  dim = 3
  nx = 30
  ny = 30
  nz = 30
  xmin = -5
  xmax = 5
  ymin = -5
  ymax = 5
  zmin = -5
  zmax = 5
  elem_type = HEX8
[]

[Variables]
  [./temp]
    order = FIRST
    family = LAGRANGE
  [../]
[]

[Kernels]
  [./diff]
    type = HeatConduction
    variable = temp
  [../]
[]



[Materials]
  [./ther_con]
    type = HeatConductionMaterial
    thermal_conductivity = 1
    specific_heat = 1
  [../]
[]




[BCs]
  [./bottom]
    type = DirichletBC
    variable = temp
    boundary = 'bottom'
    value = 1
  [../]

  [./top]
    type = DirichletBC
    variable = temp
    boundary = 'top'
    value = 0
  [../]
[]

[Executioner]
  type = Steady
  solve_type = 'PJFNK'
[]

[Outputs]
  execute_on = 'timestep_end'
  exodus = true
[]

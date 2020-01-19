# frozen_string_literal: true


colors = %w[Vermelho Amarelo Laranja Verde Oliva Azul Magenta Violeta Celeste Ciano Turquesa Rosa]
colors.each { |color| Color.create! name: color }

sizes = %w[P M G GG XL XXL]
sizes.each { |size| Size.create! name: size }

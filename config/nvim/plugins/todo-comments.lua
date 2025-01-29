local colores = require("gruvbox").palette

require("todo-comments").setup({
	keywords = {
		ERROR = { icon = " ", color = colores.neutral_red, alt = { "ERROR" } },
		TAREA = { icon = " ", color = colores.bright_red, alt = { "PENDIENTE", "TODO" } },
		TRUCO = { icon = " ", color = colores.neutral_aqua, alt = { "HACK" } },
		ADVER = { icon = " ", color = colores.neutral_yellow, alt = { "ADVERTENCIA", "WARN" } },
		MEJOR = { icon = " ", color = colores.neutral_purple, alt = { "MEJORAR", "OPTIMIZAR", "PERF" } },
		NOTAS = { icon = " ", color = colores.neutral_green, alt = { "INFO", "NOTA" } },
		PRUEB = { icon = "⏲ ", color = colores.bright_green, alt = { "PRUEBA", "PROBA", "TEST" } },
	},
	merge_keywords = false,
})

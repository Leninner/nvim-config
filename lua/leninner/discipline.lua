local M = {}

function M.cowboy()
  --- @type table?
  local id
  local ok = true
  local key_counters = {}
  local key_timers = {}

  -- Inicializa contadores y temporizadores para cada tecla
  for _, key in ipairs({ "h", "j", "k", "l", "+", "-" }) do
    key_counters[key] = 0
    key_timers[key] = vim.loop.new_timer()

    vim.keymap.set("n", key, function()
      -- Reinicia contador si hay un count explícito
      if vim.v.count > 0 then
        key_counters[key] = 0
      end

      -- Verifica si ha llegado al límite de 15
      if key_counters[key] >= 15 then
        ok, id = pcall(vim.notify, "Hold it cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          keep = function()
            return key_counters[key] >= 15
          end,
        })

        if not ok then
          id = nil
          return key
        end
      else
        -- Incrementa el contador y configura un temporizador para reiniciarlo
        key_counters[key] = key_counters[key] + 1

        -- Reinicia el temporizador si ya estaba en uso
        if key_timers[key]:is_active() then
          key_timers[key]:stop()
        end

        key_timers[key]:start(2000, 0, function()
          key_counters[key] = 0
        end)

        return key
      end
    end, { expr = true, silent = true })
  end

  return "Cowboy discipline mode activated"
end

return M

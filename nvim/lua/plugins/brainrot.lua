return {
  "sahaj-b/brainrot.nvim",
  event = "VeryLazy",
  opts = {
    phonk_time = 1.5, -- seconds the phonk/image overlay stays
    disable_phonk = false, -- skip phonk/overlay on "no errors"
    sound_enabled = true, -- enable sounds
    image_enabled = true, -- enable images (needs image.nvim)
    volume = 50, -- 0..100
    lsp_wide = true,
    min_error_duration = 4,
  },
}

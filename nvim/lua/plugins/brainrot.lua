return {
  "sahaj-b/brainrot.nvim",
  event = "VeryLazy",
  opts = {
    phonk_time = 1.5, -- seconds the phonk/image overlay stays
    disable_phonk = true, -- skip phonk/overlay on "no errors"
    sound_enabled = false, -- enable sounds
    image_enabled = false, -- enable images (needs image.nvim)
    volume = 50, -- 0..100
    lsp_wide = true,
    min_error_duration = 4,
  },
}

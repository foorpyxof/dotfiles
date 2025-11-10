return {
  "sahaj-b/brainrot.nvim",
  event = "VeryLazy",
  opts = {
    phonk_time = 2.5, -- seconds the phonk/image overlay stays
    disable_phonk = true, -- skip phonk/overlay on "no errors"
    sound_enabled = true, -- enable sounds
    image_enabled = true, -- enable images (needs image.nvim)
    volume = 50, -- 0..100
  },
}

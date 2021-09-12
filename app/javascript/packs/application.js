// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import WebpackerSvelte from "webpacker-svelte"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// SVELTE
import Instruction from "../apps/Instruction.svelte"
import Quest1 from "../apps/Quest1.svelte"
import Quest2 from "../apps/Quest2.svelte"
import Quest3 from "../apps/Quest3.svelte"
import Quest4 from "../apps/Quest4.svelte"
import Quest5 from "../apps/Quest5.svelte"

WebpackerSvelte.setup({ Instruction, Quest1, Quest2, Quest3, Quest4, Quest5 })

Enables the "Toggle visibility of tall entities" button, without needing the Elevated Rails mod enabled.

Introduced in Factorio 2.1, this feature renders tall entities translucent and unselectable so they don't obscure what's behind them. The obvious application of this is to elevated rails, which inspired its addition to the game, but any mod can opt its entities into this by setting `tall = true`, and the engine generates the translucent graphics automatically. This could be applied to tall mod graphics that would otherwise be too obscuring to ship.

Fortunately, the feature is part of the 2.1 engine and the button is part of the 2.1 base mod, and the Elevated Rails mod simply makes use of them. This mod does the same. Works regardless of whether the Space Age expansion is installed.

## How it works

`data.raw.shortcut["toggle-tall-entity-visibility"].hidden = nil`

That's it. I was expecting a lot more work, even if it wasn't hard-coded to depend on the official Elevated Rails mod, but no. It doesn't even need the `rail_bridges` feature flag. I'm publishing this mod to capture the knowledge of how to do it and factor it out from other mods I'm working on.

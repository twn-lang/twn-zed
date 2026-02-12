use zed_extension_api as zed;

struct TwnExtension;

impl zed::Extension for TwnExtension {
    fn new() -> Self {
        Self
    }
}

zed::register_extension!(TwnExtension);

# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path
Rails.application.config.assets.precompile += %w( bx_loader.gif controls.png )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( map.css )


Rails.application.config.assets.precompile += %w( jquery.bxslider.css )
Rails.application.config.assets.precompile += %w( jquery.bxslider.min.js )
Rails.application.config.assets.precompile += %w( jquery.barrating.min.js )
Rails.application.config.assets.precompile += %w( bars-1to10.css )
Rails.application.config.assets.precompile += %w( waterfall-light.js )

Rails.application.config.assets.precompile += %w( jquery.js )
Rails.application.config.assets.precompile += %w( jquery.easing.min.js )
Rails.application.config.assets.precompile += %w( index_effect.js )

Rails.application.config.assets.precompile += %w( font-awesome.min.css )
Rails.application.config.assets.precompile += %w( grayscale.css )


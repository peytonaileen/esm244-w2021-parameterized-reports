# Rendering functions (run all these to make them available in your session)

# ------- ANIMALS RENDERING ------- #

render_animal_report = function(species) {
  rmarkdown::render(
    input = "animals.Rmd", # What's the input file to render?
    params = list(pick_species = species), # What are the parameters?
    output_file = paste0(species, "_report", ".html") # What should I name the output file?
  )
}

# ------- SALMON RENDERING ------- #

# Make a function to render it (more easily)
render_salmon_report = function(country) {
  rmarkdown::render(
    input = "salmon.Rmd", # What's the input file to render?
    params = list(import_country = country), # What are the parameters?
    output_file = paste0(country, "_report", ".html") # What should I name the output file?
  )
}

# A for loop to render them all:

country_name <- unique(salmon_imports$Country)

for (country in country_name) {
  render_salmon_report(country)
}


# Add your functions here for the 'your turn' part!



render_penguin_report = function(species){
  rmarkdown::render(
    input = "your_turn.Rmd",
    params = list(pick_species = species),
    output_file = paste0(species, "_report", ".html")
  )


}

species_name = unique(penguins$species)

for(species in species_name){
  render_penguin_report(species)
}

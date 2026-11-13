#
# Copyright (C) 2013-2025 University of Amsterdam
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

# This is a generated file. Don't change it!

#' Mixed Modeling
#'
mixedmod <- function(
          data = NULL,
          version = "1",
          alpha = 0.4,
          dependent = list(types = list(), value = ""),
          fixeff = TRUE,
          interactions = list(optionKey = "components", types = list(), value = list()),
          jitx = 0.1,
          jity = 0,
          model = TRUE,
          nsamp = 3,
          plotHeight = 320,
          plotWidth = 480,
          randeff = FALSE,
          residuals = FALSE,
          rvariables = list(types = list(), value = ""),
          theme = "JASP",
          univariates = TRUE,
          variables = list(types = list(), value = list())) {

   options <- mget(names(formals(sys.function())), envir = environment(), inherits = FALSE)
   options[["data"]] <- NULL
   options[["version"]] <- NULL


   if (!jaspBase::jaspResultsCalledFromJasp() && !is.null(data)) {
      jaspBase::storeDataSet(data)
   }

   optionsWithFormula <- c("dependent", "interactions", "rvariables", "theme", "variables")
   for (name in optionsWithFormula) {
      if ((name %in% optionsWithFormula) && inherits(options[[name]], "formula")) options[[name]] = jaspBase::jaspFormula(options[[name]], data)   }

   # Options not given in the call get their default from the form, which can depend on the other options.
   options <- options[names(options) %in% names(match.call())[-1L]]
   return(jaspBase::runWrappedAnalysis("jaspVisualModeling", "mixedmod", "mixedmod.qml", options, version, FALSE))
}
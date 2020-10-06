# setwd("c:/Users/Hugo/Documents/GitHub/shinyHTM/tests/normalization/")
source("../../functions.r")


test_that("1. Summary statistics with 1 feature", {
    
    # Load test data
    load("./test1_input.RData")     # Loads the 'data' object
    load("./test1_output.RData")    # Loads the 'results_ordered' object
    
    myresult <- htmTreatmentSummary(data                 = data, 
                                    measurements         = "measurement1", 
                                    col_Experiment       = "Plate", 
                                    col_Treatment        = "Treatment", 
                                    col_ObjectCount      = "count_cells", 
                                    col_QC               = "QC", 
                                    negative_ctrl        = "empty", 
                                    positive_ctrl        = "COPB1", 
                                    excluded_Experiments = "Plate_03")
    
    
    expect_identical(myresult, results_ordered)
    
})


test_that("2. Summary statistics with 3 features", {
    
    # Load test data
    load("./test2_input.RData")     # Loads the 'data' object
    load("./test2_output.RData")    # Loads the 'results_ordered' object
    
    myresult <- htmTreatmentSummary(data                 = data, 
                                    measurements         = c("measurement1", "measurement2", "measurement3"), 
                                    col_Experiment       = "Plate", 
                                    col_Treatment        = "Treatment", 
                                    col_ObjectCount      = "count_cells", 
                                    col_QC               = "QC", 
                                    negative_ctrl        = "empty", 
                                    positive_ctrl        = "COPB1", 
                                    excluded_Experiments = "Plate_03")
    
    
    expect_identical(myresult, results_ordered)
    
})



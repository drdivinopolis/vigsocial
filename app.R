# Shiny App para integrar bases de dados sociais #



# Load required packages -------------------------------
library(shiny)
library()

# Load data -------------------------------



# Create user interface -------------------------------
ui <- navbarPage("Observatório das desigualdades",
                 theme = bslib::bs_theme(bootswatch = "minty"),
                 
                  # Página inicial -------------------------------
                  tabPanel("Página inicial"),
 
     
                 # Storytellings -------------------------------  
                    navbarMenu("Histórias",
                        
                        # Construindo PMAS story -----------------
                        tabPanel("Construindo o seu PMAS"),
                        sidebarLayout(
                          sidebarPanel(
                            # Selecionar nome do municipio 
                            selectInput("municipio", "Escolha o seu município:",
                                        c("Belo Horizonte","Betim","Contagem","Divinópolis")
                              
                            )
                          ),
                          
                          mainPanel(
                            tabsetPanel(
                              tabPanel("Diagnóstico", plotOutput("plot")), 
                              tabPanel("Prioridades", verbatimTextOutput("summary")),
                              tabPanel("Programas e ações", verbatimTextOutput("summary")),
                              tabPanel("Monitoramento", tableOutput("table"))
                            )
                          )
                        )
                      ),

          

                 # Subjects -------------------------------     
                 tabPanel("Assuntos"),

                 
                 # About -------------------------------  
                  navbarMenu("Sobre",
                             # Describe ideia -------------------------------
                             tabPanel("A ideia"),

                             
                             # FAQ -------------------------------
                             tabPanel("Perguntas Frequentes - FAQ"),
                             
                             # contato -------------------------------
                             tabPanel("Fale conosco"))
)



# Server logic -----------------------------------


shinyApp(ui = ui, server = server)
(define-module (annotation gene-go)
    #:use-module (annotation functions)
    #:use-module (annotation util)
    #:use-module (opencog)
    #:use-module (opencog query)
    #:use-module (opencog exec)
    #:use-module (opencog bioscience)
    #:export (gene-go-annotation)
)
(define* (gene-go-annotation gene_nodes namespace #:optional (parents 0))
    (let (
    )
  (ListLink (ConceptNode "gene-go-annotation")
    (flatten (map (lambda (gene) 
      (find-go-term gene  (string-split namespace #\ ) parents)
  
  ) gene_nodes)))
  )
)

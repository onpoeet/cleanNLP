#' cleanNLP: A Tidy Data Model for Natural Language Processing
#'
#' Provides a set of fast tools for converting a textual corpus into a set of
#' normalized tables. The underlying natural language processing pipeline utilizes
#' the Stanford's CoreNLP library.
#'
#' To quickly start using the \pkg{cleanNLP} package, first download the CoreNLP
#' jar files using the function \code{\link{download_clean_nlp}}. Properties can then
#' be set to change the behavior of the pipeline using the function \code{\link{set_language}}.
#' There is also \code{\link{set_properties}}, which
#' provide lower-level mechanisms for setting pipeline properties. The output of all of
#' these functions are cached between R sessions and only need to be run once.
#'
#' Once the package is set up, run \code{\link{init_clean_nlp}} to start the
#' java engine and to load the CoreNLP pipeline. The latter may take up to several
#' minutes depending on how which annotators are being used. After this function is
#' done loading, use \code{\link{annotate}} to run the annotation engine over a corpus
#' of text. Functions are then available to extract data tables from the annotation
#' object: \code{\link{get_token}}, \code{\link{get_dependency}}, \code{\link{get_document}},
#' \code{\link{get_coreference}}, \code{\link{get_entity}}, \code{\link{get_sentiment}}, and
#' \code{\link{get_triple}}. See their documentation for further details.
#'
#' If loading annotation that have previously been saved to disk, these can be pulled back into R
#' using \code{\link{read_annotation}}. This does not require downloading the java jar files or
#' initializing the annotation pipeline.
#'
#' @examples
#'
#'\dontrun{
#' # download files and set properties of the annotation engine (only need to do this once)
#' download_clean_nlp()
#' set_properties()
#' set_language("en", speed = 2)
#'
#' # load the annotation engine (only do once per session)
#' init_clean_nlp()
#'
#' # annotate your text
#' annotation <- annotate("path/to/corpus/directory")
#'
#' # pull off data tables
#' token <- get_token(annotation)
#' dependency <- get_dependency(annotation)
#' document <- get_document(annotation)
#' coreference <- get_coreference(annotation)
#' entity <- get_entity(annotation)
#' sentiment <- get_sentiment(annotation)
#' triple <- get_triple(annotation)
#'}
#'
#' @docType package
#' @name cleanNLP
NULL
% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/accessors.R
\name{get_sentiment}
\alias{get_sentiment}
\title{Access sentiment scores from an annotation object}
\usage{
get_sentiment(annotation)
}
\arguments{
\item{annotation}{an annotation object}
}
\value{
Returns an object of class \code{c("tbl_df", "tbl", "data.frame")}
 containing one row for every sentence in the corpus.

 The returned data frame includes the following columns:

\itemize{
 \item{"id"}{ - integer. Id of the source document.}
 \item{"sid"}{ - integer. Sentence id.}
 \item{"pred_class"}{ - integer. Predicted sentiment class of the sentence, from 0 (worst) to 4 (best).}
 \item{"p0"}{ - double. Predicted probability of the sentence being class 0.}
 \item{"p1"}{ - double. Predicted probability of the sentence being class 1.}
 \item{"p2"}{ - double. Predicted probability of the sentence being class 2.}
 \item{"p3"}{ - double. Predicted probability of the sentence being class 3.}
 \item{"p4"}{ - double. Predicted probability of the sentence being class 4.}
}
}
\description{
Sentiment analysis attempts to extract the attitudes of the narrator or speaker
towards their object of study. This function extracts a sentiment score from 0
to 4 from each sentence in the annotation.
}
\examples{

# how do the predicted sentiment scores change across the years?
get_sentiment(obama) \%>\%
  group_by(id) \%>\%
  summarize(mean(pred_class), se = sd(pred_class) / sqrt(n()))

}
\author{
Taylor B. Arnold, \email{taylor.arnold@acm.org}
}
\references{
Manning, Christopher D., Mihai Surdeanu, John Bauer, Jenny Finkel, Steven J. Bethard, and
  David McClosky. 2014. \href{http://nlp.stanford.edu/pubs/StanfordCoreNlp2014.pdf}{The Stanford CoreNLP Natural Language Processing Toolkit}.
  In: \emph{Proceedings of the 52nd Annual Meeting of the Association for Computational Linguistics: System Demonstrations, pp. 55-60.}

  Socher, Richard, et al. "Recursive deep models for semantic compositionality over a sentiment treebank." Proceedings of the conference on
  empirical methods in natural language processing (EMNLP). Vol. 1631. 2013.
}


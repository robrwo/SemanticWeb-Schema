use utf8;

package SemanticWeb::Schema::temporalCoverage;

# ABSTRACT: The temporalCoverage of a CreativeWork indicates the period that the content applies to

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'temporalCoverage';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The temporalCoverage of a CreativeWork indicates the period that the
content applies to, i.e. that it describes, either as a DateTime or as a
textual string indicating a time period in [ISO 8601 time interval
format](https://en.wikipedia.org/wiki/ISO_8601#Time_intervals). In the case
of a Dataset it will typically indicate the relevant time period in a
precise notation (e.g. for a 2011 census dataset, the year 2011 would be
written "2011/2012"). Other forms of content, e.g. ScholarlyArticle, Book,
TVSeries or TVEpisode, may indicate their temporalCoverage in broader terms
- textually or via well-known URL. Written works such as books may
sometimes have precise temporal coverage too, e.g. a work set in 1939 -
1945 can be indicated in ISO 8601 interval format format via "1939/1945".
Open-ended date ranges can be written with ".." in place of the end date.
For example, "2015-11/.." indicates a range beginning in November 2015 and
with no specified final date. This is tentative and might be updated in
future when ISO 8601 is officially updated.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

use utf8;

package SemanticWeb::Schema::datasetTimeInterval;

# ABSTRACT: The range of temporal applicability of a dataset

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'datasetTimeInterval';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The range of temporal applicability of a dataset, e.g. for a 2011 census
dataset, the year 2011 (in ISO 8601 time interval format).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

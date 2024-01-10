use utf8;

package SemanticWeb::Schema::benefitsSummaryUrl;

# ABSTRACT: The URL that goes directly to the summary of benefits and coverage for the specific standard plan or plan variation.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'benefitsSummaryUrl';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The URL that goes directly to the summary of benefits and coverage for the
specific standard plan or plan variation.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

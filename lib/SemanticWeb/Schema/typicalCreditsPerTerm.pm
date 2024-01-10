use utf8;

package SemanticWeb::Schema::typicalCreditsPerTerm;

# ABSTRACT: The number of credits or units a full-time student would be expected to take in 1 term however 'term' is defined by the institution.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'typicalCreditsPerTerm';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The number of credits or units a full-time student would be expected to
take in 1 term however 'term' is defined by the institution.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

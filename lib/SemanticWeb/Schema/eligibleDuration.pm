use utf8;

package SemanticWeb::Schema::eligibleDuration;

# ABSTRACT: The duration for which the given offer is valid.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'eligibleDuration';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The duration for which the given offer is valid.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

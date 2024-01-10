use utf8;

package SemanticWeb::Schema::minimumPaymentDue;

# ABSTRACT: The minimum payment required at this time.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'minimumPaymentDue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The minimum payment required at this time.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

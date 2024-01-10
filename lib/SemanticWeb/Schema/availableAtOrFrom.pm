use utf8;

package SemanticWeb::Schema::availableAtOrFrom;

# ABSTRACT: The place(s) from which the offer can be obtained (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'availableAtOrFrom';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The place(s) from which the offer can be obtained (e.g. store locations).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

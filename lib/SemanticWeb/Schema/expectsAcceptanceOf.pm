use utf8;

package SemanticWeb::Schema::expectsAcceptanceOf;

# ABSTRACT: An Offer which must be accepted before the user can perform the Action

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'expectsAcceptanceOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An Offer which must be accepted before the user can perform the Action. For
example, the user may need to buy a movie before being able to watch it.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

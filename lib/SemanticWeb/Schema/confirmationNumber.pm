use utf8;

package SemanticWeb::Schema::confirmationNumber;

# ABSTRACT: A number that confirms the given order or payment has been received.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'confirmationNumber';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A number that confirms the given order or payment has been received.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

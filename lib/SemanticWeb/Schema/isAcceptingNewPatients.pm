use utf8;

package SemanticWeb::Schema::isAcceptingNewPatients;

# ABSTRACT: Whether the provider is accepting new patients.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'isAcceptingNewPatients';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the provider is accepting new patients.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

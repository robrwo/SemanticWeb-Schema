use utf8;

package SemanticWeb::Schema::legislationLegalForce;

# ABSTRACT: Whether the legislation is currently in force

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'legislationLegalForce';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Whether the legislation is currently in force, not in force, or partially
in force.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

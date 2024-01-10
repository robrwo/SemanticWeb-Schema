use utf8;

package SemanticWeb::Schema::InForce;

# ABSTRACT: Indicates that a legislation is in force.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'InForce';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that a legislation is in force.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

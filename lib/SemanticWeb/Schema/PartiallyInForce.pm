use utf8;

package SemanticWeb::Schema::PartiallyInForce;

# ABSTRACT: Indicates that parts of the legislation are in force

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'PartiallyInForce';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates that parts of the legislation are in force, and parts are not.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

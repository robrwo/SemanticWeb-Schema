use utf8;

package SemanticWeb::Schema::bodyType;

# ABSTRACT: Indicates the design and body style of the vehicle (e

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'bodyType';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the design and body style of the vehicle (e.g. station wagon,
hatchback, etc.).




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

use utf8;

package SemanticWeb::Schema::strengthValue;

# ABSTRACT: The value of an active ingredient's strength

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'strengthValue';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The value of an active ingredient's strength, e.g. 325.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

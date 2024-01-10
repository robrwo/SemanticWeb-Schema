use utf8;

package SemanticWeb::Schema::closes;

# ABSTRACT: The closing hour of the place or service on the given day(s) of the week.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'closes';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The closing hour of the place or service on the given day(s) of the week.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

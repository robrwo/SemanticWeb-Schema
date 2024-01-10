use utf8;

package SemanticWeb::Schema::location;

# ABSTRACT: The location of

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'location';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The location of, for example, where an event is happening, where an
organization is located, or where an action takes place.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

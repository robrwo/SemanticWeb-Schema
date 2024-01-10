use utf8;

package SemanticWeb::Schema::aircraft;

# ABSTRACT: The kind of aircraft (e.g., "Boeing 747").

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'aircraft';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The kind of aircraft (e.g., "Boeing 747").




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

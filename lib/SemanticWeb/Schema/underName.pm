use utf8;

package SemanticWeb::Schema::underName;

# ABSTRACT: The person or organization the reservation or ticket is for.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'underName';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The person or organization the reservation or ticket is for.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

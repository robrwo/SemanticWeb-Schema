use utf8;

package SemanticWeb::Schema::streetAddress;

# ABSTRACT: The street address

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'streetAddress';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The street address. For example, 1600 Amphitheatre Pkwy.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

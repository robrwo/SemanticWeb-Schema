use utf8;

package SemanticWeb::Schema::naics;

# ABSTRACT: The North American Industry Classification System (NAICS) code for a particular organization or business person.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'naics';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The North American Industry Classification System (NAICS) code for a
particular organization or business person.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

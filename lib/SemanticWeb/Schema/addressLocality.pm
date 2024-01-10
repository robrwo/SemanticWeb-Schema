use utf8;

package SemanticWeb::Schema::addressLocality;

# ABSTRACT: The locality in which the street address is

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'addressLocality';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The locality in which the street address is, and which is in the region.
For example, Mountain View.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

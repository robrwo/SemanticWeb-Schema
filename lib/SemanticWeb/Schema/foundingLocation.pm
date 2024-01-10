use utf8;

package SemanticWeb::Schema::foundingLocation;

# ABSTRACT: The place where the Organization was founded.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'foundingLocation';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

The place where the Organization was founded.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

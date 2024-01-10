use utf8;

package SemanticWeb::Schema::diagram;

# ABSTRACT: An image containing a diagram that illustrates the structure and/or its component substructures and/or connections with other structures.

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'diagram';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An image containing a diagram that illustrates the structure and/or its
component substructures and/or connections with other structures.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

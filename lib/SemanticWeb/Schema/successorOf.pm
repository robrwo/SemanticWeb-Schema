use utf8;

package SemanticWeb::Schema::successorOf;

# ABSTRACT: A pointer from a newer variant of a product to its previous

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'successorOf';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

A pointer from a newer variant of a product to its previous, often
discontinued predecessor.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

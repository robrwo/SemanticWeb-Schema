use utf8;

package SemanticWeb::Schema::educationalAlignment;

# ABSTRACT: An alignment to an established educational framework

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'educationalAlignment';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

An alignment to an established educational framework.

This property should not be used where the nature of the alignment can be described using a simple property, for example to express that a resource [[teaches]] or [[assesses]] a competency.



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

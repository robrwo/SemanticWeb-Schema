use utf8;

package SemanticWeb::Schema::hasVariant;

# ABSTRACT: Indicates a [[Product]] that is a member of this [[ProductGroup]] (or [[ProductModel]]).

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'hasVariant';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a L<SemanticWeb::Schema::Product> that is a member of this L<SemanticWeb::Schema::ProductGroup> (or L<SemanticWeb::Schema::ProductModel>).



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

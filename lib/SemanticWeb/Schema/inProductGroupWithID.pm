use utf8;

package SemanticWeb::Schema::inProductGroupWithID;

# ABSTRACT: Indicates the [[productGroupID]] for a [[ProductGroup]] that this product [[isVariantOf]]

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'inProductGroupWithID';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates the [[productGroupID]] for a L<SemanticWeb::Schema::ProductGroup> that this product [[isVariantOf]]. 



=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;

use utf8;

package SemanticWeb::Schema::suitableForDiet;

# ABSTRACT: Indicates a dietary restriction or guideline for which this recipe or menu item is suitable

use v5.14;
use Moo;

extends qw/ SemanticWeb::Schema /;


use MooX::JSON_LD 'suitableForDiet';
use Ref::Util qw/ is_plain_hashref /;
# RECOMMEND PREREQ: Ref::Util::XS

use namespace::autoclean;

our $VERSION = 'v24.0.0';

=encoding utf8

=head1 DESCRIPTION

Indicates a dietary restriction or guideline for which this recipe or menu
item is suitable, e.g. diabetic, halal etc.




=cut


=head1 SEE ALSO



L<SemanticWeb::Schema>

=cut

1;
